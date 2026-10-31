package p039d2;

import android.os.Process;
import p050e3.C1461d;

/* JADX INFO: renamed from: d2.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1259o implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2977b;

    /* JADX INFO: renamed from: c */
    public final Runnable f2978c;

    public /* synthetic */ RunnableC1259o(Runnable runnable, int i10) {
        this.f2977b = i10;
        this.f2978c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2977b) {
            case 0:
                try {
                    this.f2978c.run();
                } catch (Exception e) {
                    C1461d.m2507f("Executor", "Background execution failure.", e);
                    return;
                }
                break;
            case 1:
                Process.setThreadPriority(10);
                this.f2978c.run();
                break;
            default:
                this.f2978c.run();
                break;
        }
    }

    public String toString() {
        switch (this.f2977b) {
            case 2:
                return this.f2978c.toString();
            default:
                return super.toString();
        }
    }
}
