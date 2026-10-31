package okhttp3.internal.connection;

import j1.i;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.g0;
import l9.l;
import l9.r;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u0011*\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Ll9/r;", "Ll9/g0;", "delegate", HttpUrl.FRAGMENT_ENCODE_SET, "contentLength", "<init>", "(Lokhttp3/internal/connection/Exchange;Ll9/g0;J)V", "Ll9/l;", "sink", "byteCount", "read", "(Ll9/l;J)J", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "Ljava/io/IOException;", "E", "e", "complete", "(Ljava/io/IOException;)Ljava/io/IOException;", "J", "bytesReceived", HttpUrl.FRAGMENT_ENCODE_SET, "invokeStartEvent", "Z", "completed", "closed", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
public final class Exchange$ResponseBodySource extends r {
    private long bytesReceived;
    private boolean closed;
    private boolean completed;
    private final long contentLength;
    private boolean invokeStartEvent;
    final /* synthetic */ Exchange this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Exchange$ResponseBodySource(Exchange exchange, g0 g0Var, long j) {
        super(g0Var);
        g0Var.getClass();
        this.this$0 = exchange;
        this.contentLength = j;
        this.invokeStartEvent = true;
        if (j == 0) {
            complete(null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            super.close();
            complete(null);
        } catch (IOException e) {
            throw complete(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <E extends IOException> E complete(E e) {
        if (this.completed) {
            return e;
        }
        this.completed = true;
        if (e == null && this.invokeStartEvent) {
            this.invokeStartEvent = false;
            this.this$0.getEventListener().responseBodyStart(this.this$0.getCall());
        }
        return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.r, l9.g0
    public long read(l sink, long byteCount) throws IOException {
        sink.getClass();
        if (this.closed) {
            i.l("closed");
            return 0L;
        }
        try {
            long j = delegate().read(sink, byteCount);
            if (this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener().responseBodyStart(this.this$0.getCall());
            }
            if (j == -1) {
                complete(null);
                return -1L;
            }
            long j2 = this.bytesReceived + j;
            long j3 = this.contentLength;
            if (j3 != -1 && j2 > j3) {
                throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j2);
            }
            this.bytesReceived = j2;
            if (j2 == j3) {
                complete(null);
            }
            return j;
        } catch (IOException e) {
            throw complete(e);
        }
    }
}
