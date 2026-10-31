package p102j4;

import ai.onnxruntime.AbstractC0074a;
import java.util.Iterator;
import p142n0.C2467b;

/* JADX INFO: renamed from: j4.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1977p extends AbstractC1968g {

    /* JADX INFO: renamed from: e */
    public final transient Object f5388e;

    public C1977p(Object obj) {
        this.f5388e = obj;
    }

    @Override // p102j4.AbstractC1968g, p102j4.AbstractC1962a
    /* JADX INFO: renamed from: a */
    public final AbstractC1966e mo3057a() {
        Object[] objArr = {this.f5388e};
        C1964c c1964c = AbstractC1966e.f5354c;
        for (int i10 = 0; i10 < 1; i10++) {
            if (objArr[i10] == null) {
                C2467b.m3828n(AbstractC0074a.m154e(i10, "at index "));
                return null;
            }
        }
        return AbstractC1966e.m3068i(1, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f5388e.equals(obj);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: d */
    public final int mo3058d(int i10, Object[] objArr) {
        objArr[i10] = this.f5388e;
        return i10 + 1;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return false;
    }

    @Override // p102j4.AbstractC1968g, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f5388e.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C1969h(this.f5388e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f5388e.toString() + ']';
    }
}
