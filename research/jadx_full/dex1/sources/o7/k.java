package o7;

import androidx.core.app.NotificationCompat;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c0 f4294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f4295b = new AtomicInteger(-2147483647);
    public volatile n7.f1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(l lVar, c0 c0Var, String str) {
        new u2(this);
        o4.b.i(c0Var, "delegate");
        this.f4294a = c0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u0, o7.n2
    public final void a(n7.f1 f1Var) {
        o4.b.i(f1Var, NotificationCompat.CATEGORY_STATUS);
        synchronized (this) {
            try {
                if (this.f4295b.get() < 0) {
                    this.c = f1Var;
                    this.f4295b.addAndGet(Integer.MAX_VALUE);
                    if (this.f4295b.get() != 0) {
                        return;
                    }
                    super.a(f1Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.x
    public final u d(n7.x0 x0Var, n7.v0 v0Var, n7.c cVar, n7.e[] eVarArr) {
        cVar.getClass();
        return this.f4295b.get() >= 0 ? new s0(this.c, v.f4462b, eVarArr) : this.f4294a.d(x0Var, v0Var, cVar, eVarArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u0
    public final c0 e() {
        return this.f4294a;
    }
}
