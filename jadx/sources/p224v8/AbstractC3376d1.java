package p224v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p010a9.C0051m;
import p010a9.C0056r;

/* JADX INFO: renamed from: v8.d1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC3376d1 extends C0051m implements InterfaceC3390i0, InterfaceC3426u0, Function1 {

    /* JADX INFO: renamed from: e */
    public C3388h1 f9857e;

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: b */
    public final boolean mo5292b() {
        return true;
    }

    @Override // p224v8.InterfaceC3426u0
    /* JADX INFO: renamed from: c */
    public final C3394j1 mo5293c() {
        return null;
    }

    @Override // p224v8.InterfaceC3390i0
    public final void dispose() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C3388h1 c3388h1M5294i = m5294i();
        while (true) {
            Object objM5341w = c3388h1M5294i.m5341w();
            if (objM5341w instanceof AbstractC3376d1) {
                if (objM5341w != this) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C3388h1.f9881b;
                C3396k0 c3396k0 = AbstractC3366a0.f9849i;
                while (!atomicReferenceFieldUpdater2.compareAndSet(c3388h1M5294i, objM5341w, c3396k0)) {
                    if (atomicReferenceFieldUpdater2.get(c3388h1M5294i) != objM5341w) {
                    }
                }
                return;
            }
            if (!(objM5341w instanceof InterfaceC3426u0) || ((InterfaceC3426u0) objM5341w).mo5293c() == null) {
                return;
            }
            while (true) {
                Object objM122f = m122f();
                if (objM122f instanceof C0056r) {
                    return;
                }
                if (objM122f == this) {
                    return;
                }
                objM122f.getClass();
                C0051m c0051m = (C0051m) objM122f;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = C0051m.f135d;
                C0056r c0056r = (C0056r) atomicReferenceFieldUpdater3.get(c0051m);
                if (c0056r == null) {
                    c0056r = new C0056r(c0051m);
                    atomicReferenceFieldUpdater3.lazySet(c0051m, c0056r);
                }
                do {
                    atomicReferenceFieldUpdater = C0051m.f133b;
                    if (atomicReferenceFieldUpdater.compareAndSet(this, objM122f, c0056r)) {
                        c0051m.m120d();
                        return;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == objM122f);
            }
        }
    }

    public InterfaceC3439z0 getParent() {
        return m5294i();
    }

    /* JADX INFO: renamed from: i */
    public final C3388h1 m5294i() {
        C3388h1 c3388h1 = this.f9857e;
        if (c3388h1 != null) {
            return c3388h1;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    /* JADX INFO: renamed from: j */
    public abstract void mo5295j(Throwable th);

    @Override // p010a9.C0051m
    public final String toString() {
        return getClass().getSimpleName() + '@' + AbstractC3366a0.m5282a(this) + "[job@" + AbstractC3366a0.m5282a(m5294i()) + ']';
    }
}
