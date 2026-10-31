package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0032d;
import p054e8.InterfaceC1501d;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.C3003e;
import p171p8.EnumC3004f;
import p242x7.InterfaceC3587d;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: h8.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1713o0 extends AtomicInteger implements InterfaceC3587d, InterfaceC3762a {

    /* JADX INFO: renamed from: j */
    public static final C1711n0[] f4445j = new C1711n0[0];

    /* JADX INFO: renamed from: k */
    public static final C1711n0[] f4446k = new C1711n0[0];

    /* JADX INFO: renamed from: b */
    public final AtomicReference f4447b;

    /* JADX INFO: renamed from: c */
    public final int f4448c;

    /* JADX INFO: renamed from: g */
    public volatile Serializable f4452g;

    /* JADX INFO: renamed from: h */
    public int f4453h;

    /* JADX INFO: renamed from: i */
    public volatile InterfaceC1504g f4454i;

    /* JADX INFO: renamed from: f */
    public final AtomicReference f4451f = new AtomicReference();

    /* JADX INFO: renamed from: d */
    public final AtomicReference f4449d = new AtomicReference(f4445j);

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f4450e = new AtomicBoolean();

    public C1713o0(AtomicReference atomicReference, int i10) {
        this.f4447b = atomicReference;
        this.f4448c = i10;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f4452g == null) {
            this.f4452g = EnumC3004f.f8447b;
            m2837c();
        }
    }

    /* JADX INFO: renamed from: b */
    public final boolean m2836b(Object obj, boolean z9) {
        int i10 = 0;
        if (obj != null) {
            EnumC3004f enumC3004f = EnumC3004f.f8447b;
            C1711n0[] c1711n0Arr = f4446k;
            AtomicReference atomicReference = this.f4449d;
            AtomicReference atomicReference2 = this.f4447b;
            if (obj != enumC3004f) {
                Throwable th = ((C3003e) obj).f8446b;
                while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                }
                C1711n0[] c1711n0Arr2 = (C1711n0[]) atomicReference.getAndSet(c1711n0Arr);
                if (c1711n0Arr2.length != 0) {
                    int length = c1711n0Arr2.length;
                    while (i10 < length) {
                        c1711n0Arr2[i10].f4438b.onError(th);
                        i10++;
                    }
                } else {
                    AbstractC0000a.m18s(th);
                }
                return true;
            }
            if (z9) {
                while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                }
                C1711n0[] c1711n0Arr3 = (C1711n0[]) atomicReference.getAndSet(c1711n0Arr);
                int length2 = c1711n0Arr3.length;
                while (i10 < length2) {
                    c1711n0Arr3[i10].f4438b.mo2804a();
                    i10++;
                }
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public final void m2837c() {
        boolean z9;
        Object objPoll;
        C1711n0[] c1711n0Arr;
        Object objPoll2;
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference atomicReference = this.f4449d;
        boolean z10 = true;
        C1711n0[] c1711n0Arr2 = (C1711n0[]) atomicReference.get();
        int iAddAndGet = 1;
        while (true) {
            Object obj = this.f4452g;
            InterfaceC1504g interfaceC1504g = this.f4454i;
            boolean z11 = (interfaceC1504g == null || interfaceC1504g.isEmpty()) ? z10 : false;
            if (m2836b(obj, z11)) {
                return;
            }
            if (z11) {
                z9 = z10;
            } else {
                int length = c1711n0Arr2.length;
                int i10 = 0;
                long jMin = Long.MAX_VALUE;
                for (C1711n0 c1711n0 : c1711n0Arr2) {
                    long j10 = c1711n0.get();
                    if (j10 != Long.MIN_VALUE) {
                        jMin = Math.min(jMin, j10 - c1711n0.f4440d);
                    } else {
                        i10++;
                    }
                }
                long j11 = 1;
                if (length == i10) {
                    Object obj2 = this.f4452g;
                    try {
                        objPoll = interfaceC1504g.poll();
                    } catch (Throwable th) {
                        AbstractC1031d.m1292v(th);
                        ((InterfaceC2561b) this.f4451f.get()).cancel();
                        C3003e c3003e = new C3003e(th);
                        this.f4452g = c3003e;
                        obj2 = c3003e;
                        objPoll = null;
                    }
                    if (m2836b(obj2, objPoll == null ? z10 : false)) {
                        return;
                    }
                    if (this.f4453h != z10) {
                        ((InterfaceC2561b) this.f4451f.get()).mo2811d(1L);
                    }
                    z9 = z10;
                    c1711n0Arr = c1711n0Arr2;
                } else {
                    int i11 = 0;
                    while (true) {
                        long j12 = i11;
                        if (j12 < jMin) {
                            Object obj3 = this.f4452g;
                            try {
                                objPoll2 = interfaceC1504g.poll();
                            } catch (Throwable th2) {
                                AbstractC1031d.m1292v(th2);
                                ((InterfaceC2561b) this.f4451f.get()).cancel();
                                C3003e c3003e2 = new C3003e(th2);
                                this.f4452g = c3003e2;
                                obj3 = c3003e2;
                                objPoll2 = null;
                            }
                            boolean z12 = objPoll2 == null ? z10 : false;
                            if (m2836b(obj3, z12)) {
                                return;
                            }
                            if (z12) {
                                z11 = z12;
                            } else {
                                int length2 = c1711n0Arr2.length;
                                int i12 = 0;
                                boolean z13 = false;
                                while (i12 < length2) {
                                    long j13 = j11;
                                    C1711n0 c1711n1 = c1711n0Arr2[i12];
                                    long j14 = c1711n1.get();
                                    if (j14 != Long.MIN_VALUE) {
                                        if (j14 != Long.MAX_VALUE) {
                                            c1711n1.f4440d += j13;
                                        }
                                        c1711n1.f4438b.mo2807e(objPoll2);
                                    } else {
                                        z13 = true;
                                    }
                                    i12++;
                                    c1711n0Arr2 = c1711n0Arr2;
                                    j11 = j13;
                                }
                                C1711n0[] c1711n0Arr3 = c1711n0Arr2;
                                long j15 = j11;
                                i11++;
                                C1711n0[] c1711n0Arr4 = (C1711n0[]) atomicReference.get();
                                if (z13 || c1711n0Arr4 != c1711n0Arr3) {
                                    c1711n0Arr2 = c1711n0Arr4;
                                    z10 = true;
                                } else {
                                    c1711n0Arr2 = c1711n0Arr3;
                                    z11 = z12;
                                    j11 = j15;
                                    z10 = true;
                                }
                            }
                        }
                        c1711n0Arr = c1711n0Arr2;
                        if (i11 > 0) {
                            z9 = true;
                            if (this.f4453h != 1) {
                                ((InterfaceC2561b) this.f4451f.get()).mo2811d(j12);
                            }
                        } else {
                            z9 = true;
                        }
                        if (jMin == 0 || z11) {
                        }
                        z10 = z9;
                    }
                }
                c1711n0Arr2 = c1711n0Arr;
                z10 = z9;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            c1711n0Arr2 = (C1711n0[]) atomicReference.get();
            z10 = z9;
        }
    }

    /* JADX INFO: renamed from: d */
    public final boolean m2838d() {
        return this.f4449d.get() == f4446k;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.f4449d;
        Object obj = atomicReference2.get();
        Object obj2 = f4446k;
        if (obj == obj2 || ((C1711n0[]) atomicReference2.getAndSet(obj2)) == obj2) {
            return;
        }
        do {
            atomicReference = this.f4447b;
            if (atomicReference.compareAndSet(this, null)) {
                break;
            }
        } while (atomicReference.get() == this);
        EnumC2757f.m4276a(this.f4451f);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4453h != 0 || this.f4454i.offer(obj)) {
            m2837c();
        } else {
            onError(new C0032d("Prefetch queue is full?!"));
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4277b(this.f4451f, interfaceC2561b)) {
            if (interfaceC2561b instanceof InterfaceC1501d) {
                InterfaceC1501d interfaceC1501d = (InterfaceC1501d) interfaceC2561b;
                int iMo1220h = interfaceC1501d.mo1220h(3);
                if (iMo1220h == 1) {
                    this.f4453h = iMo1220h;
                    this.f4454i = interfaceC1501d;
                    this.f4452g = EnumC3004f.f8447b;
                    m2837c();
                    return;
                }
                if (iMo1220h == 2) {
                    this.f4453h = iMo1220h;
                    this.f4454i = interfaceC1501d;
                    interfaceC2561b.mo2811d(this.f4448c);
                    return;
                }
            }
            this.f4454i = new C2219a(this.f4448c);
            interfaceC2561b.mo2811d(this.f4448c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: h */
    public final void m2839h(C1711n0 c1711n0) {
        C1711n0[] c1711n0Arr;
        while (true) {
            AtomicReference atomicReference = this.f4449d;
            C1711n0[] c1711n0Arr2 = (C1711n0[]) atomicReference.get();
            int length = c1711n0Arr2.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c1711n0Arr2[i10].equals(c1711n0)) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c1711n0Arr = f4445j;
            } else {
                C1711n0[] c1711n0Arr3 = new C1711n0[length - 1];
                System.arraycopy(c1711n0Arr2, 0, c1711n0Arr3, 0, i10);
                System.arraycopy(c1711n0Arr2, i10 + 1, c1711n0Arr3, i10, (length - i10) - 1);
                c1711n0Arr = c1711n0Arr3;
            }
            while (!atomicReference.compareAndSet(c1711n0Arr2, c1711n0Arr)) {
                if (atomicReference.get() != c1711n0Arr2) {
                }
            }
            return;
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4452g != null) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4452g = new C3003e(th);
            m2837c();
        }
    }
}
