package p157o7;

import com.bumptech.glide.RunnableC1054m;
import java.util.concurrent.ScheduledExecutorService;
import p016b1.C0872m;
import p028c3.RunnableC0979e;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.y1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2744y1 extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public C0872m f7893b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2632f2 f7894c;

    public C2744y1(C2632f2 c2632f2) {
        this.f7894c = c2632f2;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: D */
    public final void mo3892D(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        ExecutorC2523k1 executorC2523k1 = this.f7894c.f7437m;
        executorC2523k1.m3957d();
        AbstractC2587b.m4042i(enumC2518j, "newState");
        AbstractC2587b.m4042i(abstractC2513h0, "newPicker");
        executorC2523k1.execute(new RunnableC0979e(this, abstractC2513h0, enumC2518j, 4));
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: b */
    public final AbstractC2542t mo3894b(C2504e0 c2504e0) {
        C2632f2 c2632f2 = this.f7894c;
        c2632f2.f7437m.m3957d();
        AbstractC2587b.m4046m(!c2632f2.f7404H, "Channel is being terminated");
        return new C2626e2(c2632f2, c2504e0);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: c */
    public final AbstractC2503e mo3895c() {
        return this.f7894c.f7410N;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: d */
    public final ScheduledExecutorService mo3896d() {
        return this.f7894c.f7431g;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: f */
    public final ExecutorC2523k1 mo3898f() {
        return this.f7894c.f7437m;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: y */
    public final void mo3917y() {
        ExecutorC2523k1 executorC2523k1 = this.f7894c.f7437m;
        executorC2523k1.m3957d();
        executorC2523k1.execute(new RunnableC1054m(15, this));
    }
}
