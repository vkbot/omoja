package o7;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c2 extends n7.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4175b;
    public final /* synthetic */ f2 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f4174a = new AtomicReference(f2.f4216h0);
    public final a2 c = new a2(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c2(f2 f2Var, String str) {
        this.d = f2Var;
        o4.b.i(str, "authority");
        this.f4175b = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final String e() {
        return this.f4175b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final n7.t f(n7.x0 x0Var, n7.c cVar) {
        f2 f2Var = this.d;
        n7.k1 k1Var = f2Var.f4229m;
        AtomicReference atomicReference = this.f4174a;
        Object obj = atomicReference.get();
        s1 s1Var = f2.f4216h0;
        if (obj != s1Var) {
            return g(x0Var, cVar);
        }
        k1Var.execute(new com.bumptech.glide.m(16, this));
        if (atomicReference.get() != s1Var) {
            return g(x0Var, cVar);
        }
        if (f2Var.G.get()) {
            return new g0(2);
        }
        b2 b2Var = new b2(this, n7.n.b(), x0Var, cVar);
        k1Var.execute(new e0(this, b2Var));
        return b2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n7.t g(n7.x0 x0Var, n7.c cVar) {
        n7.y yVar = (n7.y) this.f4174a.get();
        a2 a2Var = this.c;
        if (yVar == null) {
            return a2Var.f(x0Var, cVar);
        }
        if (!(yVar instanceof k2)) {
            return new w1(yVar, a2Var, this.d.f4224h, x0Var, cVar);
        }
        l2 l2Var = ((k2) yVar).f4324b;
        j2 j2Var = (j2) l2Var.f4337b.get(x0Var.f3985b);
        if (j2Var == null) {
            j2Var = (j2) l2Var.c.get(x0Var.c);
        }
        if (j2Var == null) {
            j2Var = l2Var.f4336a;
        }
        if (j2Var != null) {
            cVar = cVar.c(j2.f4288g, j2Var);
        }
        return a2Var.f(x0Var, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(n7.y yVar) {
        LinkedHashSet linkedHashSet;
        AtomicReference atomicReference = this.f4174a;
        n7.y yVar2 = (n7.y) atomicReference.get();
        atomicReference.set(yVar);
        if (yVar2 != f2.f4216h0 || (linkedHashSet = this.d.B) == null) {
            return;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            ((b2) it.next()).u();
        }
    }
}
