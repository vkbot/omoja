package v7;

import java.lang.reflect.Array;
import java.net.SocketAddress;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map$Entry;
import java.util.concurrent.atomic.AtomicLong;
import n7.e0;
import n7.f1;
import n7.i0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s extends b {
    public final n7.t d;
    public k e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n7.k f5569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public i0 f5570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n7.e f5571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ t f5572j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(t tVar, e0 e0Var, h hVar) {
        this.f5572j = tVar;
        i0 i0Var = (i0) e0Var.c();
        if (i0Var != null) {
            this.f5570h = i0Var;
            f fVar = new f(this, i0Var, 1);
            e0Var.getClass();
            e0 e0VarD = e0.d();
            e0VarD.e(e0Var.f3903b);
            n7.b bVar = e0Var.c;
            o4.b.i(bVar, "attrs");
            e0VarD.c = bVar;
            Object[][] objArr = e0Var.d;
            Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length, 2);
            e0VarD.d = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            e0VarD.a(fVar);
            this.d = hVar.b(e0VarD.b());
        } else {
            this.d = hVar.b(e0Var);
        }
        this.f5571i = this.d.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final n7.b d() {
        k kVar = this.e;
        n7.t tVar = this.d;
        if (kVar == null) {
            return tVar.d();
        }
        n7.b bVarD = tVar.d();
        bVarD.getClass();
        k kVar2 = this.e;
        IdentityHashMap identityHashMap = new IdentityHashMap(1);
        identityHashMap.put(t.f5573n, kVar2);
        for (Map$Entry map$Entry : bVarD.f3887a.entrySet()) {
            if (!identityHashMap.containsKey(map$Entry.getKey())) {
                identityHashMap.put((n7.a) map$Entry.getKey(), map$Entry.getValue());
            }
        }
        return new n7.b(identityHashMap);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.b, n7.t
    public final void n() {
        k kVar = this.e;
        if (kVar != null) {
            this.e = null;
            kVar.f5554f.remove(this);
        }
        super.n();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void p(i0 i0Var) {
        if (this.f5570h != null) {
            r().p(i0Var);
            return;
        }
        this.f5570h = i0Var;
        r().p(new f(this, i0Var, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.b, n7.t
    public final void q(List list) {
        t tVar = this.f5572j;
        if (t.g(c()) && t.g(list)) {
            l lVar = tVar.f5574f;
            if (lVar.f5555b.containsValue(this.e)) {
                k kVar = this.e;
                kVar.getClass();
                this.e = null;
                kVar.f5554f.remove(this);
            }
            SocketAddress socketAddress = (SocketAddress) ((n7.r) list.get(0)).f3968a.get(0);
            if (tVar.f5574f.f5555b.containsKey(socketAddress)) {
                ((k) tVar.f5574f.f5555b.get(socketAddress)).a(this);
            }
        } else if (t.g(c()) && !t.g(list)) {
            l lVar2 = tVar.f5574f;
            if (lVar2.f5555b.containsKey(b().f3968a.get(0))) {
                l lVar3 = tVar.f5574f;
                k kVar2 = (k) lVar3.f5555b.get(b().f3968a.get(0));
                kVar2.getClass();
                this.e = null;
                kVar2.f5554f.remove(this);
                l.d dVar = kVar2.f5553b;
                ((AtomicLong) dVar.c).set(0L);
                ((AtomicLong) dVar.d).set(0L);
                l.d dVar2 = kVar2.c;
                ((AtomicLong) dVar2.c).set(0L);
                ((AtomicLong) dVar2.d).set(0L);
            }
        } else if (!t.g(c()) && t.g(list)) {
            SocketAddress socketAddress2 = (SocketAddress) ((n7.r) list.get(0)).f3968a.get(0);
            if (tVar.f5574f.f5555b.containsKey(socketAddress2)) {
                ((k) tVar.f5574f.f5555b.get(socketAddress2)).a(this);
            }
        }
        this.d.q(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.b
    public final n7.t r() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        this.f5568f = true;
        i0 i0Var = this.f5570h;
        f1 f1Var = f1.f3930m;
        o4.b.d("The error status must not be OK", true ^ f1Var.f());
        i0Var.a(new n7.k(n7.j.d, f1Var));
        this.f5571i.n(2, "Subchannel ejected: {0}", this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.b
    public final String toString() {
        return "OutlierDetectionSubchannel{addresses=" + this.d.c() + '}';
    }
}
