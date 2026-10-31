package org.apache.commons.net.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.function.IntFunction;
import javax.net.ssl.KeyManager;
import javax.net.ssl.X509ExtendedKeyManager;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class KeyManagerUtils {
    private static final String DEFAULT_STORE_TYPE = KeyStore.getDefaultType();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class ClientKeyStore {
        private final X509Certificate[] certChain;
        private final PrivateKey key;
        private final String keyAlias;

        public ClientKeyStore(KeyStore keyStore, String str, String str2) throws KeyStoreException {
            this.keyAlias = str;
            this.key = (PrivateKey) keyStore.getKey(str, str2.toCharArray());
            final Certificate[] certificateChain = keyStore.getCertificateChain(str);
            X509Certificate[] x509CertificateArr = new X509Certificate[certificateChain.length];
            Arrays.setAll(x509CertificateArr, new IntFunction() { // from class: org.apache.commons.net.util.b
                @Override // java.util.function.IntFunction
                public final Object apply(int i10) {
                    return KeyManagerUtils.ClientKeyStore.lambda$new$0(certificateChain, i10);
                }
            });
            this.certChain = x509CertificateArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ X509Certificate lambda$new$0(Certificate[] certificateArr, int i10) {
            return (X509Certificate) certificateArr[i10];
        }

        public String getAlias() {
            return this.keyAlias;
        }

        public X509Certificate[] getCertificateChain() {
            return this.certChain;
        }

        public PrivateKey getPrivateKey() {
            return this.key;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class X509KeyManager extends X509ExtendedKeyManager {
        private final ClientKeyStore keyStore;

        public X509KeyManager(ClientKeyStore clientKeyStore) {
            this.keyStore = clientKeyStore;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            return this.keyStore.getAlias();
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            return null;
        }

        @Override // javax.net.ssl.X509KeyManager
        public X509Certificate[] getCertificateChain(String str) {
            return this.keyStore.getCertificateChain();
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getClientAliases(String str, Principal[] principalArr) {
            return new String[]{this.keyStore.getAlias()};
        }

        @Override // javax.net.ssl.X509KeyManager
        public PrivateKey getPrivateKey(String str) {
            return this.keyStore.getPrivateKey();
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getServerAliases(String str, Principal[] principalArr) {
            return null;
        }
    }

    private KeyManagerUtils() {
    }

    public static KeyManager createClientKeyManager(KeyStore keyStore, String str, String str2) throws KeyStoreException {
        if (str == null) {
            str = findAlias(keyStore);
        }
        return new X509KeyManager(new ClientKeyStore(keyStore, str, str2));
    }

    private static String findAlias(KeyStore keyStore) throws KeyStoreException {
        Enumeration<String> enumerationAliases = keyStore.aliases();
        while (enumerationAliases.hasMoreElements()) {
            String strNextElement = enumerationAliases.nextElement();
            if (keyStore.isKeyEntry(strNextElement)) {
                return strNextElement;
            }
        }
        throw new KeyStoreException("Cannot find a private key entry");
    }

    private static KeyStore loadStore(String str, File file, String str2) throws IOException, KeyStoreException {
        KeyStore keyStore = KeyStore.getInstance(str);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            keyStore.load(fileInputStream, str2.toCharArray());
            fileInputStream.close();
            return keyStore;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static KeyManager createClientKeyManager(File file, String str, String str2) {
        return createClientKeyManager(DEFAULT_STORE_TYPE, file, str, str2, str);
    }

    public static KeyManager createClientKeyManager(File file, String str) {
        return createClientKeyManager(DEFAULT_STORE_TYPE, file, str, null, str);
    }

    public static KeyManager createClientKeyManager(String str, File file, String str2, String str3, String str4) {
        return createClientKeyManager(loadStore(str, file, str2), str3, str4);
    }
}
