package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p148n7.C2492a0;
import p148n7.C2494b;
import p148n7.C2508f1;

/* JADX INFO: renamed from: o7.u0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2720u0 implements InterfaceC2612c0 {
    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: a */
    public void mo4170a(C2508f1 c2508f1) {
        mo4157e().mo4170a(c2508f1);
    }

    @Override // p157o7.InterfaceC2680n2
    /* JADX INFO: renamed from: b */
    public final Runnable mo4181b(InterfaceC2674m2 interfaceC2674m2) {
        return mo4157e().mo4181b(interfaceC2674m2);
    }

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        return mo4157e().mo3995c();
    }

    /* JADX INFO: renamed from: e */
    public abstract InterfaceC2612c0 mo4157e();

    @Override // p157o7.InterfaceC2612c0
    public final C2494b getAttributes() {
        return mo4157e().getAttributes();
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(mo4157e(), "delegate");
        return c1073sM1263t.toString();
    }
}
