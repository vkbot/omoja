package p224v8;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0037b;
import p010a9.C0051m;
import p010a9.C0061w;

/* JADX INFO: renamed from: v8.g1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3385g1 extends AbstractC0037b {

    /* JADX INFO: renamed from: b */
    public final AbstractC3376d1 f9875b;

    /* JADX INFO: renamed from: c */
    public C3394j1 f9876c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3388h1 f9877d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC3426u0 f9878e;

    public C3385g1(AbstractC3376d1 abstractC3376d1, C3388h1 c3388h1, InterfaceC3426u0 interfaceC3426u0) {
        this.f9877d = c3388h1;
        this.f9878e = interfaceC3426u0;
        this.f9875b = abstractC3376d1;
    }

    @Override // p010a9.AbstractC0037b
    /* JADX INFO: renamed from: a */
    public final void mo103a(Object obj, Object obj2) {
        C0051m c0051m = (C0051m) obj;
        boolean z9 = obj2 == null;
        AbstractC3376d1 abstractC3376d1 = this.f9875b;
        Object obj3 = z9 ? abstractC3376d1 : this.f9876c;
        if (obj3 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C0051m.f133b;
            while (!atomicReferenceFieldUpdater.compareAndSet(c0051m, this, obj3)) {
                if (atomicReferenceFieldUpdater.get(c0051m) != this) {
                    return;
                }
            }
            if (z9) {
                C3394j1 c3394j1 = this.f9876c;
                c3394j1.getClass();
                abstractC3376d1.m121e(c3394j1);
            }
        }
    }

    @Override // p010a9.AbstractC0037b
    /* JADX INFO: renamed from: c */
    public final C0061w mo105c(Object obj) {
        if (this.f9877d.m5341w() == this.f9878e) {
            return null;
        }
        return AbstractC0035a.f103d;
    }
}
