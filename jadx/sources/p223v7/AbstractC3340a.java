package p223v7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.concurrent.ScheduledExecutorService;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;

/* JADX INFO: renamed from: v7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3340a extends AbstractC2503e {
    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: D */
    public void mo3892D(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        mo5257E().mo3892D(enumC2518j, abstractC2513h0);
    }

    /* JADX INFO: renamed from: E */
    public abstract AbstractC2503e mo5257E();

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: b */
    public AbstractC2542t mo3894b(C2504e0 c2504e0) {
        return mo5257E().mo3894b(c2504e0);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: c */
    public final AbstractC2503e mo3895c() {
        return mo5257E().mo3895c();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: d */
    public final ScheduledExecutorService mo3896d() {
        return mo5257E().mo3896d();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: f */
    public final ExecutorC2523k1 mo3898f() {
        return mo5257E().mo3898f();
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(mo5257E(), "delegate");
        return c1073sM1263t.toString();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: y */
    public final void mo3917y() {
        mo5257E().mo3917y();
    }
}
