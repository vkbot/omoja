package o7;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x1 implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n.p f4498b;
    public Executor c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x1(n.p pVar) {
        o4.b.i(pVar, "executorPool");
        this.f4498b = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Executor executor;
        synchronized (this) {
            try {
                if (this.c == null) {
                    Executor executor2 = (Executor) s4.a((r4) this.f4498b.c);
                    Executor executor3 = this.c;
                    if (executor2 == null) {
                        throw new NullPointerException(e3.d.l("%s.getObject()", executor3));
                    }
                    this.c = executor2;
                }
                executor = this.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        executor.execute(runnable);
    }
}
