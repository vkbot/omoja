package l9;

import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g a() throws InterruptedException {
        g gVarAccess$getHead$cp = g.access$getHead$cp();
        gVarAccess$getHead$cp.getClass();
        g gVarAccess$getNext$p = g.access$getNext$p(gVarAccess$getHead$cp);
        if (gVarAccess$getNext$p == null) {
            long jNanoTime = System.nanoTime();
            g.access$getCondition$cp().await(g.access$getIDLE_TIMEOUT_MILLIS$cp(), TimeUnit.MILLISECONDS);
            g gVarAccess$getHead$cp2 = g.access$getHead$cp();
            gVarAccess$getHead$cp2.getClass();
            if (g.access$getNext$p(gVarAccess$getHead$cp2) != null || System.nanoTime() - jNanoTime < g.access$getIDLE_TIMEOUT_NANOS$cp()) {
                return null;
            }
            return g.access$getHead$cp();
        }
        long jAccess$remainingNanos = g.access$remainingNanos(gVarAccess$getNext$p, System.nanoTime());
        if (jAccess$remainingNanos > 0) {
            g.access$getCondition$cp().await(jAccess$remainingNanos, TimeUnit.NANOSECONDS);
            return null;
        }
        g gVarAccess$getHead$cp3 = g.access$getHead$cp();
        gVarAccess$getHead$cp3.getClass();
        g.access$setNext$p(gVarAccess$getHead$cp3, g.access$getNext$p(gVarAccess$getNext$p));
        g.access$setNext$p(gVarAccess$getNext$p, null);
        return gVarAccess$getNext$p;
    }
}
