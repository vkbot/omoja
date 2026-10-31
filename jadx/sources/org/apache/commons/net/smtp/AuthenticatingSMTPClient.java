package org.apache.commons.net.smtp;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLContext;
import kotlin.UByte;
import org.apache.commons.p161io.build.C2782b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatingSMTPClient extends SMTPSClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum AUTH_METHOD {
        PLAIN,
        CRAM_MD5,
        LOGIN,
        XOAUTH,
        XOAUTH2;

        public static String getAuthName(AUTH_METHOD auth_method) {
            if (auth_method.equals(PLAIN)) {
                return "PLAIN";
            }
            if (auth_method.equals(CRAM_MD5)) {
                return "CRAM-MD5";
            }
            if (auth_method.equals(LOGIN)) {
                return "LOGIN";
            }
            if (auth_method.equals(XOAUTH)) {
                return "XOAUTH";
            }
            if (auth_method.equals(XOAUTH2)) {
                return "XOAUTH2";
            }
            return null;
        }
    }

    public AuthenticatingSMTPClient(String str, String str2) {
        super(str, false, str2);
    }

    private String convertToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            int i10 = b10 & UByte.MAX_VALUE;
            if (i10 <= 15) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(i10));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getEnhancedReplyCode$0(String[] strArr, int i10) {
        return Integer.parseInt(strArr[i10]);
    }

    public boolean auth(AUTH_METHOD auth_method, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (SMTPReply.isPositiveIntermediate(sendCommand(14, AUTH_METHOD.getAuthName(auth_method)))) {
            if (auth_method.equals(AUTH_METHOD.PLAIN)) {
                return SMTPReply.isPositiveCompletion(sendCommand(Base64.getEncoder().encodeToString(("\u0000" + str + "\u0000" + str2).getBytes(getCharset()))));
            }
            if (auth_method.equals(AUTH_METHOD.CRAM_MD5)) {
                byte[] bArrDecode = Base64.getDecoder().decode(getReplyString().substring(4).trim());
                Mac mac = Mac.getInstance(MAC_ALGORITHM);
                mac.init(new SecretKeySpec(str2.getBytes(getCharset()), MAC_ALGORITHM));
                byte[] bytes = convertToHexString(mac.doFinal(bArrDecode)).getBytes(getCharset());
                byte[] bytes2 = str.getBytes(getCharset());
                byte[] bArr = new byte[bytes2.length + 1 + bytes.length];
                System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
                bArr[bytes2.length] = 32;
                System.arraycopy(bytes, 0, bArr, bytes2.length + 1, bytes.length);
                return SMTPReply.isPositiveCompletion(sendCommand(Base64.getEncoder().encodeToString(bArr)));
            }
            if (auth_method.equals(AUTH_METHOD.LOGIN)) {
                if (SMTPReply.isPositiveIntermediate(sendCommand(Base64.getEncoder().encodeToString(str.getBytes(getCharset()))))) {
                    return SMTPReply.isPositiveCompletion(sendCommand(Base64.getEncoder().encodeToString(str2.getBytes(getCharset()))));
                }
            } else if (auth_method.equals(AUTH_METHOD.XOAUTH) || auth_method.equals(AUTH_METHOD.XOAUTH2)) {
                return SMTPReply.isPositiveIntermediate(sendCommand(Base64.getEncoder().encodeToString(str.getBytes(getCharset()))));
            }
        }
        return false;
    }

    public int ehlo(String str) {
        return sendCommand(15, str);
    }

    public boolean elogin() {
        String hostName = getLocalAddress().getHostName();
        if (hostName == null) {
            return false;
        }
        return SMTPReply.isPositiveCompletion(ehlo(hostName));
    }

    public int[] getEnhancedReplyCode() {
        String strSubstring = getReplyString().substring(4);
        String[] strArrSplit = strSubstring.substring(0, strSubstring.indexOf(32)).split("\\.");
        int[] iArr = new int[strArrSplit.length];
        Arrays.setAll(iArr, new C2782b(1, strArrSplit));
        return iArr;
    }

    public AuthenticatingSMTPClient(boolean z9, SSLContext sSLContext) {
        super(z9, sSLContext);
    }

    public AuthenticatingSMTPClient(String str) {
        super(str);
    }

    public AuthenticatingSMTPClient(String str, boolean z9) {
        super(str, z9);
    }

    public AuthenticatingSMTPClient(String str, boolean z9, String str2) {
        super(str, z9, str2);
    }

    public AuthenticatingSMTPClient() {
    }

    public boolean elogin(String str) {
        return SMTPReply.isPositiveCompletion(ehlo(str));
    }
}
