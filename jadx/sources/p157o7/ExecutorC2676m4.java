package p157o7;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.m4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC2676m4 implements Executor, Runnable {

    /* JADX INFO: renamed from: e */
    public static final Logger f7627e = Logger.getLogger(ExecutorC2676m4.class.getName());

    /* JADX INFO: renamed from: f */
    public static final AbstractC2694p4 f7628f;

    /* JADX INFO: renamed from: b */
    public final Executor f7629b;

    /* JADX INFO: renamed from: c */
    public final ConcurrentLinkedQueue f7630c = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: d */
    public volatile int f7631d = 0;

    static {
        AbstractC2694p4 c2670l4;
        try {
            c2670l4 = new C2664k4(AtomicIntegerFieldUpdater.newUpdater(ExecutorC2676m4.class, "d"));
        } catch (Throwable th) {
            f7627e.log(Level.SEVERE, "FieldUpdaterAtomicHelper failed", th);
            c2670l4 = new C2670l4();
        }
        f7628f = c2670l4;
    }

    public ExecutorC2676m4(Executor executor) {
        AbstractC2587b.m4042i(executor, "'executor' must not be null.");
        this.f7629b = executor;
    }

    /* JADX INFO: renamed from: a */
    public final void m4190a(Runnable runnable) {
        AbstractC2694p4 abstractC2694p4 = f7628f;
        if (abstractC2694p4.mo4178p(this)) {
            try {
                this.f7629b.execute(this);
            } catch (Throwable th) {
                if (runnable != null) {
                    this.f7630c.remove(runnable);
                }
                abstractC2694p4.mo4179q(this);
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        AbstractC2587b.m4042i(runnable, "'r' must not be null.");
        this.f7630c.add(runnable);
        m4190a(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC2694p4 abstractC2694p4 = f7628f;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.f7630c;
        while (true) {
            try {
                Runnable runnable = (Runnable) concurrentLinkedQueue.poll();
                if (runnable == null) {
                    break;
                }
                try {
                    runnable.run();
                } catch (RuntimeException e) {
                    f7627e.log(Level.SEVERE, "Exception while executing runnable " + runnable, (Throwable) e);
                }
            } catch (Throwable th) {
                abstractC2694p4.mo4179q(this);
                throw th;
            }
        }
        abstractC2694p4.mo4179q(this);
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        m4190a(null);
    }
}
