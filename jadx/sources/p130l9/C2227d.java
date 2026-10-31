package p130l9;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;

/* JADX INFO: renamed from: l9.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2227d extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                C2233g.Companion.getClass();
                ReentrantLock reentrantLock = C2233g.lock;
                reentrantLock.lock();
                try {
                    C2233g c2233gM3580a = C2225c.m3580a();
                    if (c2233gM3580a == C2233g.head) {
                        C2233g.head = null;
                        reentrantLock.unlock();
                        return;
                    } else {
                        Unit unit = Unit.INSTANCE;
                        reentrantLock.unlock();
                        if (c2233gM3580a != null) {
                            c2233gM3580a.timedOut();
                        }
                    }
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (InterruptedException unused) {
            }
        }
    }
}
