package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p250y5.C3652g;

/* JADX INFO: renamed from: n7.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2540s extends AbstractC2542t {
    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: a */
    public void mo3969a(String str, Throwable th) {
        mo3973r().mo3969a(str, th);
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: g */
    public final void mo3970g() {
        mo3973r().mo3970g();
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: k */
    public final void mo3971k() {
        mo3973r().mo3971k();
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: m */
    public final void mo3972m(C3652g c3652g) {
        mo3973r().mo3972m(c3652g);
    }

    /* JADX INFO: renamed from: r */
    public abstract AbstractC2542t mo3973r();

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(mo3973r(), "delegate");
        return c1073sM1263t.toString();
    }
}
