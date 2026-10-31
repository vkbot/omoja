package org.apache.commons.net.finger;

import ai.onnxruntime.a;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.HttpUrl;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.i;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FingerClient extends SocketClient {
    public static final int DEFAULT_PORT = 79;
    private static final String LONG_FLAG = "/W ";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FingerClient() {
        setDefaultPort(79);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ InputStream a(FingerClient fingerClient, boolean z, String str) {
        return fingerClient.lambda$query$0(z, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ InputStream lambda$query$0(boolean z, String str) {
        return getInputStream(z, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream getInputStream(boolean z, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(64);
        if (z) {
            sb.append(LONG_FLAG);
        }
        byte[] bytes = a.p(sb, str, SocketClient.NETASCII_EOL).getBytes(Charsets.toCharset(str2));
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(checkOpenOutputStream(), 1024));
        dataOutputStream.write(bytes, 0, bytes.length);
        dataOutputStream.flush();
        return this._input_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String query(boolean z, String str) {
        return IOUtils.toString(new i(this, z, str, 1), getCharset());
    }

    public String query(boolean z) {
        return query(z, HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public InputStream getInputStream(boolean z, String str) {
        return getInputStream(z, str, null);
    }

    public InputStream getInputStream(boolean z) {
        return getInputStream(z, HttpUrl.FRAGMENT_ENCODE_SET);
    }
}
