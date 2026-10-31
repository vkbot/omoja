package p102j4;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: j4.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1972k extends AbstractC1968g {

    /* JADX INFO: renamed from: e */
    public final transient C1975n f5366e;

    /* JADX INFO: renamed from: f */
    public final transient Object[] f5367f;

    /* JADX INFO: renamed from: g */
    public final transient int f5368g;

    public C1972k(C1975n c1975n, Object[] objArr, int i10) {
        this.f5366e = c1975n;
        this.f5367f = objArr;
        this.f5368g = i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f5366e.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: d */
    public final int mo3058d(int i10, Object[] objArr) {
        return mo3057a().mo3058d(i10, objArr);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return mo3057a().listIterator(0);
    }

    @Override // p102j4.AbstractC1968g
    /* JADX INFO: renamed from: k */
    public final AbstractC1966e mo3072k() {
        return new C1971j(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f5368g;
    }
}
