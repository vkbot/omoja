package l9;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class d extends Thread {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                g.Companion.getClass();
                ReentrantLock reentrantLockAccess$getLock$cp = g.access$getLock$cp();
                reentrantLockAccess$getLock$cp.lock();
                try {
                    g gVarA = c.a();
                    if (gVarA == g.access$getHead$cp()) {
                        g.access$setHead$cp(null);
                        reentrantLockAccess$getLock$cp.unlock();
                        return;
                    } else {
                        Unit unit = Unit.INSTANCE;
                        reentrantLockAccess$getLock$cp.unlock();
                        if (gVarA != null) {
                            gVarA.timedOut();
                        }
                    }
                } catch (Throwable th) {
                    reentrantLockAccess$getLock$cp.unlock();
                    throw th;
                }
            } catch (InterruptedException unused) {
            }
        }
    }
}
