package v7;

import n7.h0;
import n7.k0;
import o7.f3;
import o7.t1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f5546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f5547b;
    public final k0 c;
    public n7.j d;
    public h0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5548f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ x f5549g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(x xVar, j jVar, f3 f3Var, t1 t1Var) {
        this.f5549g = xVar;
        this.f5546a = jVar;
        this.c = f3Var;
        this.e = t1Var;
        e eVar = new e(new h(1, this));
        this.f5547b = eVar;
        this.d = n7.j.f3943b;
        eVar.i(f3Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("Address = ");
        sb.append(this.f5546a);
        sb.append(", state = ");
        sb.append(this.d);
        sb.append(", picker type: ");
        sb.append(this.e.getClass());
        sb.append(", lb: ");
        sb.append(this.f5547b.g().getClass());
        sb.append(this.f5548f ? ", deactivated" : "");
        return sb.toString();
    }
}
