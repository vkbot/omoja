package v7;

import java.util.concurrent.atomic.AtomicLong;
import n7.f1;
import n7.v0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n7.e f5564b;
    public final /* synthetic */ r c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(r rVar, n7.e eVar) {
        this.c = rVar;
        this.f5564b = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void B(f1 f1Var) {
        k kVar = this.c.f5566a;
        boolean zF = f1Var.f();
        o oVar = kVar.f5552a;
        if (oVar.e != null || oVar.f5562f != null) {
            l.d dVar = kVar.f5553b;
            if (zF) {
                ((AtomicLong) dVar.c).getAndIncrement();
            } else {
                ((AtomicLong) dVar.d).getAndIncrement();
            }
        }
        this.f5564b.B(f1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void C(n7.b bVar, v0 v0Var) {
        this.f5564b.C(bVar, v0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void a() {
        this.f5564b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void g() {
        this.f5564b.g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void h(int i9) {
        this.f5564b.h(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void i(int i9, long j9) {
        this.f5564b.i(i9, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void j(v0 v0Var) {
        this.f5564b.j(v0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void k(long j9) {
        this.f5564b.k(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void l(long j9) {
        this.f5564b.l(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void s() {
        this.f5564b.s();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void t(int i9) {
        this.f5564b.t(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f5564b, "delegate");
        return sVarT.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void u(int i9, long j9, long j10) {
        this.f5564b.u(i9, j9, j10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void v(long j9) {
        this.f5564b.v(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void w(long j9) {
        this.f5564b.w(j9);
    }
}
