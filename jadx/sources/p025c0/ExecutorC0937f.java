package p025c0;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: c0.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC0937f implements Executor {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f793b;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f793b) {
            case 0:
                AbstractC0947p.m1089f().post(runnable);
                break;
            case 1:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
