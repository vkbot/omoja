package okhttp3.internal.http1;

import ai.onnxruntime.a;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import l9.i;
import l9.l;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "inputExhausted", "Z", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
public final class Http1ExchangeCodec$UnknownLengthSource extends Http1ExchangeCodec$AbstractSource {
    private boolean inputExhausted;
    final /* synthetic */ Http1ExchangeCodec this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http1ExchangeCodec$UnknownLengthSource(Http1ExchangeCodec http1ExchangeCodec) {
        super(http1ExchangeCodec);
        this.this$0 = http1ExchangeCodec;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (getClosed()) {
            return;
        }
        if (!this.inputExhausted) {
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
        if (this.inputExhausted) {
            return -1L;
        }
        long j = super.read(sink, byteCount);
        if (j != -1) {
            return j;
        }
        this.inputExhausted = true;
        responseBodyComplete();
        return -1L;
    }
}
