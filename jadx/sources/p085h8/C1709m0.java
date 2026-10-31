package p085h8;

import java.util.concurrent.atomic.AtomicReference;
import p150n9.InterfaceC2560a;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.m0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1709m0 implements InterfaceC2560a {

    /* JADX INFO: renamed from: b */
    public final AtomicReference f4432b;

    /* JADX INFO: renamed from: c */
    public final int f4433c;

    public C1709m0(AtomicReference atomicReference, int i10) {
        this.f4432b = atomicReference;
        this.f4433c = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p150n9.InterfaceC2560a
    /* JADX INFO: renamed from: a */
    public final void mo2835a(InterfaceC3587d interfaceC3587d) {
        C1713o0 c1713o0;
        C1711n0 c1711n0 = new C1711n0(interfaceC3587d);
        interfaceC3587d.mo2808f(c1711n0);
        loop0: while (true) {
            C1713o0 c1713o1 = (C1713o0) this.f4432b.get();
            if (c1713o1 == null || c1713o1.m2838d()) {
                C1713o0 c1713o2 = new C1713o0(this.f4432b, this.f4433c);
                AtomicReference atomicReference = this.f4432b;
                while (true) {
                    if (atomicReference.compareAndSet(c1713o1, c1713o2)) {
                        c1713o0 = c1713o2;
                    } else if (atomicReference.get() != c1713o1) {
                    }
                }
            } else {
                c1713o0 = c1713o1;
            }
            AtomicReference atomicReference2 = c1713o0.f4449d;
            while (true) {
                C1711n0[] c1711n0Arr = (C1711n0[]) atomicReference2.get();
                if (c1711n0Arr == C1713o0.f4446k) {
                    break;
                }
                int length = c1711n0Arr.length;
                C1711n0[] c1711n0Arr2 = new C1711n0[length + 1];
                System.arraycopy(c1711n0Arr, 0, c1711n0Arr2, 0, length);
                c1711n0Arr2[length] = c1711n0;
                do {
                    if (atomicReference2.compareAndSet(c1711n0Arr, c1711n0Arr2)) {
                        break loop0;
                    }
                } while (atomicReference2.get() == c1711n0Arr);
            }
        }
        if (c1711n0.get() == Long.MIN_VALUE) {
            c1713o0.m2839h(c1711n0);
        } else {
            c1711n0.f4439c = c1713o0;
        }
        c1713o0.m2837c();
    }
}
