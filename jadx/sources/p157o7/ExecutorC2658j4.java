package p157o7;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.j4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC2658j4 implements Executor {

    /* JADX INFO: renamed from: d */
    public static final Logger f7549d = Logger.getLogger(ExecutorC2658j4.class.getName());

    /* JADX INFO: renamed from: b */
    public boolean f7550b;

    /* JADX INFO: renamed from: c */
    public ArrayDeque f7551c;

    /* JADX INFO: renamed from: a */
    public final void m4169a() {
        while (true) {
            Runnable runnable = (Runnable) this.f7551c.poll();
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th) {
                f7549d.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        AbstractC2587b.m4042i(runnable, "'task' must not be null.");
        if (this.f7550b) {
            if (this.f7551c == null) {
                this.f7551c = new ArrayDeque(4);
            }
            this.f7551c.add(runnable);
            return;
        }
        this.f7550b = true;
        try {
            runnable.run();
            if (this.f7551c != null) {
                m4169a();
            }
            this.f7550b = false;
        } catch (Throwable th) {
            try {
                f7549d.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            } finally {
                if (this.f7551c != null) {
                    m4169a();
                }
                this.f7550b = false;
            }
        }
    }
}
