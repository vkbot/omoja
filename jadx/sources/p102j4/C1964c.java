package p102j4;

import java.util.ListIterator;
import p142n0.C2467b;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: j4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1964c extends AbstractC1978q implements ListIterator {

    /* JADX INFO: renamed from: b */
    public final int f5348b;

    /* JADX INFO: renamed from: c */
    public int f5349c;

    /* JADX INFO: renamed from: d */
    public final AbstractC1966e f5350d;

    public C1964c(AbstractC1966e abstractC1966e, int i10) {
        int size = abstractC1966e.size();
        AbstractC2587b.m4043j(i10, size);
        this.f5348b = size;
        this.f5349c = i10;
        this.f5350d = abstractC1966e;
    }

    /* JADX INFO: renamed from: a */
    public final Object m3066a(int i10) {
        return this.f5350d.get(i10);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f5349c < this.f5348b;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f5349c > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            C2467b.m3834x();
            return null;
        }
        int i10 = this.f5349c;
        this.f5349c = i10 + 1;
        return m3066a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f5349c;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            C2467b.m3834x();
            return null;
        }
        int i10 = this.f5349c - 1;
        this.f5349c = i10;
        return m3066a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f5349c - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
