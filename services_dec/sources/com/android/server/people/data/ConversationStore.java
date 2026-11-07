package com.android.server.people.data;

import android.content.LocusId;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.proto.ProtoInputStream;
import android.util.proto.ProtoOutputStream;
import com.google.android.collect.Lists;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
class ConversationStore {
    private static final String CONVERSATIONS_FILE_NAME = "conversations";
    private static final int CONVERSATION_INFOS_END_TOKEN = -1;
    private static final String TAG = ConversationStore.class.getSimpleName();
    private ConversationInfosProtoDiskReadWriter mConversationInfosProtoDiskReadWriter;
    private final File mPackageDir;
    private final ScheduledExecutorService mScheduledExecutorService;
    private final Map<String, ConversationInfo> mConversationInfoMap = new ArrayMap();
    private final Map<LocusId, String> mLocusIdToShortcutIdMap = new ArrayMap();
    private final Map<Uri, String> mContactUriToShortcutIdMap = new ArrayMap();
    private final Map<String, String> mPhoneNumberToShortcutIdMap = new ArrayMap();
    private final Map<String, String> mNotifChannelIdToShortcutIdMap = new ArrayMap();

    ConversationStore(File packageDir, ScheduledExecutorService scheduledExecutorService) {
        this.mScheduledExecutorService = scheduledExecutorService;
        this.mPackageDir = packageDir;
    }

    synchronized void loadConversationsFromDisk() {
        ConversationInfosProtoDiskReadWriter conversationInfosProtoDiskReadWriter = getConversationInfosProtoDiskReadWriter();
        if (conversationInfosProtoDiskReadWriter == null) {
            return;
        }
        List<ConversationInfo> conversationsOnDisk = conversationInfosProtoDiskReadWriter.read(CONVERSATIONS_FILE_NAME);
        if (conversationsOnDisk == null) {
            return;
        }
        for (ConversationInfo conversationInfo : conversationsOnDisk) {
            updateConversationsInMemory(conversationInfo);
        }
    }

    synchronized void saveConversationsToDisk() {
        ConversationInfosProtoDiskReadWriter conversationInfosProtoDiskReadWriter = getConversationInfosProtoDiskReadWriter();
        if (conversationInfosProtoDiskReadWriter != null) {
            conversationInfosProtoDiskReadWriter.saveConversationsImmediately(new ArrayList(this.mConversationInfoMap.values()));
        }
    }

    synchronized void addOrUpdate(ConversationInfo conversationInfo) {
        updateConversationsInMemory(conversationInfo);
        scheduleUpdateConversationsOnDisk();
    }

    synchronized ConversationInfo deleteConversation(String shortcutId) {
        ConversationInfo conversationInfo = this.mConversationInfoMap.remove(shortcutId);
        if (conversationInfo == null) {
            return null;
        }
        LocusId locusId = conversationInfo.getLocusId();
        if (locusId != null) {
            this.mLocusIdToShortcutIdMap.remove(locusId);
        }
        Uri contactUri = conversationInfo.getContactUri();
        if (contactUri != null) {
            this.mContactUriToShortcutIdMap.remove(contactUri);
        }
        String phoneNumber = conversationInfo.getContactPhoneNumber();
        if (phoneNumber != null) {
            this.mPhoneNumberToShortcutIdMap.remove(phoneNumber);
        }
        String notifChannelId = conversationInfo.getNotificationChannelId();
        if (notifChannelId != null) {
            this.mNotifChannelIdToShortcutIdMap.remove(notifChannelId);
        }
        scheduleUpdateConversationsOnDisk();
        return conversationInfo;
    }

    synchronized void forAllConversations(Consumer<ConversationInfo> consumer) {
        for (ConversationInfo ci : this.mConversationInfoMap.values()) {
            consumer.accept(ci);
        }
    }

    synchronized ConversationInfo getConversation(String shortcutId) {
        return shortcutId != null ? this.mConversationInfoMap.get(shortcutId) : null;
    }

