package p095i8;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.C1013c;
import p033c8.EnumC1011a;
import p050e3.C1461d;
import p085h8.C1727z;
import p129l8.C2220b;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;
import p242x7.InterfaceC3589f;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1777b extends AtomicReference implements InterfaceC3762a, InterfaceC3589f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4670b = 1;

    /* JADX INFO: renamed from: c */
    public final Object f4671c;

    public C1777b(InterfaceC3589f interfaceC3589f) {
        this.f4671c = interfaceC3589f;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        InterfaceC3762a interfaceC3762a;
        switch (this.f4670b) {
            case 0:
                Object obj = get();
                EnumC1011a enumC1011a = EnumC1011a.f1013b;
                if (obj == enumC1011a || (interfaceC3762a = (InterfaceC3762a) getAndSet(enumC1011a)) == enumC1011a) {
                    return;
                }
                try {
                    ((InterfaceC3589f) this.f4671c).mo237a();
                    if (interfaceC3762a != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (interfaceC3762a != null) {
                        interfaceC3762a.dispose();
                    }
                }
            default:
                C1727z c1727z = (C1727z) this.f4671c;
                int i10 = c1727z.f4503c;
                AtomicInteger atomicInteger = c1727z.f4506f;
                c1727z.f4505e.m1222b(this);
                if (c1727z.get() == 0) {
                    if (c1727z.compareAndSet(0, 1)) {
                        boolean z9 = atomicInteger.decrementAndGet() == 0;
                        C2220b c2220b = (C2220b) c1727z.f4509i.get();
                        if (!z9 || (c2220b != null && !c2220b.isEmpty())) {
                            if (i10 != Integer.MAX_VALUE) {
                                c1727z.f4510j.mo2811d(1L);
                            }
                            if (c1727z.decrementAndGet() == 0) {
                                return;
                            }
                            c1727z.m2851h();
                            return;
                        }
                        C3000b c3000b = c1727z.f4507g;
                        c3000b.getClass();
                        Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                        InterfaceC3587d interfaceC3587d = c1727z.f4502b;
                        if (thM4814b != null) {
                            interfaceC3587d.onError(thM4814b);
                            return;
                        } else {
                            interfaceC3587d.mo2804a();
                            return;
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                if (i10 != Integer.MAX_VALUE) {
                    c1727z.f4510j.mo2811d(1L);
                }
                c1727z.m2850c();
                return;
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public void mo238b(InterfaceC3762a interfaceC3762a) {
        EnumC1011a.m1218d(this, interfaceC3762a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public void mo239c(Object obj) {
        C2220b c2220bM2852i;
        C1727z c1727z = (C1727z) this.f4671c;
        c1727z.f4505e.m1222b(this);
        if (c1727z.get() == 0) {
            if (c1727z.compareAndSet(0, 1)) {
                boolean z9 = c1727z.f4506f.decrementAndGet() == 0;
                if (c1727z.f4504d.get() != 0) {
                    c1727z.f4502b.mo2807e(obj);
                    C2220b c2220b = (C2220b) c1727z.f4509i.get();
                    if (z9 && (c2220b == null || c2220b.isEmpty())) {
                        C3000b c3000b = c1727z.f4507g;
                        c3000b.getClass();
                        Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                        InterfaceC3587d interfaceC3587d = c1727z.f4502b;
                        if (thM4814b != null) {
                            interfaceC3587d.onError(thM4814b);
                            return;
                        } else {
                            interfaceC3587d.mo2804a();
                            return;
                        }
                    }
                    C1461d.m2516p(c1727z.f4504d, 1L);
                    if (c1727z.f4503c != Integer.MAX_VALUE) {
                        c1727z.f4510j.mo2811d(1L);
                    }
                } else {
                    C2220b c2220bM2852i2 = c1727z.m2852i();
                    synchronized (c2220bM2852i2) {
                        c2220bM2852i2.offer(obj);
                    }
                }
                if (c1727z.decrementAndGet() == 0) {
                    return;
                }
            } else {
                c2220bM2852i = c1727z.m2852i();
                synchronized (c2220bM2852i) {
                    c2220bM2852i.offer(obj);
                }
                c1727z.f4506f.decrementAndGet();
                if (c1727z.getAndIncrement() != 0) {
                    return;
                }
            }
        } else {
            c2220bM2852i = c1727z.m2852i();
            synchronized (c2220bM2852i) {
                c2220bM2852i.offer(obj);
                c1727z.f4506f.decrementAndGet();
                if (c1727z.getAndIncrement() != 0) {
                    return;
                }
            }
        }
        c1727z.m2851h();
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        switch (this.f4670b) {
            case 0:
                EnumC1011a.m1215a(this);
                break;
            default:
                EnumC1011a.m1215a(this);
                break;
        }
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        InterfaceC3762a interfaceC3762a;
        switch (this.f4670b) {
            case 0:
                Object obj = get();
                EnumC1011a enumC1011a = EnumC1011a.f1013b;
                if (obj == enumC1011a || (interfaceC3762a = (InterfaceC3762a) getAndSet(enumC1011a)) == enumC1011a) {
                    AbstractC0000a.m18s(th);
                    return;
                }
                try {
                    ((InterfaceC3589f) this.f4671c).onError(th);
                    if (interfaceC3762a != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (interfaceC3762a != null) {
                        interfaceC3762a.dispose();
                    }
                }
            default:
                C1727z c1727z = (C1727z) this.f4671c;
                C1013c c1013c = c1727z.f4505e;
                c1013c.m1222b(this);
                C3000b c3000b = c1727z.f4507g;
                c3000b.getClass();
                if (!AbstractC3002d.m4813a(c3000b, th)) {
                    AbstractC0000a.m18s(th);
                    return;
                }
                c1727z.f4510j.cancel();
                c1013c.dispose();
                c1727z.f4506f.decrementAndGet();
                c1727z.m2850c();
                return;
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        switch (this.f4670b) {
            case 0:
                return C1777b.class.getSimpleName() + "{" + super.toString() + "}";
            default:
                return super.toString();
        }
    }

    public C1777b(C1727z c1727z) {
        this.f4671c = c1727z;
    }
}
