package p139m8;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p033c8.C1013c;
import p033c8.EnumC1012b;
import p242x7.AbstractC3593j;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: m8.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2418f extends AbstractC3593j {

    /* JADX INFO: renamed from: c */
    public final RunnableC2417e f6561c;

    /* JADX INFO: renamed from: d */
    public final C2419g f6562d;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f6563e = new AtomicBoolean();

    /* JADX INFO: renamed from: b */
    public final C1013c f6560b = new C1013c(1);

    public C2418f(RunnableC2417e runnableC2417e) {
        C2419g c2419g;
        C2419g c2419g2;
        this.f6561c = runnableC2417e;
        if (runnableC2417e.f6556d.f1018c) {
            c2419g2 = C2420h.f6567d;
        } else {
            do {
                if (runnableC2417e.f6555c.isEmpty()) {
                    c2419g = new C2419g(runnableC2417e.f6559g);
                    runnableC2417e.f6556d.m1221a(c2419g);
                    break;
                }
                c2419g = (C2419g) runnableC2417e.f6555c.poll();
            } while (c2419g == null);
            c2419g2 = c2419g;
        }
        this.f6562d = c2419g2;
    }

    @Override // p242x7.AbstractC3593j
    /* JADX INFO: renamed from: a */
    public final InterfaceC3762a mo3778a(Runnable runnable, TimeUnit timeUnit) {
        if (this.f6560b.f1018c) {
            return EnumC1012b.f1015b;
        }
        return this.f6562d.m3782c(runnable, TimeUnit.NANOSECONDS, this.f6560b);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f6563e.compareAndSet(false, true)) {
            this.f6560b.dispose();
            RunnableC2417e runnableC2417e = this.f6561c;
            runnableC2417e.getClass();
            long jNanoTime = System.nanoTime() + runnableC2417e.f6554b;
            C2419g c2419g = this.f6562d;
            c2419g.f6564d = jNanoTime;
            runnableC2417e.f6555c.offer(c2419g);
        }
    }
}