    synchronized ConversationInfo getConversationByLocusId(LocusId locusId) {
        return getConversation(this.mLocusIdToShortcutIdMap.get(locusId));
    }

    synchronized ConversationInfo getConversationByContactUri(Uri contactUri) {
        return getConversation(this.mContactUriToShortcutIdMap.get(contactUri));
    }

    synchronized ConversationInfo getConversationByPhoneNumber(String phoneNumber) {
        return getConversation(this.mPhoneNumberToShortcutIdMap.get(phoneNumber));
    }

    ConversationInfo getConversationByNotificationChannelId(String notifChannelId) {
        return getConversation(this.mNotifChannelIdToShortcutIdMap.get(notifChannelId));
    }

    synchronized void onDestroy() {
        this.mConversationInfoMap.clear();
        this.mContactUriToShortcutIdMap.clear();
        this.mLocusIdToShortcutIdMap.clear();
        this.mNotifChannelIdToShortcutIdMap.clear();
        this.mPhoneNumberToShortcutIdMap.clear();
        ConversationInfosProtoDiskReadWriter writer = getConversationInfosProtoDiskReadWriter();
        if (writer != null) {
            writer.deleteConversationsFile();
        }
    }

    synchronized byte[] getBackupPayload() {
        ByteArrayOutputStream baos;
        baos = new ByteArrayOutputStream();
        DataOutputStream conversationInfosOut = new DataOutputStream(baos);
        for (ConversationInfo conversationInfo : this.mConversationInfoMap.values()) {
            byte[] backupPayload = conversationInfo.getBackupPayload();
            if (backupPayload != null) {
                try {
                    conversationInfosOut.writeInt(backupPayload.length);
                    conversationInfosOut.write(backupPayload);
                } catch (IOException e) {
                    Slog.e(TAG, "Failed to write conversation info to backup payload.", e);
                    return null;
                }
            }
        }
        try {
            conversationInfosOut.writeInt(-1);
        } catch (IOException e2) {
            Slog.e(TAG, "Failed to write conversation infos end token to backup payload.", e2);
            return null;
        }
        return baos.toByteArray();
    }

