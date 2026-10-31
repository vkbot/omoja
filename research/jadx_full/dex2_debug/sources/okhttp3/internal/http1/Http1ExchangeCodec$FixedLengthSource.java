package okhttp3.internal.http1;

import ai.onnxruntime.a;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.i;
import l9.l;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", HttpUrl.FRAGMENT_ENCODE_SET, "bytesRemaining", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;J)V", "Ll9/l;", "sink", "byteCount", "read", "(Ll9/l;J)J", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "J", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
public final class Http1ExchangeCodec$FixedLengthSource extends Http1ExchangeCodec$AbstractSource {
    private long bytesRemaining;
    final /* synthetic */ Http1ExchangeCodec this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http1ExchangeCodec$FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, long j) {
        super(http1ExchangeCodec);
        this.this$0 = http1ExchangeCodec;
        this.bytesRemaining = j;
        if (j == 0) {
            responseBodyComplete();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (getClosed()) {
            return;
        }
        if (this.bytesRemaining != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
            this.this$0.getConnection().noNewExchanges$okhttp();
            responseBodyComplete();
        }
        setClosed(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource, l9.g0
    public long read(l sink, long byteCount) throws IOException {
        sink.getClass();
        if (byteCount < 0) {
            i.d(a.h(byteCount, "byteCount < 0: "));
            return 0L;
        }
        if (getClosed()) {
            j1.i.l("closed");
            return 0L;
        }
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1L;
        }
        long j2 = super.read(sink, Math.min(j, byteCount));
        if (j2 == -1) {
            this.this$0.getConnection().noNewExchanges$okhttp();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            responseBodyComplete();
            throw protocolException;
        }
        long j3 = this.bytesRemaining - j2;
        this.bytesRemaining = j3;
        if (j3 == 0) {
            responseBodyComplete();
        }
        return j2;
    }
}
