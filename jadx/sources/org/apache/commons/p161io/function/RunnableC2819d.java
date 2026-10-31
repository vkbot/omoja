package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class RunnableC2819d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7981b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IORunnable f7982c;

    public /* synthetic */ RunnableC2819d(IORunnable iORunnable, int i10) {
        this.f7981b = i10;
        this.f7982c = iORunnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7981b) {
            case 0:
                Erase.run(this.f7982c);
                break;
            default:
                this.f7982c.lambda$asRunnable$0();
                break;
        }
    }
}
