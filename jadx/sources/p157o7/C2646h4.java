package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p062f5.RunnableC1556j;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2491a;
import p148n7.ExecutorC2523k1;

/* JADX INFO: renamed from: o7.h4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2646h4 extends AbstractC2503e {

    /* JADX INFO: renamed from: e */
    public static final C2491a f7512e = new C2491a("io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY");

    /* JADX INFO: renamed from: b */
    public final AbstractC2503e f7513b;

    /* JADX INFO: renamed from: c */
    public final C2653j f7514c;

    /* JADX INFO: renamed from: d */
    public final ExecutorC2523k1 f7515d;

    public C2646h4(C2690p0 c2690p0, C2653j c2653j, ExecutorC2523k1 executorC2523k1) {
        this.f7513b = c2690p0;
        this.f7514c = c2653j;
        this.f7515d = executorC2523k1;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: A */
    public final void mo3889A(AbstractC2542t abstractC2542t) {
        this.f7513b.mo3889A(new C2640g4(this, abstractC2542t));
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: e */
    public String mo3897e() {
        return this.f7513b.mo3897e();
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7513b, "delegate");
        return c1073sM1263t.toString();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: x */
    public final void mo3916x() {
        this.f7513b.mo3916x();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: z */
    public final void mo3918z() {
        this.f7513b.mo3918z();
        C2653j c2653j = this.f7514c;
        ExecutorC2523k1 executorC2523k1 = c2653j.f7532b;
        executorC2523k1.m3957d();
        executorC2523k1.execute(new RunnableC1556j(9, c2653j));
    }
}
