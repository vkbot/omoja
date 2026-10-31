package org.apache.commons.net.smtp;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public enum AuthenticatingSMTPClient$AUTH_METHOD {
    PLAIN,
    CRAM_MD5,
    LOGIN,
    XOAUTH,
    XOAUTH2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getAuthName(AuthenticatingSMTPClient$AUTH_METHOD authenticatingSMTPClient$AUTH_METHOD) {
        if (authenticatingSMTPClient$AUTH_METHOD.equals(PLAIN)) {
            return "PLAIN";
        }
        if (authenticatingSMTPClient$AUTH_METHOD.equals(CRAM_MD5)) {
            return "CRAM-MD5";
        }
        if (authenticatingSMTPClient$AUTH_METHOD.equals(LOGIN)) {
            return "LOGIN";
        }
        if (authenticatingSMTPClient$AUTH_METHOD.equals(XOAUTH)) {
            return "XOAUTH";
        }
        if (authenticatingSMTPClient$AUTH_METHOD.equals(XOAUTH2)) {
            return "XOAUTH2";
        }
        return null;
    }
}
