package org.apache.commons.net.pop3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public enum ExtendedPOP3Client$AUTH_METHOD {
    PLAIN("PLAIN"),
    CRAM_MD5("CRAM-MD5");

    private final String methodName;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    ExtendedPOP3Client$AUTH_METHOD(String str) {
        this.methodName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAuthName() {
        return this.methodName;
    }
}
