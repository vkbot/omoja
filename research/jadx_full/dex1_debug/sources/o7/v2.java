package o7;

import java.net.SocketAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class v2 implements n7.i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a3 f4483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n7.t f4484b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v2(a3 a3Var, n7.t tVar) {
        this.f4483a = a3Var;
        this.f4484b = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.i0
    public final void a(n7.k kVar) {
        n7.t tVar;
        a3 a3Var = this.f4483a;
        n7.e eVar = a3Var.f4122f;
        n7.j jVar = kVar.f3949a;
        HashMap map = a3Var.f4123g;
        n7.t tVar2 = this.f4484b;
        z2 z2Var = (z2) map.get((SocketAddress) tVar2.b().f3968a.get(0));
        if (z2Var == null || (tVar = z2Var.f4525a) != tVar2 || jVar == n7.j.f3944f) {
            return;
        }
        n7.j jVar2 = n7.j.e;
        if (jVar == jVar2) {
            eVar.y();
        }
        z2.a(z2Var, jVar);
        n7.j jVar3 = a3Var.f4128l;
        n7.j jVar4 = n7.j.f3943b;
        n7.j jVar5 = n7.j.d;
        if (jVar3 == jVar5 || a3Var.f4129m == jVar5) {
            if (jVar == jVar4) {
                return;
            }
            if (jVar == jVar2) {
                a3Var.e();
                return;
            }
        }
        int iOrdinal = jVar.ordinal();
        if (iOrdinal == 0) {
            a3Var.f4128l = jVar4;
            a3Var.i(jVar4, new x2(n7.f0.e));
            return;
        }
        if (iOrdinal == 1) {
            a3Var.g();
            for (z2 z2Var2 : map.values()) {
                if (!z2Var2.f4525a.equals(tVar)) {
                    z2Var2.f4525a.n();
                }
            }
            map.clear();
            n7.j jVar6 = n7.j.c;
            z2.a(z2Var, jVar6);
            map.put((SocketAddress) tVar.b().f3968a.get(0), z2Var);
            a3Var.f4124h.e((SocketAddress) tVar2.b().f3968a.get(0));
            a3Var.f4128l = jVar6;
            a3Var.j(z2Var);
            return;
        }
        if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                androidx.navigation.b.t(jVar, "Unsupported state:");
                return;
            }
            h1 h1Var = a3Var.f4124h;
            h1Var.f4268b = 0;
            h1Var.c = 0;
            a3Var.f4128l = jVar2;
            a3Var.i(jVar2, new y2(a3Var, a3Var));
            return;
        }
        if (a3Var.f4124h.c() && ((z2) map.get(a3Var.f4124h.a())).f4525a == tVar2 && a3Var.f4124h.b()) {
            a3Var.g();
            a3Var.e();
        }
        h1 h1Var2 = a3Var.f4124h;
        if (h1Var2 == null || h1Var2.c()) {
            return;
        }
        int size = map.size();
        List list = a3Var.f4124h.f4267a;
        if (size < (list != null ? list.size() : 0)) {
            return;
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            if (!((z2) it.next()).d) {
                return;
            }
        }
        a3Var.f4128l = jVar5;
        a3Var.i(jVar5, new x2(n7.f0.a(kVar.f3950b)));
        int i9 = a3Var.f4125i + 1;
        a3Var.f4125i = i9;
        List list2 = a3Var.f4124h.f4267a;
        if (i9 >= (list2 != null ? list2.size() : 0) || a3Var.f4126j) {
            a3Var.f4126j = false;
            a3Var.f4125i = 0;
            eVar.y();
        }
    }
}