    synchronized void restore(byte[] payload) {
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(payload));
        try {
            for (int conversationInfoSize = in.readInt(); conversationInfoSize != -1; conversationInfoSize = in.readInt()) {
                byte[] conversationInfoPayload = new byte[conversationInfoSize];
                in.readFully(conversationInfoPayload, 0, conversationInfoSize);
                ConversationInfo conversationInfo = ConversationInfo.readFromBackupPayload(conversationInfoPayload);
                if (conversationInfo != null) {
                    addOrUpdate(conversationInfo);
                }
            }
        } catch (IOException e) {
            Slog.e(TAG, "Failed to read conversation info from payload.", e);
        }
    }

    private synchronized void updateConversationsInMemory(ConversationInfo conversationInfo) {
        this.mConversationInfoMap.put(conversationInfo.getShortcutId(), conversationInfo);
        LocusId locusId = conversationInfo.getLocusId();
        if (locusId != null) {
            this.mLocusIdToShortcutIdMap.put(locusId, conversationInfo.getShortcutId());
        }
        Uri contactUri = conversationInfo.getContactUri();
        if (contactUri != null) {
            this.mContactUriToShortcutIdMap.put(contactUri, conversationInfo.getShortcutId());
        }
        String phoneNumber = conversationInfo.getContactPhoneNumber();
        if (phoneNumber != null) {
            this.mPhoneNumberToShortcutIdMap.put(phoneNumber, conversationInfo.getShortcutId());
        }
        String notifChannelId = conversationInfo.getNotificationChannelId();
        if (notifChannelId != null) {
            this.mNotifChannelIdToShortcutIdMap.put(notifChannelId, conversationInfo.getShortcutId());
        }
    }

    private synchronized void scheduleUpdateConversationsOnDisk() {
        ConversationInfosProtoDiskReadWriter conversationInfosProtoDiskReadWriter = getConversationInfosProtoDiskReadWriter();
        if (conversationInfosProtoDiskReadWriter != null) {
            conversationInfosProtoDiskReadWriter.scheduleConversationsSave(new ArrayList(this.mConversationInfoMap.values()));
        }
    }

    private ConversationInfosProtoDiskReadWriter getConversationInfosProtoDiskReadWriter() {
        if (!this.mPackageDir.exists()) {
            Slog.e(TAG, "Package data directory does not exist: " + this.mPackageDir.getAbsolutePath());
            return null;
        }
        if (this.mConversationInfosProtoDiskReadWriter == null) {
            this.mConversationInfosProtoDiskReadWriter = new ConversationInfosProtoDiskReadWriter(this.mPackageDir, CONVERSATIONS_FILE_NAME, this.mScheduledExecutorService);
        }
        return this.mConversationInfosProtoDiskReadWriter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ConversationInfosProtoDiskReadWriter extends AbstractProtoDiskReadWriter<List<ConversationInfo>> {
        private final String mConversationInfoFileName;

        ConversationInfosProtoDiskReadWriter(File rootDir, String conversationInfoFileName, ScheduledExecutorService scheduledExecutorService) {
            super(rootDir, scheduledExecutorService);
            this.mConversationInfoFileName = conversationInfoFileName;
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamWriter<List<ConversationInfo>> protoStreamWriter() {
            return new AbstractProtoDiskReadWriter.ProtoStreamWriter() { // from class: com.android.server.people.data.-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$X5sTtfwjzwVPlSk3AGJazGmrmME
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamWriter
                public final void write(ProtoOutputStream protoOutputStream, Object obj) {
                    ConversationStore.ConversationInfosProtoDiskReadWriter.lambda$protoStreamWriter$0(protoOutputStream, (List) obj);
                }
            };
        }

        static /* synthetic */ void lambda$protoStreamWriter$0(ProtoOutputStream protoOutputStream, List data) {
            Iterator it = data.iterator();
            while (it.hasNext()) {
                ConversationInfo conversationInfo = (ConversationInfo) it.next();
                long token = protoOutputStream.start(2246267895809L);
                conversationInfo.writeToProto(protoOutputStream);
                protoOutputStream.end(token);
            }
        }

        @Override // com.android.server.people.data.AbstractProtoDiskReadWriter
        AbstractProtoDiskReadWriter.ProtoStreamReader<List<ConversationInfo>> protoStreamReader() {
            return new AbstractProtoDiskReadWriter.ProtoStreamReader() { // from class: com.android.server.people.data.-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk
                @Override // com.android.server.people.data.AbstractProtoDiskReadWriter.ProtoStreamReader
                public final Object read(ProtoInputStream protoInputStream) {
                    return ConversationStore.ConversationInfosProtoDiskReadWriter.lambda$protoStreamReader$1(protoInputStream);
                }
            };
        }

        static /* synthetic */ List lambda$protoStreamReader$1(ProtoInputStream protoInputStream) {
            List<ConversationInfo> results = Lists.newArrayList();
            while (protoInputStream.nextField() != -1) {
                try {
                    if (protoInputStream.getFieldNumber() == 1) {
                        long token = protoInputStream.start(2246267895809L);
                        ConversationInfo conversationInfo = ConversationInfo.readFromProto(protoInputStream);
                        protoInputStream.end(token);
                        results.add(conversationInfo);
                    }
                } catch (IOException e) {
                    Slog.e(ConversationStore.TAG, "Failed to read protobuf input stream.", e);
                }
            }
            return results;
        }

        void scheduleConversationsSave(List<ConversationInfo> conversationInfos) {
            scheduleSave(this.mConversationInfoFileName, conversationInfos);
        }

        void saveConversationsImmediately(List<ConversationInfo> conversationInfos) {
            saveImmediately(this.mConversationInfoFileName, conversationInfos);
        }

        void deleteConversationsFile() {
            delete(this.mConversationInfoFileName);
        }
    }
}
