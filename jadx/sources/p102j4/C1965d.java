package p102j4;

import java.util.Iterator;
import java.util.ListIterator;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1965d extends AbstractC1966e {

    /* JADX INFO: renamed from: d */
    public final transient int f5351d;

    /* JADX INFO: renamed from: e */
    public final transient int f5352e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ AbstractC1966e f5353f;

    public C1965d(AbstractC1966e abstractC1966e, int i10, int i11) {
        this.f5353f = abstractC1966e;
        this.f5351d = i10;
        this.f5352e = i11;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: e */
    public final Object[] mo3059e() {
        return this.f5353f.mo3059e();
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: f */
    public final int mo3060f() {
        return this.f5353f.mo3061g() + this.f5351d + this.f5352e;
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: g */
    public final int mo3061g() {
        return this.f5353f.mo3061g() + this.f5351d;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        AbstractC2587b.m4041h(i10, this.f5352e);
        return this.f5353f.get(i10 + this.f5351d);
    }

    @Override // p102j4.AbstractC1962a
    /* JADX INFO: renamed from: h */
    public final boolean mo3062h() {
        return true;
    }

    @Override // p102j4.AbstractC1966e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // p102j4.AbstractC1966e, java.util.List
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final AbstractC1966e subList(int i10, int i11) {
        AbstractC2587b.m4044k(i10, i11, this.f5352e);
        int i12 = this.f5351d;
        return this.f5353f.subList(i10 + i12, i11 + i12);
    }

    @Override // p102j4.AbstractC1966e, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5352e;
    }

    @Override // p102j4.AbstractC1966e, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
        return listIterator(i10);
    }
}
