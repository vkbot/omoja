package p252y7;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import p095i8.RunnableC1791p;
import p142n0.C2467b;
import p242x7.AbstractC3593j;
import p242x7.AbstractC3594k;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: y7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3663e extends AbstractC3594k {

    /* JADX INFO: renamed from: a */
    public final Handler f10854a;

    public C3663e(Handler handler) {
        this.f10854a = handler;
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: a */
    public final AbstractC3593j mo3780a() {
        return new C3661c(this.f10854a);
    }

    @Override // p242x7.AbstractC3594k
    /* JADX INFO: renamed from: c */
    public final InterfaceC3762a mo3781c(RunnableC1791p runnableC1791p) {
        if (TimeUnit.NANOSECONDS == null) {
            C2467b.m3828n("unit == null");
            return null;
        }
        Handler handler = this.f10854a;
        RunnableC3662d runnableC3662d = new RunnableC3662d(handler, runnableC1791p);
        handler.postDelayed(runnableC3662d, 0L);
        return runnableC3662d;
    }
}
