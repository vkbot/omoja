package p039d2;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: d2.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC1260p implements Executor {

    /* JADX INFO: renamed from: b */
    public final Executor f2979b;

    public ExecutorC1260p(ExecutorService executorService) {
        this.f2979b = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2979b.execute(new RunnableC1259o(runnable, 0));
    }
}
