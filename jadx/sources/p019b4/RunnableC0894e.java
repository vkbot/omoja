package p019b4;

import java.util.ArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import p139m8.AbstractC2426n;

/* JADX INFO: renamed from: b4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0894e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f678b;

    public RunnableC0894e(AbstractC0899j abstractC0899j) {
        this.f678b = 0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f678b) {
            case 0:
                throw null;
            case 1:
                return;
            default:
                ArrayList arrayList = new ArrayList(AbstractC2426n.f6589d.keySet());
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) obj;
                    if (scheduledThreadPoolExecutor.isShutdown()) {
                        AbstractC2426n.f6589d.remove(scheduledThreadPoolExecutor);
                    } else {
                        scheduledThreadPoolExecutor.purge();
                    }
                }
                return;
        }
    }

    public String toString() {
        switch (this.f678b) {
            case 1:
                return "EmptyRunnable";
            default:
                return super.toString();
        }
    }

    /* JADX INFO: renamed from: a */
    private final void m1025a() {
    }
}
