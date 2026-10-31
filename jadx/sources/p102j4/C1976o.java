package p102j4;

import com.bumptech.glide.AbstractC1030c;
import java.util.Iterator;

/* JADX INFO: renamed from: j4.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1976o extends AbstractC1968g {

    /* JADX INFO: renamed from: j */
    public static final Object[] f5381j;

    /* JADX INFO: renamed from: k */
    public static final C1976o f5382k;

    /* JADX INFO: renamed from: e */
    public final transient Object[] f5383e;

    /* JADX INFO: renamed from: f */
    public final transient int f5384f;

    /* JADX INFO: renamed from: g */
    public final transient Object[] f5385g;

    /* JADX INFO: renamed from: h */
    public final transient int f5386h;

    /* JADX INFO: renamed from: i */
    public final transient int f5387i;

    static {
        Object[] objArr = new Object[0];
        f5381j = objArr;
        f5382k = new C1976o(objArr, objArr, 0, 0, 0);
    }

    public C1976o(Object[] objArr, Object[] objArr2, int i10, int i11, int i12) {
        this.f5383e = objArr;
        this.f5384f = i10;
        this.f5385g = objArr2;
        this.f5386h = i11;
        this.f5387i = i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f5385g;
            if (objArr.length != 0) {
                int iM1262s = AbstractC1030c.m1262s(obj.hashCode());
                while (true) {
                    int i10 = iM1262s & this.f5386h;
                    Object obj2 = objArr[i10];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iM1262s = i10 + 1;
                }
            }
        }
        return false;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: d */
    public final int mo3058d(int i10, Object[] objArr) {
        Object[] objArr2 = this.f5383e;
        int i11 = this.f5387i;
        System.arraycopy(objArr2, 0, objArr, i10, i11);
        return i10 + i11;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: e */
    public final Object[] mo3059e() {
        return this.f5383e;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: f */
    public final int mo3060f() {
        return this.f5387i;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: g */
    public final int mo3061g() {
        return 0;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return false;
    }

    @Override // p102j4.AbstractC1968g, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f5384f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return mo3057a().listIterator(0);
    }

    @Override // p102j4.AbstractC1968g
    /* JADX INFO: renamed from: k */
    public final AbstractC1966e mo3072k() {
        return AbstractC1966e.m3068i(this.f5387i, this.f5383e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f5387i;
    }
}
