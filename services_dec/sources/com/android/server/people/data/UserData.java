package com.android.server.people.data;

import android.os.Environment;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
class UserData {
    private static final int CONVERSATIONS_END_TOKEN = -1;
    private static final String TAG = UserData.class.getSimpleName();
    private String mDefaultDialer;
    private String mDefaultSmsApp;
    private boolean mIsUnlocked;
    private Map<String, PackageData> mPackageDataMap = new ArrayMap();
    private final File mPerUserPeopleDataDir;
    private final ScheduledExecutorService mScheduledExecutorService;
    private final int mUserId;

    UserData(int userId, ScheduledExecutorService scheduledExecutorService) {
        this.mUserId = userId;
        this.mPerUserPeopleDataDir = new File(Environment.getDataSystemCeDirectory(this.mUserId), "people");
        this.mScheduledExecutorService = scheduledExecutorService;
    }

    int getUserId() {
        return this.mUserId;
    }

    void forAllPackages(Consumer<PackageData> consumer) {
        for (PackageData packageData : this.mPackageDataMap.values()) {
            consumer.accept(packageData);
        }
    }

    void setUserUnlocked() {
        this.mIsUnlocked = true;
    }

    void setUserStopped() {
        this.mIsUnlocked = false;
    }

    boolean isUnlocked() {
        return this.mIsUnlocked;
    }

    void loadUserData() {
        this.mPerUserPeopleDataDir.mkdir();
        Map<String, PackageData> packageDataMap = PackageData.packagesDataFromDisk(this.mUserId, new $$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog(this), new $$Lambda$UserData$ZvGOO47uRNbT2ZvsBaz0srnAjw(this), this.mScheduledExecutorService, this.mPerUserPeopleDataDir);
        this.mPackageDataMap.putAll(packageDataMap);
    }

    PackageData getOrCreatePackageData(final String packageName) {
        return this.mPackageDataMap.computeIfAbsent(packageName, new Function() { // from class: com.android.server.people.data.-$$Lambda$UserData$xBlmmohM1BOQNizaL0Za6pF3pew
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$getOrCreatePackageData$0$UserData(packageName, (String) obj);
            }
        });
    }

    public /* synthetic */ PackageData lambda$getOrCreatePackageData$0$UserData(String packageName, String key) {
        return createPackageData(packageName);
    }

    PackageData getPackageData(String packageName) {
        return this.mPackageDataMap.get(packageName);
    }

    void deletePackageData(String packageName) {
        PackageData packageData = this.mPackageDataMap.remove(packageName);
        if (packageData != null) {
            packageData.onDestroy();
        }
    }

    void setDefaultDialer(String packageName) {
        this.mDefaultDialer = packageName;
    }

    PackageData getDefaultDialer() {
        String str = this.mDefaultDialer;
        if (str != null) {
            return getPackageData(str);
        }
        return null;
    }

    void setDefaultSmsApp(String packageName) {
        this.mDefaultSmsApp = packageName;
    }

    PackageData getDefaultSmsApp() {
        String str = this.mDefaultSmsApp;
        if (str != null) {
            return getPackageData(str);
        }
        return null;
    }

    byte[] getBackupPayload() {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(baos);
        for (PackageData packageData : this.mPackageDataMap.values()) {
            try {
                byte[] conversationsBackupPayload = packageData.getConversationStore().getBackupPayload();
                out.writeInt(conversationsBackupPayload.length);
                out.write(conversationsBackupPayload);
                out.writeUTF(packageData.getPackageName());
            } catch (IOException e) {
                Slog.e(TAG, "Failed to write conversations to backup payload.", e);
                return null;
            }
        }
        try {
            out.writeInt(-1);
            return baos.toByteArray();
        } catch (IOException e2) {
            Slog.e(TAG, "Failed to write conversations end token to backup payload.", e2);
            return null;
        }
    }

    void restore(byte[] payload) throws IOException {
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(payload));
        try {
            for (int conversationsPayloadSize = in.readInt(); conversationsPayloadSize != -1; conversationsPayloadSize = in.readInt()) {
                byte[] conversationsPayload = new byte[conversationsPayloadSize];
                in.readFully(conversationsPayload, 0, conversationsPayloadSize);
                String packageName = in.readUTF();
                getOrCreatePackageData(packageName).getConversationStore().restore(conversationsPayload);
            }
        } catch (IOException e) {
            Slog.e(TAG, "Failed to restore conversations from backup payload.", e);
        }
    }

    private PackageData createPackageData(String packageName) {
        return new PackageData(packageName, this.mUserId, new $$Lambda$UserData$TPSEt8UEq8YfkquaYQxcUwkYOog(this), new $$Lambda$UserData$ZvGOO47uRNbT2ZvsBaz0srnAjw(this), this.mScheduledExecutorService, this.mPerUserPeopleDataDir);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDefaultDialer(String packageName) {
        return TextUtils.equals(this.mDefaultDialer, packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDefaultSmsApp(String packageName) {
        return TextUtils.equals(this.mDefaultSmsApp, packageName);
    }
}
