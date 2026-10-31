package p085h8;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p050e3.C1461d;
import p129l8.C2220b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1700i extends AbstractC1698h {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f4406d = 1;

    /* JADX INFO: renamed from: e */
    public Throwable f4407e;

    /* JADX INFO: renamed from: f */
    public volatile boolean f4408f;

    /* JADX INFO: renamed from: g */
    public final AtomicInteger f4409g;

    /* JADX INFO: renamed from: h */
    public final Object f4410h;

    public C1700i(InterfaceC3587d interfaceC3587d, int i10) {
        super(interfaceC3587d);
        this.f4410h = new C2220b(i10);
        this.f4409g = new AtomicInteger();
    }

    @Override // p085h8.AbstractC1698h
    /* JADX INFO: renamed from: c */
    public final void mo2823c() {
        switch (this.f4406d) {
            case 0:
                m2831g();
                break;
            default:
                m2831g();
                break;
        }
    }

    @Override // p085h8.AbstractC1698h
    /* JADX INFO: renamed from: e */
    public final void mo2824e() {
        switch (this.f4406d) {
            case 0:
                if (this.f4409g.getAndIncrement() == 0) {
                    ((C2220b) this.f4410h).clear();
                }
                break;
            default:
                if (this.f4409g.getAndIncrement() == 0) {
                    ((AtomicReference) this.f4410h).lazySet(null);
                }
                break;
        }
    }

    @Override // p085h8.AbstractC1698h
    /* JADX INFO: renamed from: f */
    public final boolean mo2825f(Throwable th) {
        switch (this.f4406d) {
            case 0:
                if (this.f4408f || this.f4393c.m1224c()) {
                    return false;
                }
                this.f4407e = th;
                this.f4408f = true;
                m2831g();
                return true;
            default:
                if (this.f4408f || this.f4393c.m1224c()) {
                    return false;
                }
                this.f4407e = th;
                this.f4408f = true;
                m2831g();
                return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:79:0x0100  */
    /* JADX WARN: Code duplicated, block: B:82:0x0108  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ea A[SYNTHETIC] */
    /* JADX INFO: renamed from: g */
    public final void m2831g() {
        boolean z9;
        Throwable th;
        switch (this.f4406d) {
            case 0:
                if (this.f4409g.getAndIncrement() == 0) {
                    InterfaceC3587d interfaceC3587d = this.f4392b;
                    C2220b c2220b = (C2220b) this.f4410h;
                    int iAddAndGet = 1;
                    do {
                        long j10 = get();
                        for (long j11 = 0; j11 != j10; j11++) {
                            if (this.f4393c.m1224c()) {
                                c2220b.clear();
                            } else {
                                boolean z10 = this.f4408f;
                                Object objPoll = c2220b.poll();
                                boolean z11 = objPoll == null;
                                if (z10 && z11) {
                                    Throwable th2 = this.f4407e;
                                    if (th2 != null) {
                                        m2822b(th2);
                                    } else {
                                        m2821a();
                                    }
                                } else if (z11) {
                                    if (j11 == j10) {
                                        if (this.f4393c.m1224c()) {
                                            c2220b.clear();
                                        } else {
                                            z9 = this.f4408f;
                                            boolean zIsEmpty = c2220b.isEmpty();
                                            if (z9 && zIsEmpty) {
                                                th = this.f4407e;
                                                if (th != null) {
                                                    m2822b(th);
                                                } else {
                                                    m2821a();
                                                }
                                            }
                                        }
                                    }
                                    if (j11 != 0) {
                                        C1461d.m2516p(this, j11);
                                    }
                                    iAddAndGet = this.f4409g.addAndGet(-iAddAndGet);
                                } else {
                                    interfaceC3587d.mo2807e(objPoll);
                                }
                            }
                            break;
                        }
                        if (j11 == j10) {
                            if (this.f4393c.m1224c()) {
                                c2220b.clear();
                            } else {
                                z9 = this.f4408f;
                                boolean zIsEmpty2 = c2220b.isEmpty();
                                if (z9) {
                                    th = this.f4407e;
                                    if (th != null) {
                                        m2822b(th);
                                    } else {
                                        m2821a();
                                    }
                                }
                            }
                        }
                        if (j11 != 0) {
                            C1461d.m2516p(this, j11);
                        }
                        iAddAndGet = this.f4409g.addAndGet(-iAddAndGet);
                        break;
                    } while (iAddAndGet != 0);
                }
                break;
            default:
                if (this.f4409g.getAndIncrement() == 0) {
                    InterfaceC3587d interfaceC3587d2 = this.f4392b;
                    AtomicReference atomicReference = (AtomicReference) this.f4410h;
                    int iAddAndGet2 = 1;
                    do {
                        long j12 = get();
                        long j13 = 0;
                        while (true) {
                            if (j13 != j12) {
                                if (this.f4393c.m1224c()) {
                                    atomicReference.lazySet(null);
                                    break;
                                } else {
                                    boolean z12 = this.f4408f;
                                    Object andSet = atomicReference.getAndSet(null);
                                    boolean z13 = andSet == null;
                                    if (z12 && z13) {
                                        Throwable th3 = this.f4407e;
                                        if (th3 != null) {
                                            m2822b(th3);
                                        } else {
                                            m2821a();
                                        }
                                        break;
                                    } else if (!z13) {
                                        interfaceC3587d2.mo2807e(andSet);
                                        j13++;
                                    }
                                }
                            }
                        }
                        if (j13 == j12) {
                            if (this.f4393c.m1224c()) {
                                atomicReference.lazySet(null);
                            } else {
                                boolean z14 = this.f4408f;
                                boolean z15 = atomicReference.get() == null;
                                if (z14 && z15) {
                                    Throwable th4 = this.f4407e;
                                    if (th4 != null) {
                                        m2822b(th4);
                                    } else {
                                        m2821a();
                                    }
                                }
                            }
                        }
                        if (j13 != 0) {
                            C1461d.m2516p(this, j13);
                        }
                        iAddAndGet2 = this.f4409g.addAndGet(-iAddAndGet2);
                        break;
                    } while (iAddAndGet2 != 0);
                }
                break;
        }
    }

    public C1700i(InterfaceC3587d interfaceC3587d) {
        super(interfaceC3587d);
        this.f4410h = new AtomicReference();
        this.f4409g = new AtomicInteger();
    }
}
