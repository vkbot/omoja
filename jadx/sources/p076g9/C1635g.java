package p076g9;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import p096i9.C1800a0;

/* JADX INFO: renamed from: g9.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1635g implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: b */
    public int f4163b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1800a0 f4164c;

    public C1635g(C1800a0 c1800a0) {
        this.f4164c = c1800a0;
        this.f4163b = c1800a0.f4759c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4163b > 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        C1800a0 c1800a0 = this.f4164c;
        int i10 = c1800a0.f4759c;
        int i11 = this.f4163b;
        this.f4163b = i11 - 1;
        return c1800a0.f4761e[i10 - i11];
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
