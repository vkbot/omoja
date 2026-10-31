package org.apache.commons.net.util;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class KeyManagerUtils$ClientKeyStore {
    private final X509Certificate[] certChain;
    private final PrivateKey key;
    private final String keyAlias;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyManagerUtils$ClientKeyStore(KeyStore keyStore, String str, String str2) throws KeyStoreException {
        this.keyAlias = str;
        this.key = (PrivateKey) keyStore.getKey(str, str2.toCharArray());
        Certificate[] certificateChain = keyStore.getCertificateChain(str);
        X509Certificate[] x509CertificateArr = new X509Certificate[certificateChain.length];
        Arrays.setAll(x509CertificateArr, new b(certificateChain));
        this.certChain = x509CertificateArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ X509Certificate a(Certificate[] certificateArr, int i) {
        return lambda$new$0(certificateArr, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ X509Certificate lambda$new$0(Certificate[] certificateArr, int i) {
        return (X509Certificate) certificateArr[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAlias() {
        return this.keyAlias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public X509Certificate[] getCertificateChain() {
        return this.certChain;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrivateKey getPrivateKey() {
        return this.key;
    }
}
