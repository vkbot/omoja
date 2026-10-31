package p157o7;

import p148n7.AbstractC2503e;

/* JADX INFO: renamed from: o7.w3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2735w3 extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final C2616c4 f7854b;

    /* JADX INFO: renamed from: c */
    public long f7855c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2727v1 f7856d;

    public C2735w3(C2727v1 c2727v1, C2616c4 c2616c4) {
        this.f7856d = c2727v1;
        this.f7854b = c2616c4;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: w */
    public final void mo3915w(long j10) {
        if (this.f7856d.f7829p.f7915f != null) {
            return;
        }
        synchronized (this.f7856d.f7823j) {
            try {
                if (this.f7856d.f7829p.f7915f == null) {
                    C2616c4 c2616c4 = this.f7854b;
                    if (!c2616c4.f7337b) {
                        long j11 = this.f7855c + j10;
                        this.f7855c = j11;
                        C2727v1 c2727v1 = this.f7856d;
                        long j12 = c2727v1.f7834u;
                        if (j11 <= j12) {
                            return;
                        }
                        if (j11 > c2727v1.f7825l) {
                            c2616c4.f7338c = true;
                        } else {
                            long jAddAndGet = c2727v1.f7824k.f7385a.addAndGet(j11 - j12);
                            C2727v1 c2727v2 = this.f7856d;
                            c2727v2.f7834u = this.f7855c;
                            if (jAddAndGet > c2727v2.f7826m) {
                                this.f7854b.f7338c = true;
                            }
                        }
                        C2616c4 c2616c5 = this.f7854b;
                        RunnableC2693p3 runnableC2693p3M4248j = c2616c5.f7338c ? this.f7856d.m4248j(c2616c5) : null;
                        if (runnableC2693p3M4248j != null) {
                            runnableC2693p3M4248j.run();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
