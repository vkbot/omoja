package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import l9.e0;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.DiskLruCache$Editor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\rR\u0014\u0010\u000e\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lokhttp3/Cache$RealCacheRequest;", "Lokhttp3/internal/cache/CacheRequest;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "Lokhttp3/internal/cache/DiskLruCache;", "editor", "<init>", "(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V", HttpUrl.FRAGMENT_ENCODE_SET, "abort", "()V", "Ll9/e0;", "body", "()Ll9/e0;", "Lokhttp3/internal/cache/DiskLruCache$Editor;", "cacheOut", "Ll9/e0;", HttpUrl.FRAGMENT_ENCODE_SET, "done", "Z", "getDone", "()Z", "setDone", "(Z)V", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Cache$RealCacheRequest implements CacheRequest {
    private final e0 body;
    private final e0 cacheOut;
    private boolean done;
    private final DiskLruCache$Editor editor;
    final /* synthetic */ Cache this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cache$RealCacheRequest(Cache cache, DiskLruCache$Editor diskLruCache$Editor) {
        diskLruCache$Editor.getClass();
        this.this$0 = cache;
        this.editor = diskLruCache$Editor;
        e0 e0VarNewSink = diskLruCache$Editor.newSink(1);
        this.cacheOut = e0VarNewSink;
        this.body = new Cache$RealCacheRequest$1(cache, this, e0VarNewSink);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ DiskLruCache$Editor access$getEditor$p(Cache$RealCacheRequest cache$RealCacheRequest) {
        return cache$RealCacheRequest.editor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.cache.CacheRequest
    public void abort() {
        Cache cache = this.this$0;
        synchronized (cache) {
            if (this.done) {
                return;
            }
            this.done = true;
            cache.setWriteAbortCount$okhttp(cache.getWriteAbortCount() + 1);
            Util.closeQuietly(this.cacheOut);
            try {
                this.editor.abort();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // okhttp3.internal.cache.CacheRequest
    /* JADX INFO: renamed from: body, reason: from getter */
    public e0 getBody() {
        return this.body;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean getDone() {
        return this.done;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setDone(boolean z) {
        this.done = z;
    }
}
