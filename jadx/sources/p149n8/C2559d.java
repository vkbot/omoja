package p149n8;

import ai.onnxruntime.AbstractC0074a;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p000a.AbstractC0000a;
import p050e3.C1461d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p171p8.AbstractC3002d;
import p171p8.C3000b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: n8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2559d extends AtomicInteger implements InterfaceC3587d, InterfaceC2561b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f7080b;

    /* JADX INFO: renamed from: c */
    public final C3000b f7081c = new C3000b();

    /* JADX INFO: renamed from: d */
    public final AtomicLong f7082d = new AtomicLong();

    /* JADX INFO: renamed from: e */
    public final AtomicReference f7083e = new AtomicReference();

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f7084f = new AtomicBoolean();

    /* JADX INFO: renamed from: g */
    public volatile boolean f7085g;

    public C2559d(InterfaceC3587d interfaceC3587d) {
        this.f7080b = interfaceC3587d;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public final void mo2804a() {
        this.f7085g = true;
        InterfaceC3587d interfaceC3587d = this.f7080b;
        C3000b c3000b = this.f7081c;
        if (getAndIncrement() == 0) {
            c3000b.getClass();
            Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
            if (thM4814b != null) {
                interfaceC3587d.onError(thM4814b);
            } else {
                interfaceC3587d.mo2804a();
            }
        }
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        if (this.f7085g) {
            return;
        }
        EnumC2757f.m4276a(this.f7083e);
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (j10 <= 0) {
            cancel();
            onError(new IllegalArgumentException(AbstractC0074a.m157h(j10, "§3.9 violated: positive request amount required but it was ")));
            return;
        }
        AtomicReference atomicReference = this.f7083e;
        InterfaceC2561b interfaceC2561b = (InterfaceC2561b) atomicReference.get();
        if (interfaceC2561b != null) {
            interfaceC2561b.mo2811d(j10);
            return;
        }
        if (EnumC2757f.m4278c(j10)) {
            AtomicLong atomicLong = this.f7082d;
            C1461d.m2502a(atomicLong, j10);
            InterfaceC2561b interfaceC2561b2 = (InterfaceC2561b) atomicReference.get();
            if (interfaceC2561b2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    interfaceC2561b2.mo2811d(andSet);
                }
            }
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: e */
    public final void mo2807e(Object obj) {
        if (get() == 0 && compareAndSet(0, 1)) {
            InterfaceC3587d interfaceC3587d = this.f7080b;
            interfaceC3587d.mo2807e(obj);
            if (decrementAndGet() != 0) {
                C3000b c3000b = this.f7081c;
                c3000b.getClass();
                Throwable thM4814b = AbstractC3002d.m4814b(c3000b);
                if (thM4814b != null) {
                    interfaceC3587d.onError(thM4814b);
                } else {
                    interfaceC3587d.mo2804a();
                }
            }
        }
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (!this.f7084f.compareAndSet(false, true)) {
            interfaceC2561b.cancel();
            cancel();
            onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
            return;
        }
        this.f7080b.mo2808f(this);
        if (EnumC2757f.m4277b(this.f7083e, interfaceC2561b)) {
            long andSet = this.f7082d.getAndSet(0L);
            if (andSet != 0) {
                interfaceC2561b.mo2811d(andSet);
            }
        }
    }

    @Override // p242x7.InterfaceC3587d
    public final void onError(Throwable th) {
        this.f7085g = true;
        InterfaceC3587d interfaceC3587d = this.f7080b;
        C3000b c3000b = this.f7081c;
        c3000b.getClass();
        if (!AbstractC3002d.m4813a(c3000b, th)) {
            AbstractC0000a.m18s(th);
        } else if (getAndIncrement() == 0) {
            interfaceC3587d.onError(AbstractC3002d.m4814b(c3000b));
        }
    }
}
