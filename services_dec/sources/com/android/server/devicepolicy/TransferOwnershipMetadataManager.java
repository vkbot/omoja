package com.android.server.devicepolicy;

import android.content.ComponentName;
import android.os.Environment;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
class TransferOwnershipMetadataManager {
    static final String ADMIN_TYPE_DEVICE_OWNER = "device-owner";
    static final String ADMIN_TYPE_PROFILE_OWNER = "profile-owner";
    public static final String OWNER_TRANSFER_METADATA_XML = "owner-transfer-metadata.xml";
    private static final String TAG = TransferOwnershipMetadataManager.class.getName();
    static final String TAG_ADMIN_TYPE = "admin-type";
    static final String TAG_SOURCE_COMPONENT = "source-component";
    static final String TAG_TARGET_COMPONENT = "target-component";
    static final String TAG_USER_ID = "user-id";
    private final Injector mInjector;

    TransferOwnershipMetadataManager() {
        this(new Injector());
    }

    TransferOwnershipMetadataManager(Injector injector) {
        this.mInjector = injector;
    }

    boolean saveMetadataFile(Metadata params) {
        File transferOwnershipMetadataFile = new File(this.mInjector.getOwnerTransferMetadataDir(), OWNER_TRANSFER_METADATA_XML);
        AtomicFile atomicFile = new AtomicFile(transferOwnershipMetadataFile);
        FileOutputStream stream = null;
        try {
            stream = atomicFile.startWrite();
            XmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(stream, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            insertSimpleTag(fastXmlSerializer, TAG_USER_ID, Integer.toString(params.userId));
            insertSimpleTag(fastXmlSerializer, TAG_SOURCE_COMPONENT, params.sourceComponent.flattenToString());
            insertSimpleTag(fastXmlSerializer, TAG_TARGET_COMPONENT, params.targetComponent.flattenToString());
            insertSimpleTag(fastXmlSerializer, TAG_ADMIN_TYPE, params.adminType);
            fastXmlSerializer.endDocument();
            atomicFile.finishWrite(stream);
            return true;
        } catch (IOException e) {
            Slog.e(TAG, "Caught exception while trying to save Owner Transfer Params to file " + transferOwnershipMetadataFile, e);
            transferOwnershipMetadataFile.delete();
            atomicFile.failWrite(stream);
            return false;
        }
    }

    private void insertSimpleTag(XmlSerializer serializer, String tagName, String value) throws IOException {
        serializer.startTag(null, tagName);
        serializer.text(value);
        serializer.endTag(null, tagName);
    }

    Metadata loadMetadataFile() {
        File transferOwnershipMetadataFile = new File(this.mInjector.getOwnerTransferMetadataDir(), OWNER_TRANSFER_METADATA_XML);
        if (!transferOwnershipMetadataFile.exists()) {
            return null;
        }
        Slog.d(TAG, "Loading TransferOwnershipMetadataManager from " + transferOwnershipMetadataFile);
        try {
            FileInputStream stream = new FileInputStream(transferOwnershipMetadataFile);
            try {
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(stream, null);
                Metadata metadataFile = parseMetadataFile(parser);
                stream.close();
                return metadataFile;
            } catch (Throwable th) {
                try {
                    stream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | IllegalArgumentException | XmlPullParserException e) {
            Slog.e(TAG, "Caught exception while trying to load the owner transfer params from file " + transferOwnershipMetadataFile, e);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private Metadata parseMetadataFile(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        int userId = 0;
        String adminComponent = null;
        String targetComponent = null;
        String adminType = null;
        while (true) {
            int type = parser.next();
            if (type != 1 && (type != 3 || parser.getDepth() > outerDepth)) {
                if (type != 3 && type != 4) {
                    String name = parser.getName();
                    byte b = -1;
                    switch (name.hashCode()) {
                        case -337219647:
                            if (name.equals(TAG_TARGET_COMPONENT)) {
                                b = 1;
                            }
                            break;
                        case -147180963:
                            if (name.equals(TAG_USER_ID)) {
                                b = 0;
                            }
                            break;
                        case 281362891:
                            if (name.equals(TAG_SOURCE_COMPONENT)) {
                                b = 2;
                            }
                            break;
                        case 641951480:
                            if (name.equals(TAG_ADMIN_TYPE)) {
                                b = 3;
                            }
                            break;
                    }
                    if (b == 0) {
                        parser.next();
                        userId = Integer.parseInt(parser.getText());
                    } else if (b == 1) {
                        parser.next();
                        targetComponent = parser.getText();
                    } else if (b == 2) {
                        parser.next();
                        adminComponent = parser.getText();
                    } else if (b == 3) {
                        parser.next();
                        adminType = parser.getText();
                    }
                }
            }
        }
        return new Metadata(adminComponent, targetComponent, userId, adminType);
    }

    void deleteMetadataFile() {
        new File(this.mInjector.getOwnerTransferMetadataDir(), OWNER_TRANSFER_METADATA_XML).delete();
    }

    boolean metadataFileExists() {
        return new File(this.mInjector.getOwnerTransferMetadataDir(), OWNER_TRANSFER_METADATA_XML).exists();
    }

    static class Metadata {
        final String adminType;
        final ComponentName sourceComponent;
        final ComponentName targetComponent;
        final int userId;

        Metadata(ComponentName sourceComponent, ComponentName targetComponent, int userId, String adminType) {
            this.sourceComponent = sourceComponent;
            this.targetComponent = targetComponent;
            Objects.requireNonNull(sourceComponent);
            Objects.requireNonNull(targetComponent);
            Preconditions.checkStringNotEmpty(adminType);
            this.userId = userId;
            this.adminType = adminType;
        }

        Metadata(String flatSourceComponent, String flatTargetComponent, int userId, String adminType) {
            this(unflattenComponentUnchecked(flatSourceComponent), unflattenComponentUnchecked(flatTargetComponent), userId, adminType);
        }

        private static ComponentName unflattenComponentUnchecked(String flatComponent) {
            Objects.requireNonNull(flatComponent);
            return ComponentName.unflattenFromString(flatComponent);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Metadata)) {
                return false;
            }
            Metadata params = (Metadata) obj;
            return this.userId == params.userId && this.sourceComponent.equals(params.sourceComponent) && this.targetComponent.equals(params.targetComponent) && TextUtils.equals(this.adminType, params.adminType);
        }

        public int hashCode() {
            int hashCode = (1 * 31) + this.userId;
            return (((((hashCode * 31) + this.sourceComponent.hashCode()) * 31) + this.targetComponent.hashCode()) * 31) + this.adminType.hashCode();
        }
    }

    static class Injector {
        Injector() {
        }

        public File getOwnerTransferMetadataDir() {
            return Environment.getDataSystemDirectory();
        }
    }
}
