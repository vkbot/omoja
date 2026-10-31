package p085h8;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p242x7.AbstractC3585b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1715p0 extends AbstractC3585b {

    /* JADX INFO: renamed from: c */
    public final AbstractC3585b f4458c;

    /* JADX INFO: renamed from: d */
    public final AtomicReference f4459d;

    /* JADX INFO: renamed from: e */
    public final int f4460e;

    /* JADX INFO: renamed from: f */
    public final C1709m0 f4461f;

    public C1715p0(C1709m0 c1709m0, AbstractC3585b abstractC3585b, AtomicReference atomicReference, int i10) {
        this.f4461f = c1709m0;
        this.f4458c = abstractC3585b;
        this.f4459d = atomicReference;
        this.f4460e = i10;
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        this.f4461f.mo2835a(interfaceC3587d);
    }

    /* JADX INFO: renamed from: f */
    public final void m2840f() {
        C1713o0 c1713o0;
        loop0: while (true) {
            AtomicReference atomicReference = this.f4459d;
            c1713o0 = (C1713o0) atomicReference.get();
            if (c1713o0 != null && !c1713o0.m2838d()) {
                break;
            }
            C1713o0 c1713o1 = new C1713o0(atomicReference, this.f4460e);
            do {
                if (atomicReference.compareAndSet(c1713o0, c1713o1)) {
                    c1713o0 = c1713o1;
                    break loop0;
                }
            } while (atomicReference.get() == c1713o0);
        }
        AtomicBoolean atomicBoolean = c1713o0.f4450e;
        if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
            return;
        }
        this.f4458c.m5714d(c1713o0);
    }
}
