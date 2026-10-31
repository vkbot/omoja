package p157o7;

import java.util.logging.Level;
import java.util.logging.Logger;
import p091i4.AbstractC1749g;
import p099j1.C1929i;

/* JADX INFO: renamed from: o7.q1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2697q1 implements Runnable {

    /* JADX INFO: renamed from: c */
    public static final Logger f7709c = Logger.getLogger(RunnableC2697q1.class.getName());

    /* JADX INFO: renamed from: b */
    public final Runnable f7710b;

    public RunnableC2697q1(Runnable runnable) {
        this.f7710b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f7710b;
        try {
            runnable.run();
        } catch (Throwable th) {
            f7709c.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            Object obj = AbstractC1749g.f4564a;
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            C1929i.m3023e(th);
        }
    }

    public final String toString() {
        return "LogExceptionRunnable(" + this.f7710b + ")";
    }
}
