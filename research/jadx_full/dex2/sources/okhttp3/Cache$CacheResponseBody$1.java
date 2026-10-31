package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import l9.g0;
import l9.r;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"okhttp3/Cache$CacheResponseBody$1", "Ll9/r;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Cache$CacheResponseBody$1 extends r {
    final /* synthetic */ Cache$CacheResponseBody this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cache$CacheResponseBody$1(g0 g0Var, Cache$CacheResponseBody cache$CacheResponseBody) {
        super(g0Var);
        this.this$0 = cache$CacheResponseBody;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.this$0.getSnapshot().close();
        super.close();
    }
}
