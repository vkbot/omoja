package okhttp3.internal.http1;

import ai.onnxruntime.b;
import java.io.IOException;
import kotlin.Metadata;
import l9.g0;
import l9.j0;
import l9.l;
import l9.s;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b¢\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0005\u001a\u00020\u00108\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Ll9/g0;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Ll9/j0;", "timeout", "()Ll9/j0;", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", HttpUrl.FRAGMENT_ENCODE_SET, "responseBodyComplete", "()V", "Ll9/s;", "Ll9/s;", "getTimeout", "()Ll9/s;", HttpUrl.FRAGMENT_ENCODE_SET, "closed", "Z", "getClosed", "()Z", "setClosed", "(Z)V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class Http1ExchangeCodec$AbstractSource implements g0 {
    private boolean closed;
    final /* synthetic */ Http1ExchangeCodec this$0;
    private final s timeout;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Http1ExchangeCodec$AbstractSource(Http1ExchangeCodec http1ExchangeCodec) {
        this.this$0 = http1ExchangeCodec;
        this.timeout = new s(Http1ExchangeCodec.access$getSource$p(http1ExchangeCodec).getTimeout());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract /* synthetic */ void close();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final s getTimeout() {
        return this.timeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public long read(l sink, long byteCount) throws IOException {
        sink.getClass();
        try {
            return Http1ExchangeCodec.access$getSource$p(this.this$0).read(sink, byteCount);
        } catch (IOException e) {
            this.this$0.getConnection().noNewExchanges$okhttp();
            responseBodyComplete();
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void responseBodyComplete() {
        if (Http1ExchangeCodec.access$getState$p(this.this$0) == 6) {
            return;
        }
        int iAccess$getState$p = Http1ExchangeCodec.access$getState$p(this.this$0);
        Http1ExchangeCodec http1ExchangeCodec = this.this$0;
        if (iAccess$getState$p != 5) {
            b.b(Http1ExchangeCodec.access$getState$p(http1ExchangeCodec), "state: ");
        } else {
            Http1ExchangeCodec.access$detachTimeout(http1ExchangeCodec, this.timeout);
            Http1ExchangeCodec.access$setState$p(this.this$0, 6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setClosed(boolean z) {
        this.closed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public j0 getTimeout() {
        return this.timeout;
    }
}
