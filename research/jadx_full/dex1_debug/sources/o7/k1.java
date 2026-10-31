package o7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k1 implements n7.z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.a0 f4306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4307b;
    public final u2 c;
    public final w4 d;
    public final z e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledExecutorService f4308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n7.x f4309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b1.m f4310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n7.e f4311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f4312j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final n7.k1 f4313k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h1 f4314l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile List f4315m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public r0 f4316n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final i4.f f4317o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l.d f4318p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public l.d f4319q;
    public n2 r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public g1 f4321u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public volatile g1 f4322v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public n7.f1 f4323x;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final ArrayList f4320s = new ArrayList();
    public final e1 t = new e1(this, 0);
    public volatile n7.k w = n7.k.a(n7.j.e);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k1(List list, String str, u2 u2Var, l lVar, ScheduledExecutorService scheduledExecutorService, u2 u2Var2, n7.k1 k1Var, w4 w4Var, n7.x xVar, b1.m mVar, o oVar, n7.a0 a0Var, n7.e eVar, ArrayList arrayList) {
        o4.b.i(list, "addressGroups");
        o4.b.d("addressGroups is empty", !list.isEmpty());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o4.b.i(it.next(), "addressGroups contains null entry");
        }
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f4315m = listUnmodifiableList;
        h1 h1Var = new h1();
        h1Var.f4267a = listUnmodifiableList;
        this.f4314l = h1Var;
        this.f4307b = str;
        this.c = u2Var;
        this.e = lVar;
        this.f4308f = scheduledExecutorService;
        this.f4317o = (i4.f) u2Var2.r();
        this.f4313k = k1Var;
        this.d = w4Var;
        this.f4309g = xVar;
        this.f4310h = mVar;
        o4.b.i(oVar, "channelTracer");
        o4.b.i(a0Var, "logId");
        this.f4306a = a0Var;
        o4.b.i(eVar, "channelLogger");
        this.f4311i = eVar;
        this.f4312j = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(k1 k1Var, n7.j jVar) {
        k1Var.f4313k.d();
        k1Var.g(n7.k.a(jVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(k1 k1Var) {
        SocketAddress socketAddress;
        n7.u uVar;
        h1 h1Var = k1Var.f4314l;
        n7.k1 k1Var2 = k1Var.f4313k;
        k1Var2.d();
        o4.b.m(k1Var.f4318p == null, "Should have no reconnectTask scheduled");
        if (h1Var.f4268b == 0 && h1Var.c == 0) {
            i4.f fVar = k1Var.f4317o;
            fVar.f2661a = false;
            fVar.b();
        }
        SocketAddress socketAddress2 = (SocketAddress) ((n7.r) h1Var.f4267a.get(h1Var.f4268b)).f3968a.get(h1Var.c);
        if (socketAddress2 instanceof n7.u) {
            uVar = (n7.u) socketAddress2;
            socketAddress = uVar.c;
        } else {
            socketAddress = socketAddress2;
            uVar = null;
        }
        n7.b bVar = ((n7.r) h1Var.f4267a.get(h1Var.f4268b)).f3969b;
        String str = (String) bVar.f3887a.get(n7.r.d);
        y yVar = new y();
        yVar.f4503a = "unknown-authority";
        yVar.f4504b = n7.b.f3886b;
        if (str == null) {
            str = k1Var.f4307b;
        }
        o4.b.i(str, "authority");
        yVar.f4503a = str;
        yVar.f4504b = bVar;
        yVar.c = uVar;
        j1 j1Var = new j1();
        j1Var.f4287b = k1Var.f4306a;
        g1 g1Var = new g1(k1Var.e.I(socketAddress, yVar, j1Var), k1Var.f4310h);
        j1Var.f4287b = g1Var.c();
        k1Var.f4321u = g1Var;
        k1Var.f4320s.add(g1Var);
        Runnable runnableB = g1Var.b(new com.bumptech.glide.manager.t(k1Var, g1Var));
        if (runnableB != null) {
            k1Var2.b(runnableB);
        }
        k1Var.f4311i.n(2, "Started transport {0}", j1Var.f4287b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String h(n7.f1 f1Var) {
        StringBuilder sb = new StringBuilder();
        n7.e1 e1Var = f1Var.f3933a;
        Throwable th = f1Var.c;
        sb.append(e1Var);
        String str = f1Var.f3934b;
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        if (th != null) {
            sb.append("[");
            sb.append(th);
            sb.append("]");
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.z
    public final n7.a0 c() {
        return this.f4306a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(n7.k kVar) {
        this.f4313k.d();
        if (this.w.f3949a != kVar.f3949a) {
            o4.b.m(this.w.f3949a != n7.j.f3944f, "Cannot transition out of SHUTDOWN to " + kVar);
            this.w = kVar;
            ((n7.i0) this.d.c).a(kVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.b(this.f4306a.c, "logId");
        sVarT.c(this.f4315m, "addressGroups");
        return sVarT.toString();
    }
}
