package com.android.server.locksettings.recoverablekeystore.serialization;

import android.security.keystore.recovery.KeyChainProtectionParams;
import android.security.keystore.recovery.KeyChainSnapshot;
import android.security.keystore.recovery.KeyDerivationParams;
import android.security.keystore.recovery.WrappedApplicationKey;
import android.util.Base64;
import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertPath;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class KeyChainSnapshotDeserializer {
    public static KeyChainSnapshot deserialize(InputStream inputStream) throws KeyChainSnapshotParserException, IOException {
        try {
            return deserializeInternal(inputStream);
        } catch (XmlPullParserException e) {
            throw new KeyChainSnapshotParserException("Malformed KeyChainSnapshot XML", e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x0099  */
    private static KeyChainSnapshot deserializeInternal(InputStream inputStream) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(inputStream, "UTF-8");
        parser.nextTag();
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "keyChainSnapshot");
        KeyChainSnapshot.Builder builder = new KeyChainSnapshot.Builder();
        while (true) {
            if (parser.next() != 3) {
                if (parser.getEventType() == 2) {
                    String name = parser.getName();
                    switch (name) {
                        case "snapshotVersion":
                            builder.setSnapshotVersion(readIntTag(parser, "snapshotVersion"));
                            break;
                        case "recoveryKeyMaterial":
                            builder.setEncryptedRecoveryKeyBlob(readBlobTag(parser, "recoveryKeyMaterial"));
                            break;
                        case "counterId":
                            builder.setCounterId(readLongTag(parser, "counterId"));
                            break;
                        case "serverParams":
                            builder.setServerParams(readBlobTag(parser, "serverParams"));
                            break;
                        case "maxAttempts":
                            builder.setMaxAttempts(readIntTag(parser, "maxAttempts"));
                            break;
                        case "thmCertPath":
                            try {
                                builder.setTrustedHardwareCertPath(readCertPathTag(parser, "thmCertPath"));
                                break;
                            } catch (CertificateException e) {
                                throw new KeyChainSnapshotParserException("Could not set trustedHardwareCertPath", e);
                            }
                            break;
                        case "backendPublicKey":
                            break;
                        case "keyChainProtectionParamsList":
                            builder.setKeyChainProtectionParams(readKeyChainProtectionParamsList(parser));
                            break;
                        case "applicationKeysList":
                            builder.setWrappedApplicationKeys(readWrappedApplicationKeys(parser));
                            break;
                        default:
                            throw new KeyChainSnapshotParserException(String.format(Locale.US, "Unexpected tag %s in keyChainSnapshot", name));
                    }
                }
            } else {
                parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "keyChainSnapshot");
                try {
                    return builder.build();
                } catch (NullPointerException e2) {
                    throw new KeyChainSnapshotParserException("Failed to build KeyChainSnapshot", e2);
                }
            }
        }
    }

    private static List<WrappedApplicationKey> readWrappedApplicationKeys(XmlPullParser parser) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "applicationKeysList");
        ArrayList<WrappedApplicationKey> keys = new ArrayList<>();
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                keys.add(readWrappedApplicationKey(parser));
            }
        }
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "applicationKeysList");
        return keys;
    }

    private static WrappedApplicationKey readWrappedApplicationKey(XmlPullParser parser) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "applicationKey");
        WrappedApplicationKey.Builder builder = new WrappedApplicationKey.Builder();
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                byte b = -1;
                int iHashCode = name.hashCode();
                if (iHashCode != -1712279890) {
                    if (iHashCode != -963209050) {
                        if (iHashCode == 92902992 && name.equals("alias")) {
                            b = 0;
                        }
                    } else if (name.equals("keyMaterial")) {
                        b = 1;
                    }
                } else if (name.equals("keyMetadata")) {
                    b = 2;
                }
                if (b == 0) {
                    builder.setAlias(readStringTag(parser, "alias"));
                } else if (b == 1) {
                    builder.setEncryptedKeyMaterial(readBlobTag(parser, "keyMaterial"));
                } else if (b == 2) {
                    builder.setMetadata(readBlobTag(parser, "keyMetadata"));
                } else {
                    throw new KeyChainSnapshotParserException(String.format(Locale.US, "Unexpected tag %s in wrappedApplicationKey", name));
                }
            }
        }
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "applicationKey");
        try {
            return builder.build();
        } catch (NullPointerException e) {
            throw new KeyChainSnapshotParserException("Failed to build WrappedApplicationKey", e);
        }
    }

    private static List<KeyChainProtectionParams> readKeyChainProtectionParamsList(XmlPullParser parser) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParamsList");
        ArrayList<KeyChainProtectionParams> keyChainProtectionParamsList = new ArrayList<>();
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                keyChainProtectionParamsList.add(readKeyChainProtectionParams(parser));
            }
        }
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParamsList");
        return keyChainProtectionParamsList;
    }

    private static KeyChainProtectionParams readKeyChainProtectionParams(XmlPullParser parser) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParams");
        KeyChainProtectionParams.Builder builder = new KeyChainProtectionParams.Builder();
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                byte b = -1;
                int iHashCode = name.hashCode();
                if (iHashCode != -776797115) {
                    if (iHashCode != -696958923) {
                        if (iHashCode == 912448924 && name.equals("keyDerivationParams")) {
                            b = 2;
                        }
                    } else if (name.equals("userSecretType")) {
                        b = 1;
                    }
                } else if (name.equals("lockScreenUiType")) {
                    b = 0;
                }
                if (b == 0) {
                    builder.setLockScreenUiFormat(readIntTag(parser, "lockScreenUiType"));
                } else if (b == 1) {
                    builder.setUserSecretType(readIntTag(parser, "userSecretType"));
                } else if (b == 2) {
                    builder.setKeyDerivationParams(readKeyDerivationParams(parser));
                } else {
                    throw new KeyChainSnapshotParserException(String.format(Locale.US, "Unexpected tag %s in keyChainProtectionParams", name));
                }
            }
        }
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "keyChainProtectionParams");
        try {
            return builder.build();
        } catch (NullPointerException e) {
            throw new KeyChainSnapshotParserException("Failed to build KeyChainProtectionParams", e);
        }
    }

    private static KeyDerivationParams readKeyDerivationParams(XmlPullParser parser) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        KeyDerivationParams keyDerivationParams;
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, "keyDerivationParams");
        int memoryDifficulty = -1;
        int algorithm = -1;
        byte[] salt = null;
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                byte b = -1;
                int iHashCode = name.hashCode();
                if (iHashCode != -973274212) {
                    if (iHashCode != 3522646) {
                        if (iHashCode == 225490031 && name.equals("algorithm")) {
                            b = 1;
                        }
                    } else if (name.equals("salt")) {
                        b = 2;
                    }
                } else if (name.equals("memoryDifficulty")) {
                    b = 0;
                }
                if (b == 0) {
                    memoryDifficulty = readIntTag(parser, "memoryDifficulty");
                } else if (b == 1) {
                    algorithm = readIntTag(parser, "algorithm");
                } else if (b == 2) {
                    salt = readBlobTag(parser, "salt");
                } else {
                    throw new KeyChainSnapshotParserException(String.format(Locale.US, "Unexpected tag %s in keyDerivationParams", name));
                }
            }
        }
        if (salt == null) {
            throw new KeyChainSnapshotParserException("salt was not set in keyDerivationParams");
        }
        if (algorithm == 1) {
            keyDerivationParams = KeyDerivationParams.createSha256Params(salt);
        } else if (algorithm == 2) {
            keyDerivationParams = KeyDerivationParams.createScryptParams(salt, memoryDifficulty);
        } else {
            throw new KeyChainSnapshotParserException("Unknown algorithm in keyDerivationParams");
        }
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, "keyDerivationParams");
        return keyDerivationParams;
    }

    private static int readIntTag(XmlPullParser parser, String tagName) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, tagName);
        String text = readText(parser);
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, tagName);
        try {
            return Integer.valueOf(text).intValue();
        } catch (NumberFormatException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected int but got '%s'", tagName, text), e);
        }
    }

    private static long readLongTag(XmlPullParser parser, String tagName) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, tagName);
        String text = readText(parser);
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, tagName);
        try {
            return Long.valueOf(text).longValue();
        } catch (NumberFormatException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected long but got '%s'", tagName, text), e);
        }
    }

    private static String readStringTag(XmlPullParser parser, String tagName) throws XmlPullParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, tagName);
        String text = readText(parser);
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, tagName);
        return text;
    }

    private static byte[] readBlobTag(XmlPullParser parser, String tagName) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        parser.require(2, KeyChainSnapshotSchema.NAMESPACE, tagName);
        String text = readText(parser);
        parser.require(3, KeyChainSnapshotSchema.NAMESPACE, tagName);
        try {
            return Base64.decode(text, 0);
        } catch (IllegalArgumentException e) {
            throw new KeyChainSnapshotParserException(String.format(Locale.US, "%s expected base64 encoded bytes but got '%s'", tagName, text), e);
        }
    }

    private static CertPath readCertPathTag(XmlPullParser parser, String tagName) throws XmlPullParserException, KeyChainSnapshotParserException, IOException {
        byte[] bytes = readBlobTag(parser, tagName);
        try {
            return CertificateFactory.getInstance("X.509").generateCertPath(new ByteArrayInputStream(bytes));
        } catch (CertificateException e) {
            throw new KeyChainSnapshotParserException("Could not parse CertPath in tag " + tagName, e);
        }
    }

    private static String readText(XmlPullParser parser) throws XmlPullParserException, IOException {
        if (parser.next() != 4) {
            return "";
        }
        String result = parser.getText();
        parser.nextTag();
        return result;
    }

    private KeyChainSnapshotDeserializer() {
    }
}
