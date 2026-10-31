package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.e0;
import l9.j0;
import l9.l;
import n0.b;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\tR\u0014\u0010\u001a\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0016\u001a\u0004\b$\u0010\u0018\"\u0004\b%\u0010\t¨\u0006&"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Ll9/e0;", HttpUrl.FRAGMENT_ENCODE_SET, "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;Z)V", "outFinishedOnLastFrame", HttpUrl.FRAGMENT_ENCODE_SET, "emitFrame", "(Z)V", "Ll9/l;", "source", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "write", "(Ll9/l;J)V", "flush", "()V", "Ll9/j0;", "timeout", "()Ll9/j0;", "close", "Z", "getFinished", "()Z", "setFinished", "sendBuffer", "Ll9/l;", "Lokhttp3/Headers;", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", "closed", "getClosed", "setClosed", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n615#2,4:689\n615#2,4:693\n615#2,4:697\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n*L\n528#1:689,4\n573#1:693,4\n589#1:697,4\n*E\n"})
public final class Http2Stream$FramingSink implements e0 {
    private boolean closed;
    private boolean finished;
    private final l sendBuffer;
    final /* synthetic */ Http2Stream this$0;
    private Headers trailers;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Stream$FramingSink(Http2Stream http2Stream, boolean z) {
        this.this$0 = http2Stream;
        this.finished = z;
        this.sendBuffer = new l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void emitFrame(boolean outFinishedOnLastFrame) {
        long jMin;
        boolean z;
        Http2Stream http2Stream = this.this$0;
        synchronized (http2Stream) {
            try {
                http2Stream.getWriteTimeout().enter();
                while (http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum() && !this.finished && !this.closed && http2Stream.getErrorCode$okhttp() == null) {
                    try {
                        http2Stream.waitForIo$okhttp();
                    } catch (Throwable th) {
                        http2Stream.getWriteTimeout().exitAndThrowIfTimedOut();
                        throw th;
                    }
                }
                http2Stream.getWriteTimeout().exitAndThrowIfTimedOut();
                http2Stream.checkOutNotClosed$okhttp();
                jMin = Math.min(http2Stream.getWriteBytesMaximum() - http2Stream.getWriteBytesTotal(), this.sendBuffer.c);
                http2Stream.setWriteBytesTotal$okhttp(http2Stream.getWriteBytesTotal() + jMin);
                z = outFinishedOnLastFrame && jMin == this.sendBuffer.c;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.this$0.getWriteTimeout().enter();
        try {
            this.this$0.getConnection().writeData(this.this$0.getId(), z, this.sendBuffer, jMin);
        } finally {
            this.this$0.getWriteTimeout().exitAndThrowIfTimedOut();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Http2Stream http2Stream = this.this$0;
        if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST NOT hold lock on ", http2Stream);
            return;
        }
        Http2Stream http2Stream2 = this.this$0;
        synchronized (http2Stream2) {
            if (this.closed) {
                return;
            }
            boolean z = http2Stream2.getErrorCode$okhttp() == null;
            Unit unit = Unit.INSTANCE;
            if (!this.this$0.getSink().finished) {
                boolean z2 = this.sendBuffer.c > 0;
                if (this.trailers != null) {
                    while (this.sendBuffer.c > 0) {
                        emitFrame(false);
                    }
                    Http2Connection connection = this.this$0.getConnection();
                    int id = this.this$0.getId();
                    Headers headers = this.trailers;
                    headers.getClass();
                    connection.writeHeaders$okhttp(id, z, Util.toHeaderList(headers));
                } else if (z2) {
                    while (this.sendBuffer.c > 0) {
                        emitFrame(true);
                    }
                } else if (z) {
                    this.this$0.getConnection().writeData(this.this$0.getId(), true, null, 0L);
                }
            }
            synchronized (this.this$0) {
                this.closed = true;
                Unit unit2 = Unit.INSTANCE;
            }
            this.this$0.getConnection().flush();
            this.this$0.cancelStreamIfNecessary$okhttp();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0, java.io.Flushable
    public void flush() {
        Http2Stream http2Stream = this.this$0;
        if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST NOT hold lock on ", http2Stream);
            return;
        }
        Http2Stream http2Stream2 = this.this$0;
        synchronized (http2Stream2) {
            http2Stream2.checkOutNotClosed$okhttp();
            Unit unit = Unit.INSTANCE;
        }
        while (this.sendBuffer.c > 0) {
            emitFrame(false);
            this.this$0.getConnection().flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getFinished() {
        return this.finished;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers getTrailers() {
        return this.trailers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setClosed(boolean z) {
        this.closed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFinished(boolean z) {
        this.finished = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTrailers(Headers headers) {
        this.trailers = headers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public j0 timeout() {
        return this.this$0.getWriteTimeout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.e0
    public void write(l source, long byteCount) {
        source.getClass();
        Http2Stream http2Stream = this.this$0;
        if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST NOT hold lock on ", http2Stream);
            return;
        }
        this.sendBuffer.write(source, byteCount);
        while (this.sendBuffer.c >= Http2Stream.EMIT_BUFFER_SIZE) {
            emitFrame(false);
        }
    }

    public /* synthetic */ Http2Stream$FramingSink(Http2Stream http2Stream, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(http2Stream, (i & 1) != 0 ? false : z);
    }
}
