package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import l9.g0;
import l9.r;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"okhttp3/internal/cache/DiskLruCache$Entry$newSource$1", "Ll9/r;", HttpUrl.FRAGMENT_ENCODE_SET, "close", "()V", HttpUrl.FRAGMENT_ENCODE_SET, "closed", "Z", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DiskLruCache$Entry$newSource$1 extends r {
    private boolean closed;
    final /* synthetic */ DiskLruCache this$0;
    final /* synthetic */ DiskLruCache$Entry this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Entry$newSource$1(g0 g0Var, DiskLruCache diskLruCache, DiskLruCache$Entry diskLruCache$Entry) {
        super(g0Var);
        this.this$0 = diskLruCache;
        this.this$1 = diskLruCache$Entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // l9.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.closed) {
            return;
        }
        this.closed = true;
        DiskLruCache diskLruCache = this.this$0;
        DiskLruCache$Entry diskLruCache$Entry = this.this$1;
        synchronized (diskLruCache) {
            try {
                diskLruCache$Entry.setLockingSourceCount$okhttp(diskLruCache$Entry.getLockingSourceCount() - 1);
                if (diskLruCache$Entry.getLockingSourceCount() == 0 && diskLruCache$Entry.getZombie()) {
                    diskLruCache.removeEntry$okhttp(diskLruCache$Entry);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
