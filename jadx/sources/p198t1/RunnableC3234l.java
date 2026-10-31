package p198t1;

import android.view.View;
import p062f5.RunnableC1556j;
import p078h0.C1652b;
import p094i7.C1762k;
import p235x0.C3549c;

/* JADX INFO: renamed from: t1.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3234l implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9492b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ View f9493c;

    public /* synthetic */ RunnableC3234l(int i10, View view) {
        this.f9492b = i10;
        this.f9493c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9492b) {
            case 0:
                C3235m c3235m = (C3235m) this.f9493c;
                c3235m.m5177b();
                c3235m.postDelayed(this, 10000L);
                break;
            case 1:
                C3236n c3236n = (C3236n) this.f9493c;
                c3236n.setTemperatura(C1652b.m2734a().m2754e().f3362d);
                c3236n.postDelayed(this, 10000L);
                break;
            default:
                C3549c c3549c = (C3549c) this.f9493c;
                if (c3549c.f10538f && !c3549c.f10536d && !c3549c.f10535c.f10614u.stream().noneMatch(new C1762k(7))) {
                    C3549c.f10533s.execute(new RunnableC1556j(24, this));
                    break;
                }
                break;
        }
    }
}
