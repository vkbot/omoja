package okhttp3.internal.http1;

import ai.onnxruntime.a;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import l9.i;
import l9.l;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpHeaders;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\tR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/HttpUrl;", "url", "<init>", "(Lokhttp3/internal/http1/Http1ExchangeCodec;Lokhttp3/HttpUrl;)V", HttpUrl.FRAGMENT_ENCODE_SET, "readChunkSize", "()V", "Ll9/l;", "sink", HttpUrl.FRAGMENT_ENCODE_SET, "byteCount", "read", "(Ll9/l;J)J", "close", "Lokhttp3/HttpUrl;", "bytesRemainingInChunk", "J", HttpUrl.FRAGMENT_ENCODE_SET, "hasMoreChunks", "Z", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,505:1\n1#2:506\n*E\n"})
public final class Http1ExchangeCodec$ChunkedSource extends Http1ExchangeCodec$AbstractSource {
    private long bytesRemainingInChunk;
    private boolean hasMoreChunks;
    final /* synthetic */ Http1ExchangeCodec this$0;
    private final HttpUrl url;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Http1ExchangeCodec$ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
        super(http1ExchangeCodec);
        httpUrl.getClass();
        this.this$0 = http1ExchangeCodec;
        this.url = httpUrl;
        this.bytesRemainingInChunk = -1L;
        this.hasMoreChunks = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readChunkSize() throws ProtocolException {
        if (this.bytesRemainingInChunk != -1) {
            Http1ExchangeCodec.access$getSource$p(this.this$0).L();
        }
        try {
            this.bytesRemainingInChunk = Http1ExchangeCodec.access$getSource$p(this.this$0).a0();
            String string = StringsKt.R(Http1ExchangeCodec.access$getSource$p(this.this$0).L()).toString();
            if (this.bytesRemainingInChunk < 0 || (string.length() > 0 && !StringsKt.M(string, ";"))) {
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + string + Typography.quote);
            }
            if (this.bytesRemainingInChunk == 0) {
                this.hasMoreChunks = false;
                Http1ExchangeCodec http1ExchangeCodec = this.this$0;
                Http1ExchangeCodec.access$setTrailers$p(http1ExchangeCodec, Http1ExchangeCodec.access$getHeadersReader$p(http1ExchangeCodec).readHeaders());
                OkHttpClient okHttpClientAccess$getClient$p = Http1ExchangeCodec.access$getClient$p(this.this$0);
                okHttpClientAccess$getClient$p.getClass();
                CookieJar cookieJar = okHttpClientAccess$getClient$p.cookieJar();
                HttpUrl httpUrl = this.url;
                Headers headersAccess$getTrailers$p = Http1ExchangeCodec.access$getTrailers$p(this.this$0);
                headersAccess$getTrailers$p.getClass();
                HttpHeaders.receiveHeaders(cookieJar, httpUrl, headersAccess$getTrailers$p);
                responseBodyComplete();
            }
        } catch (NumberFormatException e) {
            throw new ProtocolException(e.getMessage());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.http1.Http1ExchangeCodec$AbstractSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (getClosed()) {
            return;
        }
        if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
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
        if (!this.hasMoreChunks) {
            return -1L;
        }
        long j = this.bytesRemainingInChunk;
        if (j == 0 || j == -1) {
            readChunkSize();
            if (!this.hasMoreChunks) {
                return -1L;
            }
        }
        long j2 = super.read(sink, Math.min(byteCount, this.bytesRemainingInChunk));
        if (j2 != -1) {
            this.bytesRemainingInChunk -= j2;
            return j2;
        }
        this.this$0.getConnection().noNewExchanges$okhttp();
        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
        responseBodyComplete();
        throw protocolException;
    }
}
