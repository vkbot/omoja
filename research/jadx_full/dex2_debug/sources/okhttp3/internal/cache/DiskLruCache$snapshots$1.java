package okhttp3.internal.cache;

import j1.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import n0.b;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00030\u0001J\t\u0010\t\u001a\u00020\nH\u0096\u0002J\r\u0010\u000b\u001a\u00060\u0002R\u00020\u0003H\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016R$\u0010\u0004\u001a\u0018\u0012\u0014\u0012\u0012 \u0006*\b\u0018\u00010\u0005R\u00020\u00030\u0005R\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0018\u00010\u0002R\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0018\u00010\u0002R\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"okhttp3/internal/cache/DiskLruCache$snapshots$1", HttpUrl.FRAGMENT_ENCODE_SET, "Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Lokhttp3/internal/cache/DiskLruCache;", "delegate", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "kotlin.jvm.PlatformType", "nextSnapshot", "removeSnapshot", "hasNext", HttpUrl.FRAGMENT_ENCODE_SET, "next", "remove", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$snapshots$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1065:1\n1#2:1066\n*E\n"})
public final class DiskLruCache$snapshots$1 implements Iterator<DiskLruCache$Snapshot>, KMutableIterator {
    private final Iterator<DiskLruCache$Entry> delegate;
    private DiskLruCache$Snapshot nextSnapshot;
    private DiskLruCache$Snapshot removeSnapshot;
    final /* synthetic */ DiskLruCache this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DiskLruCache$snapshots$1(DiskLruCache diskLruCache) {
        this.this$0 = diskLruCache;
        Iterator<DiskLruCache$Entry> it = new ArrayList(diskLruCache.getLruEntries$okhttp().values()).iterator();
        it.getClass();
        this.delegate = it;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        DiskLruCache$Snapshot diskLruCache$SnapshotSnapshot$okhttp;
        if (this.nextSnapshot != null) {
            return true;
        }
        DiskLruCache diskLruCache = this.this$0;
        synchronized (diskLruCache) {
            if (diskLruCache.getClosed()) {
                return false;
            }
            while (this.delegate.hasNext()) {
                DiskLruCache$Entry next = this.delegate.next();
                if (next != null && (diskLruCache$SnapshotSnapshot$okhttp = next.snapshot$okhttp()) != null) {
                    this.nextSnapshot = diskLruCache$SnapshotSnapshot$okhttp;
                    return true;
                }
            }
            Unit unit = Unit.INSTANCE;
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    /* JADX INFO: renamed from: next, reason: avoid collision after fix types in other method */
    public DiskLruCache$Snapshot next2() {
        if (!hasNext()) {
            b.x();
            return null;
        }
        DiskLruCache$Snapshot diskLruCache$Snapshot = this.nextSnapshot;
        this.removeSnapshot = diskLruCache$Snapshot;
        this.nextSnapshot = null;
        diskLruCache$Snapshot.getClass();
        return diskLruCache$Snapshot;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public void remove() {
        DiskLruCache$Snapshot diskLruCache$Snapshot = this.removeSnapshot;
        if (diskLruCache$Snapshot == null) {
            i.l("remove() before next()");
            return;
        }
        try {
            this.this$0.remove(diskLruCache$Snapshot.getKey());
        } catch (IOException unused) {
        } finally {
            this.removeSnapshot = null;
        }
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ DiskLruCache$Snapshot next() {
        return next2();
    }
}
