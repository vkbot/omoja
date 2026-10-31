package p131m;

import android.os.Process;

/* JADX INFO: renamed from: m.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2257a extends Thread {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5911b = 0;

    public /* synthetic */ C2257a(Runnable runnable) {
        super(runnable);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        switch (this.f5911b) {
            case 0:
                Process.setThreadPriority(9);
                super.run();
                return;
            case 1:
            default:
                super.run();
                return;
            case 2:
                Process.setThreadPriority(19);
                synchronized (this) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                break;
        }
    }

    public /* synthetic */ C2257a(String str, Runnable runnable) {
        super(runnable, str);
    }

    public /* synthetic */ C2257a(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }
}
