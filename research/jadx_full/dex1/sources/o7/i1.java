package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4278b;
    public final /* synthetic */ com.bumptech.glide.manager.t c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i1(com.bumptech.glide.manager.t tVar, int i9) {
        this.f4278b = i9;
        this.c = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4278b) {
            case 0:
                com.bumptech.glide.manager.t tVar = this.c;
                k1 k1Var = (k1) tVar.e;
                k1Var.f4316n = null;
                if (k1Var.f4323x == null) {
                    g1 g1Var = k1Var.f4321u;
                    g1 g1Var2 = (g1) tVar.d;
                    if (g1Var == g1Var2) {
                        k1Var.f4322v = g1Var2;
                        k1 k1Var2 = (k1) this.c.e;
                        k1Var2.f4321u = null;
                        k1.e(k1Var2, n7.j.c);
                    }
                } else {
                    o4.b.m(k1Var.f4322v == null, "Unexpected non-null activeTransport");
                    com.bumptech.glide.manager.t tVar2 = this.c;
                    ((g1) tVar2.d).a(((k1) tVar2.e).f4323x);
                }
                break;
            default:
                com.bumptech.glide.manager.t tVar3 = this.c;
                ((k1) tVar3.e).f4320s.remove((g1) tVar3.d);
                if (((k1) this.c.e).w.f3949a == n7.j.f3944f && ((k1) this.c.e).f4320s.isEmpty()) {
                    k1 k1Var3 = (k1) this.c.e;
                    k1Var3.f4313k.execute(new f1(k1Var3, 2));
                    break;
                }
                break;
        }
    }
}
