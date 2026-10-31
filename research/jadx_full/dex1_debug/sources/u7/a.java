package u7;

import com.bumptech.glide.manager.s;
import m4.m;
import n7.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends m {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t f5488i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(t tVar) {
        this.f5488i = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m4.m
    public final void g() {
        this.f5488i.a("GrpcFuture was cancelled", null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // m4.m
    public final String h() {
        s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f5488i, "clientCall");
        return sVarT.toString();
    }
}
