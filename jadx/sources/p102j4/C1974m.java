package p102j4;

import java.util.Objects;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1974m extends AbstractC1966e {

    /* JADX INFO: renamed from: d */
    public final transient Object[] f5371d;

    /* JADX INFO: renamed from: e */
    public final transient int f5372e;

    /* JADX INFO: renamed from: f */
    public final transient int f5373f;

    public C1974m(int i10, int i11, Object[] objArr) {
        this.f5371d = objArr;
        this.f5372e = i10;
        this.f5373f = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        AbstractC2587b.m4041h(i10, this.f5373f);
        Object obj = this.f5371d[(i10 * 2) + this.f5372e];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5373f;
    }
}
