package okhttp3.internal.http2;

import ai.onnxruntime.a;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.g0;
import l9.i;
import l9.j0;
import l9.l;
import l9.n;
import n0.b;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001aR\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0017\u0010 \u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010$\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b$\u0010!\u001a\u0004\b%\u0010#R$\u0010'\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010-\u001a\u00020\u00048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b-\u0010\u001b\u001a\u0004\b.\u0010\u001d\"\u0004\b/\u0010\u001f¨\u00060"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Ll9/g0;", HttpUrl.FRAGMENT_ENCODE_SET, "maxByteCount", HttpUrl.FRAGMENT_ENCODE_SET, "finished", "<init>", "(Lokhttp3/internal/http2/Http2Stream;JZ)V", "read", HttpUrl.FRAGMENT_ENCODE_SET, "updateConnectionFlowControl", "(J)V", "Ll9/l;", "sink", "byteCount", "(Ll9/l;J)J", "Ll9/n;", "source", "receive$okhttp", "(Ll9/n;J)V", "receive", "Ll9/j0;", "timeout", "()Ll9/j0;", "close", "()V", "J", "Z", "getFinished$okhttp", "()Z", "setFinished$okhttp", "(Z)V", "receiveBuffer", "Ll9/l;", "getReceiveBuffer", "()Ll9/l;", "readBuffer", "getReadBuffer", "Lokhttp3/Headers;", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", "closed", "getClosed$okhttp", "setClosed$okhttp", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,688:1\n1#2:689\n615#3,4:690\n615#3,4:694\n563#3:698\n563#3:699\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n407#1:690,4\n418#1:694,4\n458#1:698\n480#1:699\n*E\n"})
public final class Http2Stream$FramingSource implements g0 {
    private boolean closed;
    private boolean finished;
    private final long maxByteCount;
    final /* synthetic */ Http2Stream this$0;
    private Headers trailers;
    private final l receiveBuffer = new l();
    private final l readBuffer = new l();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Http2Stream$FramingSource(Http2Stream http2Stream, long j, boolean z) {
        this.this$0 = http2Stream;
        this.maxByteCount = j;
        this.finished = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void updateConnectionFlowControl(long read) {
        Http2Stream http2Stream = this.this$0;
        if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST NOT hold lock on ", http2Stream);
        } else {
            this.this$0.getConnection().updateConnectionFlowControl$okhttp(read);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        long j;
        Http2Stream http2Stream = this.this$0;
        synchronized (http2Stream) {
            this.closed = true;
            l lVar = this.readBuffer;
            j = lVar.c;
            lVar.b();
            http2Stream.getClass();
            http2Stream.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
        if (j > 0) {
            updateConnectionFlowControl(j);
        }
        this.this$0.cancelStreamIfNecessary$okhttp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getClosed$okhttp, reason: from getter */
    public final boolean getClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getFinished$okhttp, reason: from getter */
    public final boolean getFinished() {
        return this.finished;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l getReadBuffer() {
        return this.readBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l getReceiveBuffer() {
        return this.receiveBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Headers getTrailers() {
        return this.trailers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    public long read(l sink, long byteCount) throws IOException {
        IOException errorException;
        boolean z;
        long j;
        long j2;
        sink.getClass();
        long j3 = 0;
        if (byteCount < 0) {
            i.d(a.h(byteCount, "byteCount < 0: "));
            return 0L;
        }
        while (true) {
            Http2Stream http2Stream = this.this$0;
            synchronized (http2Stream) {
                http2Stream.getReadTimeout().enter();
                try {
                    if (http2Stream.getErrorCode$okhttp() == null || this.finished) {
                        errorException = null;
                    } else {
                        errorException = http2Stream.getErrorException();
                        if (errorException == null) {
                            ErrorCode errorCode$okhttp = http2Stream.getErrorCode$okhttp();
                            errorCode$okhttp.getClass();
                            errorException = new StreamResetException(errorCode$okhttp);
                        }
                    }
                    if (this.closed) {
                        throw new IOException("stream closed");
                    }
                    l lVar = this.readBuffer;
                    long j4 = lVar.c;
                    z = false;
                    if (j4 > j3) {
                        j2 = lVar.read(sink, Math.min(byteCount, j4));
                        http2Stream.setReadBytesTotal$okhttp(http2Stream.getReadBytesTotal() + j2);
                        long readBytesTotal = http2Stream.getReadBytesTotal() - http2Stream.getReadBytesAcknowledged();
                        if (errorException == null) {
                            j = j3;
                            if (readBytesTotal >= http2Stream.getConnection().getOkHttpSettings().getInitialWindowSize() / 2) {
                                http2Stream.getConnection().writeWindowUpdateLater$okhttp(http2Stream.getId(), readBytesTotal);
                                http2Stream.setReadBytesAcknowledged$okhttp(http2Stream.getReadBytesTotal());
                            }
                        } else {
                            j = j3;
                        }
                    } else {
                        j = j3;
                        if (!this.finished && errorException == null) {
                            http2Stream.waitForIo$okhttp();
                            z = true;
                        }
                        j2 = -1;
                    }
                    http2Stream.getReadTimeout().exitAndThrowIfTimedOut();
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    http2Stream.getReadTimeout().exitAndThrowIfTimedOut();
                    throw th;
                }
                throw th;
            }
            if (!z) {
                if (j2 != -1) {
                    return j2;
                }
                if (errorException == null) {
                    return -1L;
                }
                throw errorException;
            }
            j3 = j;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void receive$okhttp(n source, long byteCount) {
        boolean z;
        boolean z2;
        source.getClass();
        Http2Stream http2Stream = this.this$0;
        if (Util.assertionsEnabled && Thread.holdsLock(http2Stream)) {
            b.B("Thread ", Thread.currentThread().getName(), " MUST NOT hold lock on ", http2Stream);
            return;
        }
        long j = byteCount;
        while (j > 0) {
            synchronized (this.this$0) {
                z = this.finished;
                z2 = this.readBuffer.c + j > this.maxByteCount;
                Unit unit = Unit.INSTANCE;
            }
            if (z2) {
                source.skip(j);
                this.this$0.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                return;
            }
            if (z) {
                source.skip(j);
                return;
            }
            long j2 = source.read(this.receiveBuffer, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
            Http2Stream http2Stream2 = this.this$0;
            synchronized (http2Stream2) {
                try {
                    if (this.closed) {
                        this.receiveBuffer.b();
                    } else {
                        l lVar = this.readBuffer;
                        boolean z3 = lVar.c == 0;
                        lVar.G(this.receiveBuffer);
                        if (z3) {
                            http2Stream2.getClass();
                            http2Stream2.notifyAll();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        updateConnectionFlowControl(byteCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setClosed$okhttp(boolean z) {
        this.closed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setFinished$okhttp(boolean z) {
        this.finished = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setTrailers(Headers headers) {
        this.trailers = headers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.g0
    /* JADX INFO: renamed from: timeout */
    public j0 getTimeout() {
        return this.this$0.getReadTimeout();
    }
}
