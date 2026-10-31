package p102j4;

import java.util.Iterator;

/* JADX INFO: renamed from: j4.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1973l extends AbstractC1968g {

    /* JADX INFO: renamed from: e */
    public final transient C1975n f5369e;

    /* JADX INFO: renamed from: f */
    public final transient C1974m f5370f;

    public C1973l(C1975n c1975n, C1974m c1974m) {
        this.f5369e = c1975n;
        this.f5370f = c1974m;
    }

    @Override // p102j4.AbstractC1968g, p102j4.AbstractC1962a
    /* JADX INFO: renamed from: a */
    public final AbstractC1966e mo3057a() {
        return this.f5370f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f5369e.get(obj) != null;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: d */
    public final int mo3058d(int i10, Object[] objArr) {
        return this.f5370f.mo3058d(i10, objArr);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return this.f5370f.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f5369e.f5380g;
    }
}
