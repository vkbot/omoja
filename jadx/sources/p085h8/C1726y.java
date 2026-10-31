package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p023b8.InterfaceC0929c;
import p030c5.C0990e;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p054e8.InterfaceC1503f;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p129l8.C2220b;
import p150n9.InterfaceC2560a;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1726y extends AtomicInteger implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: r */
    public static final C1725x[] f4484r = new C1725x[0];

    /* JADX INFO: renamed from: s */
    public static final C1725x[] f4485s = new C1725x[0];

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f4486b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC0929c f4487c;

    /* JADX INFO: renamed from: d */
    public final int f4488d;

    /* JADX INFO: renamed from: e */
    public final int f4489e;

    /* JADX INFO: renamed from: f */
    public volatile InterfaceC1503f f4490f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f4491g;

    /* JADX INFO: renamed from: h */
    public final C3000b f4492h = new C3000b();

    /* JADX INFO: renamed from: i */
    public volatile boolean f4493i;

    /* JADX INFO: renamed from: j */
    public final AtomicReference f4494j;

    /* JADX INFO: renamed from: k */
    public final AtomicLong f4495k;

    /* JADX INFO: renamed from: l */
    public InterfaceC2561b f4496l;

    /* JADX INFO: renamed from: m */
    public long f4497m;

    /* JADX INFO: renamed from: n */
    public long f4498n;

    /* JADX INFO: renamed from: o */
    public int f4499o;

    /* JADX INFO: renamed from: p */
    public int f4500p;

    /* JADX INFO: renamed from: q */
    public final int f4501q;

    public C1726y(InterfaceC3587d interfaceC3587d, C0990e c0990e, int i10, int i11) {
        AtomicReference atomicReference = new AtomicReference();
        this.f4494j = atomicReference;
        this.f4495k = new AtomicLong();
        this.f4486b = interfaceC3587d;
        this.f4487c = c0990e;
        this.f4488d = i10;
        this.f4489e = i11;
        this.f4501q = Math.max(1, i10 >> 1);
        atomicReference.lazySet(f4484r);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        if (this.f4491g) {
            return;
        }
        this.f4491g = true;
        m2845c();
    }

    /* JADX INFO: renamed from: b */
    public final boolean m2844b() {
        if (this.f4493i) {
            InterfaceC1503f interfaceC1503f = this.f4490f;
            if (interfaceC1503f != null) {
                interfaceC1503f.clear();
                return true;
            }
        } else {
            if (this.f4492h.get() == null) {
                return false;
            }
            InterfaceC1503f interfaceC1503f2 = this.f4490f;
            if (interfaceC1503f2 != null) {
                interfaceC1503f2.clear();
            }
            C3000b c3000b = this.f4492h;
            c3000b.getClass();
            Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
            if (thM4814b != AbstractC3002d.f8445a) {
                this.f4486b.onError(thM4814b);
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: c */
    public final void m2845c() {
        if (getAndIncrement() == 0) {
            m2846h();
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        InterfaceC1503f interfaceC1503f;
        C1725x[] c1725xArr;
        if (this.f4493i) {
            return;
        }
        this.f4493i = true;
        this.f4496l.cancel();
        AtomicReference atomicReference = this.f4494j;
        C1725x[] c1725xArr2 = (C1725x[]) atomicReference.get();
        C1725x[] c1725xArr3 = f4485s;
        if (c1725xArr2 != c1725xArr3 && (c1725xArr = (C1725x[]) atomicReference.getAndSet(c1725xArr3)) != c1725xArr3) {
            for (C1725x c1725x : c1725xArr) {
                c1725x.getClass();
                EnumC2757f.m4276a(c1725x);
            }
            C3000b c3000b = this.f4492h;
            c3000b.getClass();
            Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
            if (thM4814b != null && thM4814b != AbstractC3002d.f8445a) {
                AbstractC0000a.m18s(thM4814b);
            }
        }
        if (getAndIncrement() != 0 || (interfaceC1503f = this.f4490f) == null) {
            return;
        }
        interfaceC1503f.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10)) {
            C1461d.m2502a(this.f4495k, j10);
            m2845c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (this.f4491g) {
            return;
        }
        try {
            Object objApply = this.f4487c.apply(obj);
            AbstractC1314b.m2356a(objApply, "The mapper returned a null Publisher");
            InterfaceC2560a interfaceC2560a = (InterfaceC2560a) objApply;
            if (interfaceC2560a instanceof Callable) {
                try {
                    Object objCall = ((Callable) interfaceC2560a).call();
                    if (objCall == null) {
                        if (this.f4488d == Integer.MAX_VALUE || this.f4493i) {
                            return;
                        }
                        int i10 = this.f4500p + 1;
                        this.f4500p = i10;
                        int i11 = this.f4501q;
                        if (i10 == i11) {
                            this.f4500p = 0;
                            this.f4496l.mo2811d(i11);
                            return;
                        }
                        return;
                    }
                    if (get() == 0 && compareAndSet(0, 1)) {
                        long j10 = this.f4495k.get();
                        InterfaceC1503f interfaceC1503fM2847i = this.f4490f;
                        if (j10 == 0 || !(interfaceC1503fM2847i == null || interfaceC1503fM2847i.isEmpty())) {
                            if (interfaceC1503fM2847i == null) {
                                interfaceC1503fM2847i = m2847i();
                            }
                            if (!interfaceC1503fM2847i.offer(objCall)) {
                                onError(new IllegalStateException("Scalar queue full?!"));
                                return;
                            }
                        } else {
                            this.f4486b.mo2807e(objCall);
                            if (j10 != Long.MAX_VALUE) {
                                this.f4495k.decrementAndGet();
                            }
                            if (this.f4488d != Integer.MAX_VALUE && !this.f4493i) {
                                int i12 = this.f4500p + 1;
                                this.f4500p = i12;
                                int i13 = this.f4501q;
                                if (i12 == i13) {
                                    this.f4500p = 0;
                                    this.f4496l.mo2811d(i13);
                                }
                            }
                        }
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    } else if (!m2847i().offer(objCall)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    } else if (getAndIncrement() != 0) {
                        return;
                    }
                    m2846h();
                    return;
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    C3000b c3000b = this.f4492h;
                    c3000b.getClass();
                    AbstractC3002d.m4813a(c3000b, th);
                    m2845c();
                    return;
                }
            }
            long j11 = this.f4497m;
            this.f4497m = 1 + j11;
            C1725x c1725x = new C1725x(this, j11);
            AtomicReference atomicReference = this.f4494j;
            while (true) {
                C1725x[] c1725xArr = (C1725x[]) atomicReference.get();
                if (c1725xArr == f4485s) {
                    EnumC2757f.m4276a(c1725x);
                    return;
                }
                int length = c1725xArr.length;
                C1725x[] c1725xArr2 = new C1725x[length + 1];
                System.arraycopy(c1725xArr, 0, c1725xArr2, 0, length);
                c1725xArr2[length] = c1725x;
                do {
                    if (atomicReference.compareAndSet(c1725xArr, c1725xArr2)) {
                        interfaceC2560a.mo2835a(c1725x);
                        return;
                    }
                } while (atomicReference.get() == c1725xArr);
            }
        } catch (Throwable th2) {
            AbstractC1031d.m1292v(th2);
            this.f4496l.cancel();
            onError(th2);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f4496l, interfaceC2561b)) {
            this.f4496l = interfaceC2561b;
            this.f4486b.mo2808f(this);
            if (this.f4493i) {
                return;
            }
            int i10 = this.f4488d;
            if (i10 == Integer.MAX_VALUE) {
                interfaceC2561b.mo2811d(Long.MAX_VALUE);
            } else {
                interfaceC2561b.mo2811d(i10);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0179  */
    /* JADX WARN: Code duplicated, block: B:115:0x0183  */
    /* JADX WARN: Code duplicated, block: B:117:0x0187  */
    /* JADX WARN: Code duplicated, block: B:133:0x0100 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0181 A[EDGE_INSN: B:153:0x0181->B:114:0x0181 BREAK  A[LOOP:3: B:65:0x00dc->B:118:0x0188], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0188 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x013c A[EDGE_INSN: B:160:0x013c->B:91:0x013c BREAK  A[LOOP:5: B:77:0x00fc->B:85:0x0112], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00de  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:82:0x0107  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112 A[LOOP:5: B:77:0x00fc->B:85:0x0112, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x0142  */
    /* JADX WARN: Code duplicated, block: B:95:0x014b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0155  */
    /* JADX INFO: renamed from: h */
    public final void m2846h() {
        boolean z9;
        long j10;
        long j11;
        boolean z10;
        long j12;
        int i10;
        boolean z11;
        int i11;
        C1725x c1725x;
        Object objPoll;
        InterfaceC1504g interfaceC1504g;
        boolean z12;
        Object obj;
        InterfaceC3587d interfaceC3587d = this.f4486b;
        int iAddAndGet = 1;
        while (!m2844b()) {
            InterfaceC1503f interfaceC1503f = this.f4490f;
            long jAddAndGet = this.f4495k.get();
            boolean z13 = jAddAndGet == Long.MAX_VALUE;
            long j13 = 0;
            if (interfaceC1503f != null) {
                j10 = 0;
                do {
                    long j14 = 0;
                    obj = null;
                    while (true) {
                        if (jAddAndGet == 0) {
                            z9 = true;
                            break;
                        }
                        z9 = true;
                        Object objPoll2 = interfaceC1503f.poll();
                        if (m2844b()) {
                            return;
                        }
                        if (objPoll2 == null) {
                            obj = objPoll2;
                            break;
                        }
                        interfaceC3587d.mo2807e(objPoll2);
                        j10++;
                        j14++;
                        jAddAndGet--;
                        obj = objPoll2;
                    }
                    if (j14 != 0) {
                        jAddAndGet = z13 ? Long.MAX_VALUE : this.f4495k.addAndGet(-j14);
                    }
                    if (jAddAndGet == 0) {
                        break;
                    }
                } while (obj != null);
            } else {
                z9 = true;
                j10 = 0;
            }
            boolean z14 = this.f4491g;
            InterfaceC1503f interfaceC1503f2 = this.f4490f;
            C1725x[] c1725xArr = (C1725x[]) this.f4494j.get();
            int length = c1725xArr.length;
            if (z14 && ((interfaceC1503f2 == null || interfaceC1503f2.isEmpty()) && length == 0)) {
                C3000b c3000b = this.f4492h;
                c3000b.getClass();
                Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                if (thM4814b != AbstractC3002d.f8445a) {
                    if (thM4814b == null) {
                        interfaceC3587d.mo2804a();
                        return;
                    } else {
                        interfaceC3587d.onError(thM4814b);
                        return;
                    }
                }
                return;
            }
            if (length != 0) {
                long j15 = this.f4498n;
                int i12 = this.f4499o;
                if (length > i12) {
                    j12 = 1;
                    if (c1725xArr[i12].f4476b != j15) {
                    }
                    i10 = i12;
                    z11 = false;
                    i11 = 0;
                    while (true) {
                        if (i11 < length) {
                            c1725xArr = c1725xArr;
                            j11 = j13;
                            break;
                        }
                        if (m2844b()) {
                            return;
                        }
                        c1725x = c1725xArr[i10];
                        objPoll = null;
                        while (!m2844b()) {
                            interfaceC1504g = c1725x.f4481g;
                            if (interfaceC1504g == null) {
                                c1725xArr = c1725xArr;
                                j11 = j13;
                            } else {
                                j11 = j13;
                                while (jAddAndGet != j11) {
                                    try {
                                        objPoll = interfaceC1504g.poll();
                                        if (objPoll == null) {
                                            break;
                                        }
                                        interfaceC3587d.mo2807e(objPoll);
                                        if (m2844b()) {
                                            return;
                                        }
                                        jAddAndGet -= j12;
                                        j13 += j12;
                                    } catch (Throwable th) {
                                        AbstractC1031d.m1292v(th);
                                        EnumC2757f.m4276a(c1725x);
                                        C3000b c3000b2 = this.f4492h;
                                        c3000b2.getClass();
                                        AbstractC3002d.m4813a(c3000b2, th);
                                        this.f4496l.cancel();
                                        if (m2844b()) {
                                            return;
                                        }
                                        m2848j(c1725x);
                                        i11++;
                                        c1725xArr = c1725xArr;
                                        z11 = z9;
                                    }
                                }
                                if (j13 != j11) {
                                    if (z13) {
                                        jAddAndGet = Long.MAX_VALUE;
                                    } else {
                                        jAddAndGet = this.f4495k.addAndGet(-j13);
                                    }
                                    c1725x.m2843b(j13);
                                } else {
                                    c1725xArr = c1725xArr;
                                }
                                if (jAddAndGet == j11 && objPoll != null) {
                                    c1725xArr = c1725xArr;
                                    j13 = j11;
                                }
                            }
                            z12 = c1725x.f4480f;
                            InterfaceC1504g interfaceC1504g2 = c1725x.f4481g;
                            if (z12 && (interfaceC1504g2 == null || interfaceC1504g2.isEmpty())) {
                                m2848j(c1725x);
                                if (m2844b()) {
                                    return;
                                }
                                j10 += j12;
                                z11 = z9;
                            }
                            if (jAddAndGet == j11) {
                                break;
                            }
                            i10++;
                            if (i10 == length) {
                                i10 = 0;
                            }
                            i11++;
                            c1725xArr = c1725xArr;
                            j13 = j11;
                        }
                        return;
                    }
                    z10 = z11;
                    this.f4499o = i10;
                    this.f4498n = c1725xArr[i10].f4476b;
                } else {
                    j12 = 1;
                }
                if (length <= i12) {
                    i12 = 0;
                }
                for (int i13 = 0; i13 < length && c1725xArr[i12].f4476b != j15; i13++) {
                    i12++;
                    if (i12 == length) {
                        i12 = 0;
                    }
                }
                this.f4499o = i12;
                this.f4498n = c1725xArr[i12].f4476b;
                i10 = i12;
                z11 = false;
                i11 = 0;
                while (true) {
                    if (i11 < length) {
                        c1725xArr = c1725xArr;
                        j11 = j13;
                        break;
                    }
                    if (m2844b()) {
                        return;
                    }
                    c1725x = c1725xArr[i10];
                    objPoll = null;
                    while (!m2844b()) {
                        interfaceC1504g = c1725x.f4481g;
                        if (interfaceC1504g == null) {
                            c1725xArr = c1725xArr;
                            j11 = j13;
                        } else {
                            j11 = j13;
                            while (jAddAndGet != j11) {
                                objPoll = interfaceC1504g.poll();
                                if (objPoll == null) {
                                    break;
                                    break;
                                }
                                interfaceC3587d.mo2807e(objPoll);
                                if (m2844b()) {
                                    return;
                                }
                                jAddAndGet -= j12;
                                j13 += j12;
                            }
                            if (j13 != j11) {
                                if (z13) {
                                    jAddAndGet = this.f4495k.addAndGet(-j13);
                                } else {
                                    jAddAndGet = Long.MAX_VALUE;
                                }
                                c1725x.m2843b(j13);
                            } else {
                                c1725xArr = c1725xArr;
                            }
                            if (jAddAndGet == j11) {
                            }
                        }
                        z12 = c1725x.f4480f;
                        InterfaceC1504g interfaceC1504g3 = c1725x.f4481g;
                        if (z12) {
                            m2848j(c1725x);
                            if (m2844b()) {
                                return;
                            }
                            j10 += j12;
                            z11 = z9;
                        }
                        if (jAddAndGet == j11) {
                            break;
                            break;
                        }
                        i10++;
                        if (i10 == length) {
                            i10 = 0;
                        }
                        i11++;
                        c1725xArr = c1725xArr;
                        j13 = j11;
                    }
                    return;
                }
                z10 = z11;
                this.f4499o = i10;
                this.f4498n = c1725xArr[i10].f4476b;
            } else {
                j11 = 0;
                z10 = false;
            }
            long j16 = j10;
            if (j16 != j11 && !this.f4493i) {
                this.f4496l.mo2811d(j16);
            }
            if (!z10 && (iAddAndGet = addAndGet(-iAddAndGet)) == 0) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final InterfaceC1503f m2847i() {
        InterfaceC1503f c2220b = this.f4490f;
        if (c2220b == null) {
            c2220b = this.f4488d == Integer.MAX_VALUE ? new C2220b(this.f4489e) : new C2219a(this.f4488d);
            this.f4490f = c2220b;
        }
        return c2220b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: j */
    public final void m2848j(C1725x c1725x) {
        C1725x[] c1725xArr;
        while (true) {
            AtomicReference atomicReference = this.f4494j;
            C1725x[] c1725xArr2 = (C1725x[]) atomicReference.get();
            int length = c1725xArr2.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c1725xArr2[i10] == c1725x) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c1725xArr = f4484r;
            } else {
                C1725x[] c1725xArr3 = new C1725x[length - 1];
                System.arraycopy(c1725xArr2, 0, c1725xArr3, 0, i10);
                System.arraycopy(c1725xArr2, i10 + 1, c1725xArr3, i10, (length - i10) - 1);
                c1725xArr = c1725xArr3;
            }
            while (!atomicReference.compareAndSet(c1725xArr2, c1725xArr)) {
                if (atomicReference.get() != c1725xArr2) {
                }
            }
            return;
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        if (this.f4491g) {
            AbstractC0000a.m18s(th);
            return;
        }
        C3000b c3000b = this.f4492h;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
        } else {
            this.f4491g = true;
            m2845c();
        }
    }
}
