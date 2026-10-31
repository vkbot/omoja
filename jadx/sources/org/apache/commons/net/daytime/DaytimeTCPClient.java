package org.apache.commons.net.daytime;

import org.apache.commons.net.SocketClient;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class DaytimeTCPClient extends SocketClient {
    public static final int DEFAULT_PORT = 13;

    public DaytimeTCPClient() {
        setDefaultPort(13);
    }

    public String getTime() {
        return IOUtils.toString(this._input_, getCharset());
    }
}
