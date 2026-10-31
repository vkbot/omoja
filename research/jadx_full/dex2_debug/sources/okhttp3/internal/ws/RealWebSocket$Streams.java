package okhttp3.internal.ws;

import java.io.Closeable;
import kotlin.Metadata;
import l9.m;
import l9.n;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Streams;", "Ljava/io/Closeable;", HttpUrl.FRAGMENT_ENCODE_SET, "client", "Ll9/n;", "source", "Ll9/m;", "sink", "<init>", "(ZLl9/n;Ll9/m;)V", "Z", "getClient", "()Z", "Ll9/n;", "getSource", "()Ll9/n;", "Ll9/m;", "getSink", "()Ll9/m;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class RealWebSocket$Streams implements Closeable {
    private final boolean client;
    private final m sink;
    private final n source;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RealWebSocket$Streams(boolean z, n nVar, m mVar) {
        nVar.getClass();
        mVar.getClass();
        this.client = z;
        this.source = nVar;
        this.sink = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getClient() {
        return this.client;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final m getSink() {
        return this.sink;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n getSource() {
        return this.source;
    }
}
