package androidx.core.location;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: androidx.core.location.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0360l implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f374b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ LocationManagerCompat.PreRGnssStatusTransport f375c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Executor f376d;

    public /* synthetic */ RunnableC0360l(LocationManagerCompat.PreRGnssStatusTransport preRGnssStatusTransport, Executor executor, int i10) {
        this.f374b = i10;
        this.f375c = preRGnssStatusTransport;
        this.f376d = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f374b) {
            case 0:
                this.f375c.lambda$onStopped$1(this.f376d);
                break;
            default:
                this.f375c.lambda$onStarted$0(this.f376d);
                break;
        }
    }
}
