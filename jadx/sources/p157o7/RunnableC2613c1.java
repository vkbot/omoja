package p157o7;

import p148n7.C2508f1;
import p170p7.C2989n;

/* JADX INFO: renamed from: o7.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2613c1 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7329b = 0;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2685o1 f7330c;

    public RunnableC2613c1(C2685o1 c2685o1, long j10) {
        this.f7330c = c2685o1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7329b) {
            case 0:
                this.f7330c.getClass();
                break;
            default:
                ((C2989n) this.f7330c.f7652a.f6648c).m4798q(C2508f1.f6945m.m3934h("Keepalive failed. The connection is likely gone"));
                break;
        }
    }

    public RunnableC2613c1(C2685o1 c2685o1, Throwable th) {
        this.f7330c = c2685o1;
    }
}
