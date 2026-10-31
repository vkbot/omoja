package org.apache.commons.net.time;

import java.io.DataInputStream;
import java.util.Date;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class TimeTCPClient extends SocketClient {
    public static final int DEFAULT_PORT = 37;
    public static final long SECONDS_1900_TO_1970 = 2208988800L;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TimeTCPClient() {
        setDefaultPort(37);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Date getDate() {
        return new Date((getTime() - 2208988800L) * 1000);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getTime() {
        return ((long) new DataInputStream(this._input_).readInt()) & 4294967295L;
    }
}
