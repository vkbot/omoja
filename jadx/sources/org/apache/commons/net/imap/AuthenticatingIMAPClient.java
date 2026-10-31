package org.apache.commons.net.imap;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLContext;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AuthenticatingIMAPClient extends IMAPSClient {
    private static final String MAC_ALGORITHM = "HmacMD5";

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum AUTH_METHOD {
        PLAIN("PLAIN"),
        CRAM_MD5("CRAM-MD5"),
        LOGIN("LOGIN"),
        XOAUTH("XOAUTH"),
        XOAUTH2("XOAUTH2");

        private final String authName;

        AUTH_METHOD(String str) {
            this.authName = str;
        }

        public String getAuthName() {
            return this.authName;
        }
    }

    public AuthenticatingIMAPClient() {
        this(IMAPSClient.DEFAULT_PROTOCOL, false);
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

    /* JADX WARN: Code duplicated, block: B:37:0x010b A[RETURN] */
    public boolean auth(AUTH_METHOD auth_method, String str, String str2) throws NoSuchAlgorithmException, InvalidKeyException {
        if (IMAPReply.isContinuation(sendCommand(IMAPCommand.AUTHENTICATE, auth_method.getAuthName()))) {
            int iOrdinal = auth_method.ordinal();
            if (iOrdinal == 0) {
                int iSendData = sendData(Base64.getEncoder().encodeToString(("\u0000" + str + "\u0000" + str2).getBytes(getCharset())));
                if (iSendData == 0) {
                    setState(IMAP.IMAPState.AUTH_STATE);
                }
                if (iSendData == 0) {
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
                int iSendData2 = sendData(Base64.getEncoder().encodeToString(bArr));
                if (iSendData2 == 0) {
                    setState(IMAP.IMAPState.AUTH_STATE);
                }
                if (iSendData2 == 0) {
                    return true;
                }
            } else if (iOrdinal != 2) {
                if (iOrdinal == 3 || iOrdinal == 4) {
                    int iSendData3 = sendData(str);
                    if (iSendData3 == 0) {
                        setState(IMAP.IMAPState.AUTH_STATE);
                    }
                    if (iSendData3 == 0) {
                        return true;
                    }
                }
            } else if (sendData(Base64.getEncoder().encodeToString(str.getBytes(getCharset()))) == 3) {
                int iSendData4 = sendData(Base64.getEncoder().encodeToString(str2.getBytes(getCharset())));
                if (iSendData4 == 0) {
                    setState(IMAP.IMAPState.AUTH_STATE);
                }
                if (iSendData4 == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean authenticate(AUTH_METHOD auth_method, String str, String str2) {
        return auth(auth_method, str, str2);
    }

    public AuthenticatingIMAPClient(boolean z9) {
        this(IMAPSClient.DEFAULT_PROTOCOL, z9);
    }

    public AuthenticatingIMAPClient(boolean z9, SSLContext sSLContext) {
        this(IMAPSClient.DEFAULT_PROTOCOL, z9, sSLContext);
    }

    public AuthenticatingIMAPClient(SSLContext sSLContext) {
        this(false, sSLContext);
    }

    public AuthenticatingIMAPClient(String str) {
        this(str, false);
    }

    public AuthenticatingIMAPClient(String str, boolean z9) {
        this(str, z9, null);
    }

    public AuthenticatingIMAPClient(String str, boolean z9, SSLContext sSLContext) {
        super(str, z9, sSLContext);
    }
}
