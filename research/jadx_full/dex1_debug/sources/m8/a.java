package m8;

import h8.h0;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends x7.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c8.c f3702b;
    public final c8.c c;
    public final c8.c d;
    public final c e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f3703f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(c cVar) {
        this.e = cVar;
        c8.c cVar2 = new c8.c(0);
        this.f3702b = cVar2;
        c8.c cVar3 = new c8.c(1);
        this.c = cVar3;
        c8.c cVar4 = new c8.c(0);
        this.d = cVar4;
        cVar4.a(cVar2);
        cVar4.a(cVar3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final z7.a a(Runnable runnable, TimeUnit timeUnit) {
        if (this.f3703f) {
            return c8.b.f543b;
        }
        return this.e.c(runnable, TimeUnit.NANOSECONDS, this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.j
    public final void b(h0 h0Var) {
        if (this.f3703f) {
            return;
        }
        this.e.c(h0Var, TimeUnit.MILLISECONDS, this.f3702b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.f3703f) {
            return;
        }
        this.f3703f = true;
        this.d.dispose();
    }
}
