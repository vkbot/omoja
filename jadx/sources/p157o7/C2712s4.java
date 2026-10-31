package p157o7;

import java.util.IdentityHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p132m0.RunnableC2345r0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.s4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2712s4 {

    /* JADX INFO: renamed from: d */
    public static final C2712s4 f7754d = new C2712s4(new C2722u2(19));

    /* JADX INFO: renamed from: a */
    public final IdentityHashMap f7755a = new IdentityHashMap();

    /* JADX INFO: renamed from: b */
    public final C2722u2 f7756b;

    /* JADX INFO: renamed from: c */
    public ScheduledExecutorService f7757c;

    public C2712s4(C2722u2 c2722u2) {
        this.f7756b = c2722u2;
    }

    /* JADX INFO: renamed from: a */
    public static Object m4232a(InterfaceC2706r4 interfaceC2706r4) {
        Object obj;
        C2712s4 c2712s4 = f7754d;
        synchronized (c2712s4) {
            try {
                C2700q4 c2700q4 = (C2700q4) c2712s4.f7755a.get(interfaceC2706r4);
                if (c2700q4 == null) {
                    c2700q4 = new C2700q4(interfaceC2706r4.create());
                    c2712s4.f7755a.put(interfaceC2706r4, c2700q4);
                }
                ScheduledFuture scheduledFuture = c2700q4.f7733c;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    c2700q4.f7733c = null;
                }
                c2700q4.f7732b++;
                obj = c2700q4.f7731a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    /* JADX INFO: renamed from: b */
    public static void m4233b(InterfaceC2706r4 interfaceC2706r4, Object obj) {
        C2712s4 c2712s4 = f7754d;
        synchronized (c2712s4) {
            try {
                C2700q4 c2700q4 = (C2700q4) c2712s4.f7755a.get(interfaceC2706r4);
                if (c2700q4 == null) {
                    throw new IllegalArgumentException("No cached instance found for " + interfaceC2706r4);
                }
                AbstractC2587b.m4037d("Releasing the wrong instance", obj == c2700q4.f7731a);
                AbstractC2587b.m4046m(c2700q4.f7732b > 0, "Refcount has already reached zero");
                int i10 = c2700q4.f7732b - 1;
                c2700q4.f7732b = i10;
                if (i10 == 0) {
                    AbstractC2587b.m4046m(c2700q4.f7733c == null, "Destroy task already scheduled");
                    if (c2712s4.f7757c == null) {
                        c2712s4.f7756b.getClass();
                        c2712s4.f7757c = Executors.newSingleThreadScheduledExecutor(AbstractC2743y0.m4261e("grpc-shared-destroyer-%d"));
                    }
                    c2700q4.f7733c = c2712s4.f7757c.schedule(new RunnableC2697q1(new RunnableC2345r0(4, c2712s4, c2700q4, interfaceC2706r4, obj)), 1L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
