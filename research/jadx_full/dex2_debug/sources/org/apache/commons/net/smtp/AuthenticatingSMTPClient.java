package org.apache.commons.net.smtp;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLContext;
import org.apache.commons.io.build.b;
import org.apache.commons.io.filefilter.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AuthenticatingSMTPClient extends SMTPSClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AuthenticatingSMTPClient(String str, String str2) {
        super(str, false, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(String[] strArr, int i) {
        return lambda$getEnhancedReplyCode$0(strArr, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String convertToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            if (i <= 15) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$getEnhancedReplyCode$0(String[] strArr, int i) {
        return Integer.parseInt(strArr[i]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean auth(AuthenticatingSMTPClient$AUTH_METHOD authenticatingSMTPClient$AUTH_METHOD, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (SMTPReply.isPositiveIntermediate(sendCommand(14, AuthenticatingSMTPClient$AUTH_METHOD.getAuthName(authenticatingSMTPClient$AUTH_METHOD)))) {
            if (authenticatingSMTPClient$AUTH_METHOD.equals(AuthenticatingSMTPClient$AUTH_METHOD.PLAIN)) {
                return SMTPReply.isPositiveCompletion(sendCommand(f.d(f.q(), ("\u0000" + str + "\u0000" + str2).getBytes(getCharset()))));
            }
            if (authenticatingSMTPClient$AUTH_METHOD.equals(AuthenticatingSMTPClient$AUTH_METHOD.CRAM_MD5)) {
                byte[] bArrU = f.u(f.p(), getReplyString().substring(4).trim());
                Mac mac = Mac.getInstance(MAC_ALGORITHM);
                mac.init(new SecretKeySpec(str2.getBytes(getCharset()), MAC_ALGORITHM));
                byte[] bytes = convertToHexString(mac.doFinal(bArrU)).getBytes(getCharset());
                byte[] bytes2 = str.getBytes(getCharset());
                byte[] bArr = new byte[bytes2.length + 1 + bytes.length];
                System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
                bArr[bytes2.length] = 32;
                System.arraycopy(bytes, 0, bArr, bytes2.length + 1, bytes.length);
                return SMTPReply.isPositiveCompletion(sendCommand(f.d(f.q(), bArr)));
            }
            if (authenticatingSMTPClient$AUTH_METHOD.equals(AuthenticatingSMTPClient$AUTH_METHOD.LOGIN)) {
                if (SMTPReply.isPositiveIntermediate(sendCommand(f.d(f.q(), str.getBytes(getCharset()))))) {
                    return SMTPReply.isPositiveCompletion(sendCommand(f.d(f.q(), str2.getBytes(getCharset()))));
                }
            } else if (authenticatingSMTPClient$AUTH_METHOD.equals(AuthenticatingSMTPClient$AUTH_METHOD.XOAUTH) || authenticatingSMTPClient$AUTH_METHOD.equals(AuthenticatingSMTPClient$AUTH_METHOD.XOAUTH2)) {
                return SMTPReply.isPositiveIntermediate(sendCommand(f.d(f.q(), str.getBytes(getCharset()))));
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int ehlo(String str) {
        return sendCommand(15, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean elogin() {
        String hostName = getLocalAddress().getHostName();
        if (hostName == null) {
            return false;
        }
        return SMTPReply.isPositiveCompletion(ehlo(hostName));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] getEnhancedReplyCode() {
        String strSubstring = getReplyString().substring(4);
        String[] strArrSplit = strSubstring.substring(0, strSubstring.indexOf(32)).split("\\.");
        int[] iArr = new int[strArrSplit.length];
        Arrays.setAll(iArr, new b(1, strArrSplit));
        return iArr;
    }

    public AuthenticatingSMTPClient(boolean z, SSLContext sSLContext) {
        super(z, sSLContext);
    }

    public AuthenticatingSMTPClient(String str) {
        super(str);
    }

    public AuthenticatingSMTPClient(String str, boolean z) {
        super(str, z);
    }

    public AuthenticatingSMTPClient(String str, boolean z, String str2) {
        super(str, z, str2);
    }

    public AuthenticatingSMTPClient() {
    }

    public boolean elogin(String str) {
        return SMTPReply.isPositiveCompletion(ehlo(str));
    }
}
