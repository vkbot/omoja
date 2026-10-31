package p214u7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p135m4.AbstractC2394m;
import p148n7.AbstractC2542t;

/* JADX INFO: renamed from: u7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3304a extends AbstractC2394m {

    /* JADX INFO: renamed from: i */
    public final AbstractC2542t f9681i;

    public C3304a(AbstractC2542t abstractC2542t) {
        this.f9681i = abstractC2542t;
    }

    @Override // p135m4.AbstractC2394m
    /* JADX INFO: renamed from: g */
    public final void mo3759g() {
        this.f9681i.mo3969a("GrpcFuture was cancelled", null);
    }

    @Override // p135m4.AbstractC2394m
    /* JADX INFO: renamed from: h */
    public final String mo3760h() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f9681i, "clientCall");
        return c1073sM1263t.toString();
    }
}
