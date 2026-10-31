package okhttp3.internal.connection;

import j1.i;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.e0;
import l9.l;
import l9.q;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\u000b\u001a\u00028\u0000\"\n\b\u0000\u0010\t*\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Ll9/q;", "Ll9/e0;", "delegate", HttpUrl.FRAGMENT_ENCODE_SET, "contentLength", "<init>", "(Lokhttp3/internal/connection/Exchange;Ll9/e0;J)V", "Ljava/io/IOException;", "E", "e", "complete", "(Ljava/io/IOException;)Ljava/io/IOException;", "Ll9/l;", "source", "byteCount", HttpUrl.FRAGMENT_ENCODE_SET, "write", "(Ll9/l;J)V", "flush", "()V", "close", "J", HttpUrl.FRAGMENT_ENCODE_SET, "completed", "Z", "bytesReceived", "closed", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$RequestBodySink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"})
public final class Exchange$RequestBodySink extends q {
    private long bytesReceived;
    private boolean closed;
    private boolean completed;
    private final long contentLength;
    final /* synthetic */ Exchange this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Exchange$RequestBodySink(Exchange exchange, e0 e0Var, long j) {
        super(e0Var);
        e0Var.getClass();
        this.this$0 = exchange;
        this.contentLength = j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final <E extends IOException> E complete(E e) {
        if (this.completed) {
            return e;
        }
        this.completed = true;
        return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.q, l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        long j = this.contentLength;
        if (j != -1 && this.bytesReceived != j) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            super.close();
            complete(null);
        } catch (IOException e) {
            throw complete(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.q, l9.e0, java.io.Flushable
    public void flush() throws IOException {
        try {
            super.flush();
        } catch (IOException e) {
            throw complete(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.q, l9.e0
    public void write(l source, long byteCount) throws IOException {
        source.getClass();
        if (this.closed) {
            i.l("closed");
            return;
        }
        long j = this.contentLength;
        if (j == -1 || this.bytesReceived + byteCount <= j) {
            try {
                super.write(source, byteCount);
                this.bytesReceived += byteCount;
                return;
            } catch (IOException e) {
                throw complete(e);
            }
        }
        throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + byteCount));
    }
}
