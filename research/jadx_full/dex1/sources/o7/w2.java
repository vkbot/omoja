package o7;

import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w2 implements n7.i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public n7.k f4492a = n7.k.a(n7.j.e);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z2 f4493b;
    public final /* synthetic */ a3 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w2(a3 a3Var) {
        this.c = a3Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.i0
    public final void a(n7.k kVar) {
        a3.f4121o.log(Level.FINE, "Received health status {0} for subchannel {1}", new Object[]{kVar, this.f4493b.f4525a});
        this.f4492a = kVar;
        a3 a3Var = this.c;
        if (a3Var.f4124h.c() && ((z2) a3Var.f4123g.get(a3Var.f4124h.a())).c == this) {
            a3Var.j(this.f4493b);
        }
    }
}
