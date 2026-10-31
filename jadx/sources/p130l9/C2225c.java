package p130l9;

import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: l9.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2225c {
    /* JADX INFO: renamed from: a */
    public static C2233g m3580a() throws InterruptedException {
        C2233g c2233g = C2233g.head;
        c2233g.getClass();
        C2233g c2233g2 = c2233g.next;
        if (c2233g2 == null) {
            long jNanoTime = System.nanoTime();
            C2233g.condition.await(C2233g.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            C2233g c2233g3 = C2233g.head;
            c2233g3.getClass();
            if (c2233g3.next != null || System.nanoTime() - jNanoTime < C2233g.IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return C2233g.head;
        }
        long jAccess$remainingNanos = C2233g.access$remainingNanos(c2233g2, System.nanoTime());
        if (jAccess$remainingNanos > 0) {
            C2233g.condition.await(jAccess$remainingNanos, TimeUnit.NANOSECONDS);
            return null;
        }
        C2233g c2233g4 = C2233g.head;
        c2233g4.getClass();
        c2233g4.next = c2233g2.next;
        c2233g2.next = null;
        return c2233g2;
    }
}
