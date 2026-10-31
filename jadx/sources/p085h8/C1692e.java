package p085h8;

import ai.onnxruntime.AbstractC0074a;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p009a8.C0034f;
import p045d8.AbstractC1314b;
import p050e3.C1461d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1692e extends AtomicInteger implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public InterfaceC2561b f4371b;

    /* JADX INFO: renamed from: c */
    public long f4372c;

    /* JADX INFO: renamed from: d */
    public final AtomicReference f4373d = new AtomicReference();

    /* JADX INFO: renamed from: e */
    public final AtomicLong f4374e = new AtomicLong();

    /* JADX INFO: renamed from: f */
    public final AtomicLong f4375f = new AtomicLong();

    /* JADX INFO: renamed from: g */
    public volatile boolean f4376g;

    /* JADX INFO: renamed from: h */
    public boolean f4377h;

    /* JADX INFO: renamed from: i */
    public final AbstractC1686b f4378i;

    /* JADX INFO: renamed from: j */
    public long f4379j;

    public C1692e(AbstractC1686b abstractC1686b) {
        this.f4378i = abstractC1686b;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        long j10 = this.f4379j;
        if (j10 != 0) {
            this.f4379j = 0L;
            m2816h(j10);
        }
        AbstractC1686b abstractC1686b = this.f4378i;
        abstractC1686b.f4342l = false;
        abstractC1686b.mo2805b();
    }

    /* JADX INFO: renamed from: b */
    public final void m2814b() {
        if (getAndIncrement() != 0) {
            return;
        }
        m2815c();
    }

    /* JADX INFO: renamed from: c */
    public final void m2815c() {
        int iAddAndGet = 1;
        long jM2503b = 0;
        InterfaceC2561b interfaceC2561b = null;
        do {
            InterfaceC2561b interfaceC2561b2 = (InterfaceC2561b) this.f4373d.get();
            if (interfaceC2561b2 != null) {
                interfaceC2561b2 = (InterfaceC2561b) this.f4373d.getAndSet(null);
            }
            long andSet = this.f4374e.get();
            if (andSet != 0) {
                andSet = this.f4374e.getAndSet(0L);
            }
            long andSet2 = this.f4375f.get();
            if (andSet2 != 0) {
                andSet2 = this.f4375f.getAndSet(0L);
            }
            InterfaceC2561b interfaceC2561b3 = this.f4371b;
            if (this.f4376g) {
                if (interfaceC2561b3 != null) {
                    interfaceC2561b3.cancel();
                    this.f4371b = null;
                }
                if (interfaceC2561b2 != null) {
                    interfaceC2561b2.cancel();
                }
            } else {
                long jM2503b2 = this.f4372c;
                if (jM2503b2 != Long.MAX_VALUE) {
                    jM2503b2 = C1461d.m2503b(jM2503b2, andSet);
                    if (jM2503b2 != Long.MAX_VALUE) {
                        jM2503b2 -= andSet2;
                        if (jM2503b2 < 0) {
                            AbstractC0000a.m18s(new C0034f(AbstractC0074a.m157h(jM2503b2, "More produced than requested: ")));
                            jM2503b2 = 0;
                        }
                    }
                    this.f4372c = jM2503b2;
                }
                if (interfaceC2561b2 != null) {
                    if (interfaceC2561b3 != null) {
                        interfaceC2561b3.cancel();
                    }
                    this.f4371b = interfaceC2561b2;
                    if (jM2503b2 != 0) {
                        jM2503b = C1461d.m2503b(jM2503b, jM2503b2);
                        interfaceC2561b = interfaceC2561b2;
                    }
                } else if (interfaceC2561b3 != null && andSet != 0) {
                    jM2503b = C1461d.m2503b(jM2503b, andSet);
                    interfaceC2561b = interfaceC2561b3;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jM2503b != 0) {
            interfaceC2561b.mo2811d(jM2503b);
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f4376g) {
            return;
        }
        this.f4376g = true;
        m2814b();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (!EnumC2757f.m4278c(j10) || this.f4377h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            C1461d.m2502a(this.f4374e, j10);
            m2814b();
            return;
        }
        long j11 = this.f4372c;
        if (j11 != Long.MAX_VALUE) {
            long jM2503b = C1461d.m2503b(j11, j10);
            this.f4372c = jM2503b;
            if (jM2503b == Long.MAX_VALUE) {
                this.f4377h = true;
            }
        }
        InterfaceC2561b interfaceC2561b = this.f4371b;
        if (decrementAndGet() != 0) {
            m2815c();
        }
        if (interfaceC2561b != null) {
            interfaceC2561b.mo2811d(j10);
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        this.f4379j++;
        this.f4378i.mo2809h(obj);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        m2817i(interfaceC2561b);
    }

    /* JADX INFO: renamed from: h */
    public final void m2816h(long j10) {
        if (this.f4377h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            C1461d.m2502a(this.f4375f, j10);
            m2814b();
            return;
        }
        long j11 = this.f4372c;
        if (j11 != Long.MAX_VALUE) {
            long j12 = j11 - j10;
            if (j12 < 0) {
                AbstractC0000a.m18s(new C0034f(AbstractC0074a.m157h(j12, "More produced than requested: ")));
                j12 = 0;
            }
            this.f4372c = j12;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        m2815c();
    }

    /* JADX INFO: renamed from: i */
    public final void m2817i(InterfaceC2561b interfaceC2561b) {
        if (this.f4376g) {
            interfaceC2561b.cancel();
            return;
        }
        AbstractC1314b.m2356a(interfaceC2561b, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            InterfaceC2561b interfaceC2561b2 = (InterfaceC2561b) this.f4373d.getAndSet(interfaceC2561b);
            if (interfaceC2561b2 != null) {
                interfaceC2561b2.cancel();
            }
            m2814b();
            return;
        }
        InterfaceC2561b interfaceC2561b3 = this.f4371b;
        if (interfaceC2561b3 != null) {
            interfaceC2561b3.cancel();
        }
        this.f4371b = interfaceC2561b;
        long j10 = this.f4372c;
        if (decrementAndGet() != 0) {
            m2815c();
        }
        if (j10 != 0) {
            interfaceC2561b.mo2811d(j10);
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        long j10 = this.f4379j;
        if (j10 != 0) {
            this.f4379j = 0L;
            m2816h(j10);
        }
        this.f4378i.mo2806c(th);
    }
}
