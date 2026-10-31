package org.apache.commons.net.finger;

import ai.onnxruntime.AbstractC0074a;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.net.SocketClient;
import org.apache.commons.p161io.C2848i;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FingerClient extends SocketClient {
    public static final int DEFAULT_PORT = 79;
    private static final String LONG_FLAG = "/W ";

    public FingerClient() {
        setDefaultPort(79);
    }

    public InputStream getInputStream(boolean z9, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(64);
        if (z9) {
            sb.append(LONG_FLAG);
        }
        byte[] bytes = AbstractC0074a.m165p(sb, str, SocketClient.NETASCII_EOL).getBytes(Charsets.toCharset(str2));
        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(checkOpenOutputStream(), 1024));
        dataOutputStream.write(bytes, 0, bytes.length);
        dataOutputStream.flush();
        return this._input_;
    }

    public String query(boolean z9, String str) {
        return IOUtils.toString(new C2848i(this, z9, str, 1), getCharset());
    }

    public String query(boolean z9) {
        return query(z9, "");
    }

    /* JADX INFO: renamed from: getInputStream, reason: merged with bridge method [inline-methods] */
    public InputStream lambda$query$0(boolean z9, String str) {
        return getInputStream(z9, str, null);
    }

    public InputStream getInputStream(boolean z9) {
        return lambda$query$0(z9, "");
    }
}
