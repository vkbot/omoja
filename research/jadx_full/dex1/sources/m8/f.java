package m8;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends x7.j {
    public final e c;
    public final g d;
    public final AtomicBoolean e = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c8.c f3711b = new c8.c(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(e eVar) {
        g gVar;
        g gVar2;
        this.c = eVar;
        if (eVar.d.c) {
            gVar2 = h.d;
        } else {
            do {
                if (eVar.c.isEmpty()) {
                    gVar = new g(eVar.f3710g);
                    eVar.d.a(gVar);
                    break;
                }
                gVar = (g) eVar.c.poll();
            } while (gVar == null);
            gVar2 = gVar;
        }
        this.d = gVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final z7.a a(Runnable runnable, TimeUnit timeUnit) {
        if (this.f3711b.c) {
            return c8.b.f543b;
        }
        return this.d.c(runnable, TimeUnit.NANOSECONDS, this.f3711b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.e.compareAndSet(false, true)) {
            this.f3711b.dispose();
            e eVar = this.c;
            eVar.getClass();
            long jNanoTime = System.nanoTime() + eVar.f3708b;
            g gVar = this.d;
            gVar.d = jNanoTime;
            eVar.c.offer(gVar);
        }
    }
}
