package okhttp3;

import kotlin.Metadata;
import l9.e0;
import l9.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"okhttp3/Cache$RealCacheRequest$1", "Ll9/q;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Cache$RealCacheRequest$1 extends q {
    final /* synthetic */ Cache this$0;
    final /* synthetic */ Cache$RealCacheRequest this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cache$RealCacheRequest$1(Cache cache, Cache$RealCacheRequest cache$RealCacheRequest, e0 e0Var) {
        super(e0Var);
        this.this$0 = cache;
        this.this$1 = cache$RealCacheRequest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.q, l9.e0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Cache cache = this.this$0;
        Cache$RealCacheRequest cache$RealCacheRequest = this.this$1;
        synchronized (cache) {
            if (cache$RealCacheRequest.getDone()) {
                return;
            }
            cache$RealCacheRequest.setDone(true);
            cache.setWriteSuccessCount$okhttp(cache.getWriteSuccessCount() + 1);
            super.close();
            Cache$RealCacheRequest.access$getEditor$p(this.this$1).commit();
        }
    }
}
