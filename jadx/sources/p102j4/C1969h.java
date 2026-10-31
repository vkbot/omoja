package p102j4;

import p142n0.C2467b;

/* JADX INFO: renamed from: j4.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1969h extends AbstractC1978q {

    /* JADX INFO: renamed from: b */
    public boolean f5360b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f5361c;

    public C1969h(Object obj) {
        this.f5361c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f5360b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f5360b) {
            C2467b.m3834x();
            return null;
        }
        this.f5360b = true;
        return this.f5361c;
    }
}
