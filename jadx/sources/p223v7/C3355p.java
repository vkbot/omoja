package p223v7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.concurrent.atomic.AtomicLong;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: v7.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3355p extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AbstractC2503e f9807b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3357r f9808c;

    public C3355p(C3357r c3357r, AbstractC2503e abstractC2503e) {
        this.f9808c = c3357r;
        this.f9807b = abstractC2503e;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: B */
    public final void mo3890B(C2508f1 c2508f1) {
        C3350k c3350k = this.f9808c.f9810a;
        boolean zM3932f = c2508f1.m3932f();
        C3354o c3354o = c3350k.f9786a;
        if (c3354o.f9804e != null || c3354o.f9805f != null) {
            C2187d c2187d = c3350k.f9787b;
            if (zM3932f) {
                ((AtomicLong) c2187d.f5705c).getAndIncrement();
            } else {
                ((AtomicLong) c2187d.f5706d).getAndIncrement();
            }
        }
        this.f9807b.mo3890B(c2508f1);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: C */
    public final void mo3891C(C2494b c2494b, C2547v0 c2547v0) {
        this.f9807b.mo3891C(c2494b, c2547v0);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: a */
    public final void mo3893a() {
        this.f9807b.mo3893a();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: g */
    public final void mo3899g() {
        this.f9807b.mo3899g();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: h */
    public final void mo3900h(int i10) {
        this.f9807b.mo3900h(i10);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: i */
    public final void mo3901i(int i10, long j10) {
        this.f9807b.mo3901i(i10, j10);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: j */
    public final void mo3902j(C2547v0 c2547v0) {
        this.f9807b.mo3902j(c2547v0);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: k */
    public final void mo3903k(long j10) {
        this.f9807b.mo3903k(j10);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: l */
    public final void mo3904l(long j10) {
        this.f9807b.mo3904l(j10);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: s */
    public final void mo3911s() {
        this.f9807b.mo3911s();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: t */
    public final void mo3912t(int i10) {
        this.f9807b.mo3912t(i10);
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f9807b, "delegate");
        return c1073sM1263t.toString();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: u */
    public final void mo3913u(int i10, long j10, long j11) {
        this.f9807b.mo3913u(i10, j10, j11);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: v */
    public final void mo3914v(long j10) {
        this.f9807b.mo3914v(j10);
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: w */
    public final void mo3915w(long j10) {
        this.f9807b.mo3915w(j10);
    }
}
