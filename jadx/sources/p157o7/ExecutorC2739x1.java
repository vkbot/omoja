package p157o7;

import java.util.concurrent.Executor;
import p050e3.C1461d;
import p141n.C2455p;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.x1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC2739x1 implements Executor {

    /* JADX INFO: renamed from: b */
    public final C2455p f7866b;

    /* JADX INFO: renamed from: c */
    public Executor f7867c;

    public ExecutorC2739x1(C2455p c2455p) {
        AbstractC2587b.m4042i(c2455p, "executorPool");
        this.f7866b = c2455p;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Executor executor;
        synchronized (this) {
            try {
                if (this.f7867c == null) {
                    Executor executor2 = (Executor) C2712s4.m4232a((InterfaceC2706r4) this.f7866b.f6648c);
                    Executor executor3 = this.f7867c;
                    if (executor2 == null) {
                        throw new NullPointerException(C1461d.m2512l("%s.getObject()", executor3));
                    }
                    this.f7867c = executor2;
                }
                executor = this.f7867c;
            } catch (Throwable th) {
                throw th;
            }
        }
        executor.execute(runnable);
    }
}
