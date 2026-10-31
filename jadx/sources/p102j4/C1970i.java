package p102j4;

import java.util.Objects;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1970i extends AbstractC1966e {

    /* JADX INFO: renamed from: f */
    public static final C1970i f5362f = new C1970i(new Object[0], 0);

    /* JADX INFO: renamed from: d */
    public final transient Object[] f5363d;

    /* JADX INFO: renamed from: e */
    public final transient int f5364e;

    public C1970i(Object[] objArr, int i10) {
        this.f5363d = objArr;
        this.f5364e = i10;
    }

    @Override // p102j4.AbstractC1966e, p102j4.AbstractC1962a
    /* JADX INFO: renamed from: d */
    public final int mo3058d(int i10, Object[] objArr) {
        Object[] objArr2 = this.f5363d;
        int i11 = this.f5364e;
        System.arraycopy(objArr2, 0, objArr, i10, i11);
        return i10 + i11;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: e */
    public final Object[] mo3059e() {
        return this.f5363d;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: f */
    public final int mo3060f() {
        return this.f5364e;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: g */
    public final int mo3061g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        AbstractC2587b.m4041h(i10, this.f5364e);
        Object obj = this.f5363d[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5364e;
    }
}
