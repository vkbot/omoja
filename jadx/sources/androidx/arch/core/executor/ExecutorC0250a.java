package androidx.arch.core.executor;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: androidx.arch.core.executor.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0250a implements Executor {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f285b;

    public /* synthetic */ ExecutorC0250a(int i10) {
        this.f285b = i10;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f285b) {
            case 0:
                ArchTaskExecutor.lambda$static$0(runnable);
                break;
            case 1:
                ArchTaskExecutor.lambda$static$1(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
