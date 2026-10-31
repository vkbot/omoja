package org.apache.commons.net.imap;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLContext;
import org.apache.commons.io.filefilter.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class AuthenticatingIMAPClient extends IMAPSClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AuthenticatingIMAPClient() {
        this(IMAPSClient.DEFAULT_PROTOCOL, false);
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
    /* JADX WARN: Code duplicated, block: B:37:0x010b A[RETURN] */
    public boolean auth(AuthenticatingIMAPClient$AUTH_METHOD authenticatingIMAPClient$AUTH_METHOD, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (IMAPReply.isContinuation(sendCommand(IMAPCommand.AUTHENTICATE, authenticatingIMAPClient$AUTH_METHOD.getAuthName()))) {
            int iOrdinal = authenticatingIMAPClient$AUTH_METHOD.ordinal();
            if (iOrdinal == 0) {
                int iSendData = sendData(f.d(f.q(), ("\u0000" + str + "\u0000" + str2).getBytes(getCharset())));
                if (iSendData == 0) {
                    setState(IMAP$IMAPState.AUTH_STATE);
                }
                if (iSendData == 0) {
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
                int iSendData2 = sendData(f.d(f.q(), bArr));
                if (iSendData2 == 0) {
                    setState(IMAP$IMAPState.AUTH_STATE);
                }
                if (iSendData2 == 0) {
                    return true;
                }
            } else if (iOrdinal != 2) {
                if (iOrdinal == 3 || iOrdinal == 4) {
                    int iSendData3 = sendData(str);
                    if (iSendData3 == 0) {
                        setState(IMAP$IMAPState.AUTH_STATE);
                    }
                    if (iSendData3 == 0) {
                        return true;
                    }
                }
            } else if (sendData(f.d(f.q(), str.getBytes(getCharset()))) == 3) {
                int iSendData4 = sendData(f.d(f.q(), str2.getBytes(getCharset())));
                if (iSendData4 == 0) {
                    setState(IMAP$IMAPState.AUTH_STATE);
                }
                if (iSendData4 == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean authenticate(AuthenticatingIMAPClient$AUTH_METHOD authenticatingIMAPClient$AUTH_METHOD, String str, String str2) {
        return auth(authenticatingIMAPClient$AUTH_METHOD, str, str2);
    }

    public AuthenticatingIMAPClient(boolean z) {
        this(IMAPSClient.DEFAULT_PROTOCOL, z);
    }

    public AuthenticatingIMAPClient(boolean z, SSLContext sSLContext) {
        this(IMAPSClient.DEFAULT_PROTOCOL, z, sSLContext);
    }

    public AuthenticatingIMAPClient(SSLContext sSLContext) {
        this(false, sSLContext);
    }

    public AuthenticatingIMAPClient(String str) {
        this(str, false);
    }

    public AuthenticatingIMAPClient(String str, boolean z) {
        this(str, z, null);
    }

    public AuthenticatingIMAPClient(String str, boolean z, SSLContext sSLContext) {
        super(str, z, sSLContext);
    }
}
