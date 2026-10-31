package p148n7;

import p155o4.AbstractC2587b;
import p214u7.C3309f;
import p214u7.C3310g;

/* JADX INFO: renamed from: n7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2506f extends AbstractC2500d {

    /* JADX INFO: renamed from: a */
    public final AbstractC2500d f6929a;

    /* JADX INFO: renamed from: b */
    public final C3310g f6930b;

    public C2506f(AbstractC2500d abstractC2500d, C3310g c3310g) {
        this.f6929a = abstractC2500d;
        AbstractC2587b.m4042i(c3310g, "interceptor");
        this.f6930b = c3310g;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: e */
    public final String mo3887e() {
        return this.f6929a.mo3887e();
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: f */
    public final AbstractC2542t mo3888f(C2551x0 c2551x0, C2497c c2497c) {
        C3310g c3310g = this.f6930b;
        c3310g.getClass();
        return new C3309f(c3310g, this.f6929a.mo3888f(c2551x0, c2497c));
    }
}
