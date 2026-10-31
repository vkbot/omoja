package o7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a3 extends n7.j0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Logger f4121o = Logger.getLogger(a3.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n7.e f4122f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public h1 f4124h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public l.d f4127k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public n7.j f4128l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public n7.j f4129m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f4130n;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f4123g = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4125i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4126j = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a3(n7.e eVar) {
        boolean z8 = false;
        n7.j jVar = n7.j.e;
        this.f4128l = jVar;
        this.f4129m = jVar;
        Logger logger = y0.f4505a;
        String property = System.getenv("GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS");
        property = property == null ? System.getProperty("GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS") : property;
        if (!i4.d.a(property) && Boolean.parseBoolean(property)) {
            z8 = true;
        }
        this.f4130n = z8;
        this.f4122f = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: java.util.List */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // n7.j0
    public final n7.f1 a(n7.g0 g0Var) {
        int iD;
        List list;
        n7.j jVar;
        if (this.f4128l == n7.j.f3944f) {
            return n7.f1.f3928k.h("Already shut down");
        }
        List list2 = g0Var.f3935a;
        Object obj = g0Var.f3936b;
        if (list2.isEmpty()) {
            n7.f1 f1VarH = n7.f1.f3930m.h("NameResolver returned no usable address. addrs=" + list2 + ", attrs=" + obj);
            c(f1VarH);
            return f1VarH;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((n7.r) it.next()) == null) {
                n7.f1 f1VarH2 = n7.f1.f3930m.h("NameResolver returned address list with null endpoint. addrs=" + list2 + ", attrs=" + obj);
                c(f1VarH2);
                return f1VarH2;
            }
        }
        this.f4126j = true;
        j4.c cVar = j4.e.c;
        b1.u.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int size = list2.size();
        if (objArrCopyOf.length < size) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, j4.b.b(objArrCopyOf.length, size));
        }
        if (list2 instanceof j4.a) {
            iD = ((j4.a) list2).d(0, objArrCopyOf);
        } else {
            int i9 = 0;
            boolean z8 = false;
            for (Object obj2 : list2) {
                obj2.getClass();
                int i10 = i9 + 1;
                if (objArrCopyOf.length < i10) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, j4.b.b(objArrCopyOf.length, i10));
                } else {
                    if (z8) {
                        objArrCopyOf = (Object[]) objArrCopyOf.clone();
                    }
                    objArrCopyOf[i9] = obj2;
                    i9++;
                }
                z8 = false;
                objArrCopyOf[i9] = obj2;
                i9++;
            }
            iD = i9;
        }
        j4.i iVarI = j4.e.i(iD, objArrCopyOf);
        h1 h1Var = this.f4124h;
        n7.j jVar2 = n7.j.c;
        if (h1Var == null) {
            h1 h1Var2 = new h1();
            h1Var2.f4267a = iVarI != null ? iVarI : Collections.EMPTY_LIST;
            this.f4124h = h1Var2;
        } else if (this.f4128l == jVar2) {
            SocketAddress socketAddressA = h1Var.a();
            h1 h1Var3 = this.f4124h;
            if (iVarI != null) {
                list = iVarI;
            } else {
                h1Var3.getClass();
                list = Collections.EMPTY_LIST;
            }
            h1Var3.f4267a = list;
            h1Var3.f4268b = 0;
            h1Var3.c = 0;
            if (this.f4124h.e(socketAddressA)) {
                return n7.f1.e;
            }
            h1 h1Var4 = this.f4124h;
            h1Var4.f4268b = 0;
            h1Var4.c = 0;
        } else {
            h1Var.f4267a = iVarI != null ? iVarI : Collections.EMPTY_LIST;
            h1Var.f4268b = 0;
            h1Var.c = 0;
        }
        HashMap map = this.f4123g;
        HashSet<SocketAddress> hashSet = new HashSet(map.keySet());
        HashSet hashSet2 = new HashSet();
        j4.c cVarJ = iVarI.j(0);
        while (cVarJ.hasNext()) {
            hashSet2.addAll(((n7.r) cVarJ.next()).f3968a);
        }
        for (SocketAddress socketAddress : hashSet) {
            if (!hashSet2.contains(socketAddress)) {
                ((z2) map.remove(socketAddress)).f4525a.n();
            }
        }
        int size2 = hashSet.size();
        n7.j jVar3 = n7.j.f3943b;
        if (size2 == 0 || (jVar = this.f4128l) == jVar3 || jVar == jVar2) {
            this.f4128l = jVar3;
            i(jVar3, new x2(n7.f0.e));
            g();
            e();
        } else {
            n7.j jVar4 = n7.j.e;
            if (jVar == jVar4) {
                i(jVar4, new y2(this, this));
            } else if (jVar == n7.j.d) {
                g();
                e();
            }
        }
        return n7.f1.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void c(n7.f1 f1Var) {
        HashMap map = this.f4123g;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((z2) it.next()).f4525a.n();
        }
        map.clear();
        i(n7.j.d, new x2(n7.f0.a(f1Var)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void e() {
        int i9;
        n7.t tVar;
        h1 h1Var = this.f4124h;
        if (h1Var == null || !h1Var.c() || this.f4128l == n7.j.f3944f) {
            return;
        }
        SocketAddress socketAddressA = this.f4124h.a();
        HashMap map = this.f4123g;
        boolean zContainsKey = map.containsKey(socketAddressA);
        Logger logger = f4121o;
        if (zContainsKey) {
            tVar = ((z2) map.get(socketAddressA)).f4525a;
        } else {
            w2 w2Var = new w2(this);
            n7.e0 e0VarD = n7.e0.d();
            n7.r[] rVarArr = {new n7.r(socketAddressA)};
            b1.u.c(1, "arraySize");
            long j9 = ((long) 1) + 5 + ((long) 0);
            if (j9 > 2147483647L) {
                i9 = Integer.MAX_VALUE;
            } else {
                i9 = j9 < -2147483648L ? Integer.MIN_VALUE : (int) j9;
            }
            ArrayList arrayList = new ArrayList(i9);
            Collections.addAll(arrayList, rVarArr);
            e0VarD.e(arrayList);
            e0VarD.a(w2Var);
            n7.t tVarB = this.f4122f.b(e0VarD.b());
            if (tVarB == null) {
                logger.warning("Was not able to create subchannel for " + socketAddressA);
                j1.i.l("Can't create subchannel");
                return;
            }
            z2 z2Var = new z2(tVarB, w2Var);
            w2Var.f4493b = z2Var;
            map.put(socketAddressA, z2Var);
            if (tVarB.d().f3887a.get(n7.j0.d) == null) {
                w2Var.f4492a = n7.k.a(n7.j.c);
            }
            tVarB.p(new v2(this, tVarB));
            tVar = tVarB;
        }
        int iOrdinal = ((z2) map.get(socketAddressA)).f4526b.ordinal();
        if (iOrdinal == 0) {
            if (this.f4130n) {
                h();
                return;
            } else {
                tVar.l();
                return;
            }
        }
        if (iOrdinal == 1) {
            logger.warning("Requesting a connection even though we have a READY subchannel");
            return;
        }
        if (iOrdinal == 2) {
            this.f4124h.b();
            e();
        } else {
            if (iOrdinal != 3) {
                return;
            }
            tVar.l();
            z2.a((z2) map.get(socketAddressA), n7.j.f3943b);
            h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void f() {
        Level level = Level.FINE;
        HashMap map = this.f4123g;
        f4121o.log(level, "Shutting down, currently have {} subchannels created", Integer.valueOf(map.size()));
        n7.j jVar = n7.j.f3944f;
        this.f4128l = jVar;
        this.f4129m = jVar;
        g();
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((z2) it.next()).f4525a.n();
        }
        map.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        l.d dVar = this.f4127k;
        if (dVar != null) {
            dVar.j();
            this.f4127k = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        if (this.f4130n) {
            l.d dVar = this.f4127k;
            if (dVar != null) {
                n7.j1 j1Var = (n7.j1) dVar.c;
                if (!j1Var.d && !j1Var.c) {
                    return;
                }
            }
            n7.e eVar = this.f4122f;
            this.f4127k = eVar.f().c(new com.bumptech.glide.m(18, this), 250L, TimeUnit.MILLISECONDS, eVar.d());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(n7.j jVar, n7.h0 h0Var) {
        if (jVar == this.f4129m && (jVar == n7.j.e || jVar == n7.j.f3943b)) {
            return;
        }
        this.f4129m = jVar;
        this.f4122f.D(jVar, h0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(z2 z2Var) {
        n7.j jVar = z2Var.f4526b;
        n7.j jVar2 = n7.j.c;
        if (jVar != jVar2) {
            return;
        }
        n7.k kVar = z2Var.c.f4492a;
        n7.j jVar3 = kVar.f3949a;
        if (jVar3 == jVar2) {
            i(jVar2, new t1(n7.f0.b(z2Var.f4525a, null)));
            return;
        }
        n7.j jVar4 = n7.j.d;
        if (jVar3 == jVar4) {
            i(jVar4, new x2(n7.f0.a(kVar.f3950b)));
        } else if (this.f4129m != jVar4) {
            i(jVar3, new x2(n7.f0.e));
        }
    }
}
