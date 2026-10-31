package p082h5;

import com.google.protobuf.AbstractC1178q;
import p047e0.C1357g;
import p052e5.InterfaceC1495b;
import p062f5.C1573w;
import p085h8.C1706l;
import p085h8.C1715p0;
import p184r5.C3105c;
import p242x7.AbstractC3585b;

/* JADX INFO: renamed from: h5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1669d implements InterfaceC1495b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4271b;

    /* JADX INFO: renamed from: c */
    public final C3105c f4272c;

    public /* synthetic */ C1669d(C3105c c3105c, int i10) {
        this.f4271b = i10;
        this.f4272c = c3105c;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        int i10 = this.f4271b;
        C3105c c3105c = this.f4272c;
        switch (i10) {
            case 0:
                C1357g c1357g = new C1357g(c3105c);
                int i11 = AbstractC3585b.f10653b;
                AbstractC1178q.m2082p(3, "mode is null");
                C1715p0 c1715p0M5713c = new C1706l(0, c1357g).m5713c();
                c1715p0M5713c.m2840f();
                return c1715p0M5713c;
            default:
                return (C1573w) c3105c.f8867c;
        }
    }
}
