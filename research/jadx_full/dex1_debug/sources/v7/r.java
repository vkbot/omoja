package v7;

import n7.v0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r extends n7.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f5566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.g f5567b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(k kVar, n7.g gVar) {
        this.f5566a = kVar;
        this.f5567b = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.g
    public final n7.e a(j4.b bVar, v0 v0Var) {
        n7.g gVar = this.f5567b;
        return gVar != null ? new p(this, gVar.a(bVar, v0Var)) : new q(this);
    }
}
