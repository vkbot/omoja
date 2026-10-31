package okhttp3.internal.http1;

import j1.i;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.e0;
import l9.j0;
import l9.l;
import l9.s;
import okhttp3.HttpUrl;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Ll9/e0;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Ll9/j0;", "timeout", "()Ll9/j0;", "Ll9/l;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", HttpUrl.FRAGMENT_ENCODE_SET, "write", "(Ll9/l;J)V", "flush", "()V", "close", "Ll9/s;", "Ll9/s;", HttpUrl.FRAGMENT_ENCODE_SET, "closed", "Z", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
public final class Http1ExchangeCodec$ChunkedSink implements e0 {
    private boolean closed;
    final /* synthetic */ Http1ExchangeCodec this$0;
    private final s timeout;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Http1ExchangeCodec$ChunkedSink(Http1ExchangeCodec http1ExchangeCodec) {
        this.this$0 = http1ExchangeCodec;
        this.timeout = new s(Http1ExchangeCodec.access$getSink$p(http1ExchangeCodec).timeout());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        Http1ExchangeCodec.access$getSink$p(this.this$0).A("0\r\n\r\n");
        Http1ExchangeCodec.access$detachTimeout(this.this$0, this.timeout);
        Http1ExchangeCodec.access$setState$p(this.this$0, 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Flushable
    public synchronized void flush() {
        if (this.closed) {
            return;
        }
        Http1ExchangeCodec.access$getSink$p(this.this$0).flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public j0 timeout() {
        return this.timeout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public void write(l source, long byteCount) {
        source.getClass();
        if (this.closed) {
            i.l("closed");
        } else {
            if (byteCount == 0) {
                return;
            }
            Http1ExchangeCodec.access$getSink$p(this.this$0).H(byteCount);
            Http1ExchangeCodec.access$getSink$p(this.this$0).A(SocketClient.NETASCII_EOL);
            Http1ExchangeCodec.access$getSink$p(this.this$0).write(source, byteCount);
            Http1ExchangeCodec.access$getSink$p(this.this$0).A(SocketClient.NETASCII_EOL);
        }
    }
}
