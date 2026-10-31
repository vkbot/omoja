package org.apache.commons.net.pop3;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ExtendedPOP3Client extends POP3SClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum AUTH_METHOD {
        PLAIN("PLAIN"),
        CRAM_MD5("CRAM-MD5");

        private final String methodName;

        AUTH_METHOD(String str) {
            this.methodName = str;
        }

        public String getAuthName() {
            return this.methodName;
        }
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

    /* JADX WARN: Code duplicated, block: B:14:0x00b4 A[RETURN] */
    public boolean auth(AUTH_METHOD auth_method, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (sendCommand(13, auth_method.getAuthName()) == 2) {
            int iOrdinal = auth_method.ordinal();
            if (iOrdinal == 0) {
                if (sendCommand(new String(Base64.getEncoder().encode(("\u0000" + str + "\u0000" + str2).getBytes(getCharset())), getCharset())) == 0) {
                    return true;
                }
            } else if (iOrdinal == 1) {
                byte[] bArrDecode = Base64.getDecoder().decode(getReplyString().substring(2).trim());
                Mac mac = Mac.getInstance(MAC_ALGORITHM);
                mac.init(new SecretKeySpec(str2.getBytes(getCharset()), MAC_ALGORITHM));
                byte[] bytes = convertToHexString(mac.doFinal(bArrDecode)).getBytes(getCharset());
                byte[] bytes2 = str.getBytes(getCharset());
                byte[] bArr = new byte[bytes2.length + 1 + bytes.length];
                System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
                bArr[bytes2.length] = 32;
                System.arraycopy(bytes, 0, bArr, bytes2.length + 1, bytes.length);
                if (sendCommand(Base64.getEncoder().encodeToString(bArr)) == 0) {
                    return true;
                }
            }
        }
        return false;
    }
}
