package p223v7;

import p102j4.C1963b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2509g;
import p148n7.C2547v0;

/* JADX INFO: renamed from: v7.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3357r extends AbstractC2509g {

    /* JADX INFO: renamed from: a */
    public final C3350k f9810a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2509g f9811b;

    public C3357r(C3350k c3350k, AbstractC2509g abstractC2509g) {
        this.f9810a = c3350k;
        this.f9811b = abstractC2509g;
    }

    @Override // p148n7.AbstractC2509g
    /* JADX INFO: renamed from: a */
    public final AbstractC2503e mo3935a(C1963b c1963b, C2547v0 c2547v0) {
        AbstractC2509g abstractC2509g = this.f9811b;
        return abstractC2509g != null ? new C3355p(this, abstractC2509g.mo3935a(c1963b, c2547v0)) : new C3356q(this);
    }
}
