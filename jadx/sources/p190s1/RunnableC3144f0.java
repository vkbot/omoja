package p190s1;

import java.util.ArrayList;
import p047e0.RunnableC1375j2;
import p062f5.RunnableC1556j;
import p173q0.C3042f;

/* JADX INFO: renamed from: s1.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3144f0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9003b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3166q0 f9004c;

    public /* synthetic */ RunnableC3144f0(C3166q0 c3166q0, int i10) {
        this.f9003b = i10;
        this.f9004c = c3166q0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9003b) {
            case 0:
                if (this.f9004c.f9160E) {
                    return;
                }
                C3166q0 c3166q0 = this.f9004c;
                if (c3166q0.f9178n && c3166q0.isAttachedToWindow()) {
                    C3179x c3179xM5107a = C3179x.m5107a(this.f9004c.getContext());
                    C3042f c3042f = new C3042f(2, this);
                    synchronized (c3179xM5107a) {
                        if (c3179xM5107a.f9255g) {
                            return;
                        }
                        c3179xM5107a.f9255g = true;
                        c3179xM5107a.f9252d.execute(new RunnableC1375j2(26, c3179xM5107a, c3042f));
                        return;
                    }
                }
                return;
            default:
                if (this.f9004c.f9160E || !this.f9004c.isAttachedToWindow()) {
                    return;
                }
                ArrayList arrayList = this.f9004c.f9181q;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    if (C3166q0.m5034r(((C3152j0) obj).f9044b)) {
                        this.f9004c.f9177m.execute(new RunnableC1556j(17, this));
                        return;
                    }
                }
                this.f9004c.f9182r.postDelayed(this, 4000L);
                return;
        }
    }
}
