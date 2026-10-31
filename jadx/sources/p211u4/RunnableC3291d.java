package p211u4;

import java.util.concurrent.ExecutorService;
import p141n.C2455p;

/* JADX INFO: renamed from: u4.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3291d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9634b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ScheduledExecutorServiceC3293f f9635c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Runnable f9636d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2455p f9637e;

    public /* synthetic */ RunnableC3291d(ScheduledExecutorServiceC3293f scheduledExecutorServiceC3293f, Runnable runnable, C2455p c2455p, int i10) {
        this.f9634b = i10;
        this.f9635c = scheduledExecutorServiceC3293f;
        this.f9636d = runnable;
        this.f9637e = c2455p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9634b) {
            case 0:
                ExecutorService executorService = this.f9635c.f9641b;
                final int i10 = 0;
                final Runnable runnable = this.f9636d;
                final C2455p c2455p = this.f9637e;
                executorService.execute(new Runnable() { // from class: u4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i10) {
                            case 0:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3295h) c2455p.f6648c).setException(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable.run();
                                    return;
                                } catch (Exception e6) {
                                    ((ScheduledFutureC3295h) c2455p.f6648c).setException(e6);
                                    return;
                                }
                            default:
                                Runnable runnable2 = runnable;
                                ScheduledFutureC3295h scheduledFutureC3295h = (ScheduledFutureC3295h) c2455p.f6648c;
                                try {
                                    runnable2.run();
                                    scheduledFutureC3295h.set(null);
                                    return;
                                } catch (Exception e10) {
                                    scheduledFutureC3295h.setException(e10);
                                    return;
                                }
                        }
                    }
                });
                break;
            case 1:
                ExecutorService executorService2 = this.f9635c.f9641b;
                final int i11 = 2;
                final Runnable runnable2 = this.f9636d;
                final C2455p c2455p2 = this.f9637e;
                executorService2.execute(new Runnable() { // from class: u4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i11) {
                            case 0:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3295h) c2455p2.f6648c).setException(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable2.run();
                                    return;
                                } catch (Exception e6) {
                                    ((ScheduledFutureC3295h) c2455p2.f6648c).setException(e6);
                                    return;
                                }
                            default:
                                Runnable runnable3 = runnable2;
                                ScheduledFutureC3295h scheduledFutureC3295h = (ScheduledFutureC3295h) c2455p2.f6648c;
                                try {
                                    runnable3.run();
                                    scheduledFutureC3295h.set(null);
                                    return;
                                } catch (Exception e10) {
                                    scheduledFutureC3295h.setException(e10);
                                    return;
                                }
                        }
                    }
                });
                break;
            default:
                ExecutorService executorService3 = this.f9635c.f9641b;
                final int i12 = 1;
                final Runnable runnable3 = this.f9636d;
                final C2455p c2455p3 = this.f9637e;
                executorService3.execute(new Runnable() { // from class: u4.b
                    @Override // java.lang.Runnable
                    public final void run() throws Exception {
                        switch (i12) {
                            case 0:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e) {
                                    ((ScheduledFutureC3295h) c2455p3.f6648c).setException(e);
                                    throw e;
                                }
                            case 1:
                                try {
                                    runnable3.run();
                                    return;
                                } catch (Exception e6) {
                                    ((ScheduledFutureC3295h) c2455p3.f6648c).setException(e6);
                                    return;
                                }
                            default:
                                Runnable runnable4 = runnable3;
                                ScheduledFutureC3295h scheduledFutureC3295h = (ScheduledFutureC3295h) c2455p3.f6648c;
                                try {
                                    runnable4.run();
                                    scheduledFutureC3295h.set(null);
                                    return;
                                } catch (Exception e10) {
                                    scheduledFutureC3295h.setException(e10);
                                    return;
                                }
                        }
                    }
                });
                break;
        }
    }
}
