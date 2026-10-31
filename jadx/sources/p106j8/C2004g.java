package p106j8;

import com.bumptech.glide.AbstractC1031d;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p033c8.EnumC1011a;
import p047e0.C1357g;
import p054e8.InterfaceC1503f;
import p054e8.InterfaceC1504g;
import p129l8.C2219a;
import p129l8.C2220b;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2004g extends AtomicInteger implements InterfaceC3762a, InterfaceC3591h {

    /* JADX INFO: renamed from: p */
    public static final C2003f[] f5459p = new C2003f[0];

    /* JADX INFO: renamed from: q */
    public static final C2003f[] f5460q = new C2003f[0];

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f5461b;

    /* JADX INFO: renamed from: c */
    public final C1357g f5462c;

    /* JADX INFO: renamed from: e */
    public final int f5464e;

    /* JADX INFO: renamed from: f */
    public volatile InterfaceC1503f f5465f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f5466g;

    /* JADX INFO: renamed from: i */
    public volatile boolean f5468i;

    /* JADX INFO: renamed from: k */
    public InterfaceC3762a f5470k;

    /* JADX INFO: renamed from: l */
    public long f5471l;

    /* JADX INFO: renamed from: m */
    public long f5472m;

    /* JADX INFO: renamed from: n */
    public int f5473n;

    /* JADX INFO: renamed from: o */
    public int f5474o;

    /* JADX INFO: renamed from: h */
    public final C3000b f5467h = new C3000b();

    /* JADX INFO: renamed from: d */
    public final int f5463d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: j */
    public final AtomicReference f5469j = new AtomicReference(f5459p);

    public C2004g(InterfaceC3591h interfaceC3591h, C1357g c1357g, int i10) {
        this.f5461b = interfaceC3591h;
        this.f5462c = c1357g;
        this.f5464e = i10;
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        if (this.f5466g) {
            return;
        }
        this.f5466g = true;
        m3092f();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f5470k, interfaceC3762a)) {
            this.f5470k = interfaceC3762a;
            this.f5461b.mo2819b(this);
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m3090c() {
        if (!this.f5468i) {
            if (((Throwable) this.f5467h.get()) == null) {
                return false;
            }
            m3091d();
            C3000b c3000b = this.f5467h;
            c3000b.getClass();
            Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
            if (thM4814b != AbstractC3002d.f8445a) {
                this.f5461b.onError(thM4814b);
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m3091d() {
        C2003f[] c2003fArr;
        this.f5470k.dispose();
        AtomicReference atomicReference = this.f5469j;
        C2003f[] c2003fArr2 = (C2003f[]) atomicReference.get();
        C2003f[] c2003fArr3 = f5460q;
        if (c2003fArr2 == c2003fArr3 || (c2003fArr = (C2003f[]) atomicReference.getAndSet(c2003fArr3)) == c2003fArr3) {
            return false;
        }
        for (C2003f c2003f : c2003fArr) {
            c2003f.getClass();
            EnumC1011a.m1215a(c2003f);
        }
        return true;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f5468i) {
            return;
        }
        this.f5468i = true;
        if (m3091d()) {
            C3000b c3000b = this.f5467h;
            c3000b.getClass();
            Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
            if (thM4814b == null || thM4814b == AbstractC3002d.f8445a) {
                return;
            }
            AbstractC0000a.m18s(thM4814b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        if (this.f5466g) {
            return;
        }
        try {
            AbstractC3590g abstractC3590g = (AbstractC3590g) this.f5462c.apply(obj);
            if (this.f5463d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        int i10 = this.f5474o;
                        if (i10 == this.f5463d) {
                            throw null;
                        }
                        this.f5474o = i10 + 1;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (abstractC3590g instanceof Callable) {
                try {
                    Object objCall = ((Callable) abstractC3590g).call();
                    if (objCall != null) {
                        if (get() == 0 && compareAndSet(0, 1)) {
                            this.f5461b.mo2820e(objCall);
                            if (decrementAndGet() != 0) {
                                m3093g();
                            }
                        } else {
                            InterfaceC1503f c2220b = this.f5465f;
                            if (c2220b == null) {
                                c2220b = this.f5463d == Integer.MAX_VALUE ? new C2220b(this.f5464e) : new C2219a(this.f5463d);
                                this.f5465f = c2220b;
                            }
                            if (c2220b.offer(objCall)) {
                                if (getAndIncrement() != 0) {
                                    return;
                                }
                                m3093g();
                            } else {
                                onError(new IllegalStateException("Scalar queue full?!"));
                            }
                        }
                    }
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    C3000b c3000b = this.f5467h;
                    c3000b.getClass();
                    AbstractC3002d.m4813a(c3000b, th2);
                    m3092f();
                }
                if (this.f5463d == Integer.MAX_VALUE) {
                    return;
                }
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
            long j10 = this.f5471l;
            this.f5471l = 1 + j10;
            C2003f c2003f = new C2003f(this, j10);
            AtomicReference atomicReference = this.f5469j;
            while (true) {
                C2003f[] c2003fArr = (C2003f[]) atomicReference.get();
                if (c2003fArr == f5460q) {
                    EnumC1011a.m1215a(c2003f);
                    return;
                }
                int length = c2003fArr.length;
                C2003f[] c2003fArr2 = new C2003f[length + 1];
                System.arraycopy(c2003fArr, 0, c2003fArr2, 0, length);
                c2003fArr2[length] = c2003f;
                do {
                    if (atomicReference.compareAndSet(c2003fArr, c2003fArr2)) {
                        abstractC3590g.m5719c(c2003f);
                        return;
                    }
                } while (atomicReference.get() == c2003fArr);
            }
        } catch (Throwable th4) {
            AbstractC1031d.m1292v(th4);
            this.f5470k.dispose();
            onError(th4);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m3092f() {
        if (getAndIncrement() == 0) {
            m3093g();
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m3093g() {
        InterfaceC3591h interfaceC3591h = this.f5461b;
        int iAddAndGet = 1;
        while (!m3090c()) {
            InterfaceC1503f interfaceC1503f = this.f5465f;
            if (interfaceC1503f != null) {
                while (!m3090c()) {
                    Object objPoll = interfaceC1503f.poll();
                    if (objPoll != null) {
                        interfaceC3591h.mo2820e(objPoll);
                    } else if (objPoll == null) {
                    }
                }
                return;
            }
            boolean z9 = this.f5466g;
            InterfaceC1503f interfaceC1503f2 = this.f5465f;
            C2003f[] c2003fArr = (C2003f[]) this.f5469j.get();
            int length = c2003fArr.length;
            if (this.f5463d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z9 && ((interfaceC1503f2 == null || interfaceC1503f2.isEmpty()) && length == 0)) {
                C3000b c3000b = this.f5467h;
                c3000b.getClass();
                Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                if (thM4814b != AbstractC3002d.f8445a) {
                    if (thM4814b == null) {
                        interfaceC3591h.mo2818a();
                        return;
                    } else {
                        interfaceC3591h.onError(thM4814b);
                        return;
                    }
                }
                return;
            }
            boolean z10 = false;
            if (length != 0) {
                long j10 = this.f5472m;
                int i10 = this.f5473n;
                if (length <= i10 || c2003fArr[i10].f5454b != j10) {
                    if (length <= i10) {
                        i10 = 0;
                    }
                    for (int i11 = 0; i11 < length && c2003fArr[i10].f5454b != j10; i11++) {
                        i10++;
                        if (i10 == length) {
                            i10 = 0;
                        }
                    }
                    this.f5473n = i10;
                    this.f5472m = c2003fArr[i10].f5454b;
                }
                int i12 = 0;
                boolean z11 = false;
                while (i12 < length) {
                    if (m3090c()) {
                        return;
                    }
                    C2003f c2003f = c2003fArr[i10];
                    while (!m3090c()) {
                        InterfaceC1504g interfaceC1504g = c2003f.f5457e;
                        if (interfaceC1504g != null) {
                            do {
                                try {
                                    Object objPoll2 = interfaceC1504g.poll();
                                    if (objPoll2 != null) {
                                        interfaceC3591h.mo2820e(objPoll2);
                                    } else if (objPoll2 == null) {
                                    }
                                } catch (Throwable th2) {
                                    AbstractC1031d.m1292v(th2);
                                    EnumC1011a.m1215a(c2003f);
                                    C3000b c3000b2 = this.f5467h;
                                    c3000b2.getClass();
                                    AbstractC3002d.m4813a(c3000b2, th2);
                                    if (m3090c()) {
                                        return;
                                    }
                                    m3094h(c2003f);
                                    i12++;
                                    z11 = true;
                                }
                            } while (!m3090c());
                            return;
                        }
                        boolean z12 = c2003f.f5456d;
                        InterfaceC1504g interfaceC1504g2 = c2003f.f5457e;
                        if (z12 && (interfaceC1504g2 == null || interfaceC1504g2.isEmpty())) {
                            m3094h(c2003f);
                            if (m3090c()) {
                                return;
                            } else {
                                z11 = true;
                            }
                        }
                        i10++;
                        if (i10 == length) {
                            i10 = 0;
                        }
                        i12++;
                    }
                    return;
                }
                this.f5473n = i10;
                this.f5472m = c2003fArr[i10].f5454b;
                z10 = z11;
            }
            if (!z10) {
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else if (this.f5463d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: h */
    public final void m3094h(C2003f c2003f) {
        C2003f[] c2003fArr;
        while (true) {
            AtomicReference atomicReference = this.f5469j;
            C2003f[] c2003fArr2 = (C2003f[]) atomicReference.get();
            int length = c2003fArr2.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c2003fArr2[i10] == c2003f) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c2003fArr = f5459p;
            } else {
                C2003f[] c2003fArr3 = new C2003f[length - 1];
                System.arraycopy(c2003fArr2, 0, c2003fArr3, 0, i10);
                System.arraycopy(c2003fArr2, i10 + 1, c2003fArr3, i10, (length - i10) - 1);
                c2003fArr = c2003fArr3;
            }
            while (!atomicReference.compareAndSet(c2003fArr2, c2003fArr)) {
                if (atomicReference.get() != c2003fArr2) {
                }
            }
            return;
        }
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        if (this.f5466g) {
            AbstractC0000a.m18s(th);
            return;
        }
        C3000b c3000b = this.f5467h;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
        } else {
            this.f5466g = true;
            m3092f();
        }
    }
}
