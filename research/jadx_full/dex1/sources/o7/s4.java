package o7;

import java.util.IdentityHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s4 {
    public static final s4 d = new s4(new u2(19));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IdentityHashMap f4427a = new IdentityHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u2 f4428b;
    public ScheduledExecutorService c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s4(u2 u2Var) {
        this.f4428b = u2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object a(r4 r4Var) {
        Object obj;
        s4 s4Var = d;
        synchronized (s4Var) {
            try {
                q4 q4Var = (q4) s4Var.f4427a.get(r4Var);
                if (q4Var == null) {
                    q4Var = new q4(r4Var.create());
                    s4Var.f4427a.put(r4Var, q4Var);
                }
                ScheduledFuture scheduledFuture = q4Var.c;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    q4Var.c = null;
                }
                q4Var.f4415b++;
                obj = q4Var.f4414a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(r4 r4Var, Object obj) {
        s4 s4Var = d;
        synchronized (s4Var) {
            try {
                q4 q4Var = (q4) s4Var.f4427a.get(r4Var);
                if (q4Var == null) {
                    throw new IllegalArgumentException("No cached instance found for " + r4Var);
                }
                o4.b.d("Releasing the wrong instance", obj == q4Var.f4414a);
                o4.b.m(q4Var.f4415b > 0, "Refcount has already reached zero");
                int i9 = q4Var.f4415b - 1;
                q4Var.f4415b = i9;
                if (i9 == 0) {
                    o4.b.m(q4Var.c == null, "Destroy task already scheduled");
                    if (s4Var.c == null) {
                        s4Var.f4428b.getClass();
                        s4Var.c = Executors.newSingleThreadScheduledExecutor(y0.e("grpc-shared-destroyer-%d"));
                    }
                    q4Var.c = s4Var.c.schedule(new q1(new m0.r0(4, s4Var, q4Var, r4Var, obj)), 1L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
