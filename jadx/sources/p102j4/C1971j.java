package p102j4;

import java.util.AbstractMap;
import java.util.Objects;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1971j extends AbstractC1966e {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C1972k f5365d;

    public C1971j(C1972k c1972k) {
        this.f5365d = c1972k;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        C1972k c1972k = this.f5365d;
        AbstractC2587b.m4041h(i10, c1972k.f5368g);
        Object[] objArr = c1972k.f5367f;
        int i11 = i10 * 2;
        Object obj = objArr[i11];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i11 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5365d.f5368g;
    }
}
