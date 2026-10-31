package okhttp3.internal.cache;

import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import l9.e0;
import l9.g0;
import l9.h;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0018\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\tJ\r\u0010\u0014\u001a\u00020\u0007¢\u0006\u0004\b\u0014\u0010\tR\u001e\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "entry", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", HttpUrl.FRAGMENT_ENCODE_SET, "detach$okhttp", "()V", "detach", HttpUrl.FRAGMENT_ENCODE_SET, "index", "Ll9/g0;", "newSource", "(I)Ll9/g0;", "Ll9/e0;", "newSink", "(I)Ll9/e0;", "commit", "abort", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "getEntry$okhttp", "()Lokhttp3/internal/cache/DiskLruCache$Entry;", HttpUrl.FRAGMENT_ENCODE_SET, "written", "[Z", "getWritten$okhttp", "()[Z", HttpUrl.FRAGMENT_ENCODE_SET, "done", "Z", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DiskLruCache$Editor {
    private boolean done;
    private final DiskLruCache$Entry entry;
    final /* synthetic */ DiskLruCache this$0;
    private final boolean[] written;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiskLruCache$Editor(DiskLruCache diskLruCache, DiskLruCache$Entry diskLruCache$Entry) {
        diskLruCache$Entry.getClass();
        this.this$0 = diskLruCache;
        this.entry = diskLruCache$Entry;
        this.written = diskLruCache$Entry.getReadable() ? null : new boolean[diskLruCache.getValueCount()];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void abort() {
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache) {
            try {
                if (this.done) {
                    throw new IllegalStateException("Check failed.");
                }
                if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                    diskLruCache.completeEdit$okhttp(this, false);
                }
                this.done = true;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void commit() {
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache) {
            try {
                if (this.done) {
                    throw new IllegalStateException("Check failed.");
                }
                if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                    diskLruCache.completeEdit$okhttp(this, true);
                }
                this.done = true;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void detach$okhttp() {
        if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
            if (DiskLruCache.access$getCivilizedFileSystem$p(this.this$0)) {
                this.this$0.completeEdit$okhttp(this, false);
            } else {
                this.entry.setZombie$okhttp(true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getEntry$okhttp, reason: from getter */
    public final DiskLruCache$Entry getEntry() {
        return this.entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: getWritten$okhttp, reason: from getter */
    public final boolean[] getWritten() {
        return this.written;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e0 newSink(int index) {
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache) {
            try {
                if (this.done) {
                    throw new IllegalStateException("Check failed.");
                }
                if (!Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                    return new h();
                }
                if (!this.entry.getReadable()) {
                    boolean[] zArr = this.written;
                    zArr.getClass();
                    zArr[index] = true;
                }
                try {
                    return new FaultHidingSink(diskLruCache.getFileSystem().sink(this.entry.getDirtyFiles$okhttp().get(index)), new DiskLruCache$Editor$newSink$1$1(diskLruCache, this));
                } catch (FileNotFoundException unused) {
                    return new h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final g0 newSource(int index) {
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache) {
            if (this.done) {
                throw new IllegalStateException("Check failed.");
            }
            g0 g0VarSource = null;
            if (!this.entry.getReadable() || !Intrinsics.areEqual(this.entry.getCurrentEditor(), this) || this.entry.getZombie()) {
                return null;
            }
            try {
                g0VarSource = diskLruCache.getFileSystem().source(this.entry.getCleanFiles$okhttp().get(index));
            } catch (FileNotFoundException unused) {
            }
            return g0VarSource;
        }
    }
}
