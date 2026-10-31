package org.apache.commons.net.pop3;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.io.filefilter.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ExtendedPOP3Client extends POP3SClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

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
    /* JADX WARN: Code duplicated, block: B:14:0x00b4 A[RETURN] */
    public boolean auth(ExtendedPOP3Client$AUTH_METHOD extendedPOP3Client$AUTH_METHOD, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (sendCommand(13, extendedPOP3Client$AUTH_METHOD.getAuthName()) == 2) {
            int iOrdinal = extendedPOP3Client$AUTH_METHOD.ordinal();
            if (iOrdinal == 0) {
                if (sendCommand(new String(f.w(f.q(), ("\u0000" + str + "\u0000" + str2).getBytes(getCharset())), getCharset())) == 0) {
                    return true;
                }
            } else if (iOrdinal == 1) {
                byte[] bArrU = f.u(f.p(), getReplyString().substring(2).trim());
                Mac mac = Mac.getInstance(MAC_ALGORITHM);
                mac.init(new SecretKeySpec(str2.getBytes(getCharset()), MAC_ALGORITHM));
                byte[] bytes = convertToHexString(mac.doFinal(bArrU)).getBytes(getCharset());
                byte[] bytes2 = str.getBytes(getCharset());
                byte[] bArr = new byte[bytes2.length + 1 + bytes.length];
                System.arraycopy(bytes2, 0, bArr, 0, bytes2.length);
                bArr[bytes2.length] = 32;
                System.arraycopy(bytes, 0, bArr, bytes2.length + 1, bytes.length);
                if (sendCommand(f.d(f.q(), bArr)) == 0) {
                    return true;
                }
            }
        }
        return false;
    }
}
