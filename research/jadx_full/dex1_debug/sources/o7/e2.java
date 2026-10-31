package o7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e2 extends n7.t {
    public final n7.e0 d;
    public final n7.a0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final m f4194f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o f4195g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f4196h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public k1 f4197i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4198j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f4199k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public l.d f4200l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ f2 f4201m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e2(f2 f2Var, n7.e0 e0Var) {
        this.f4201m = f2Var;
        List list = e0Var.f3903b;
        this.f4196h = list;
        u2 u2Var = f2Var.f4228l;
        this.d = e0Var;
        n7.a0 a0Var = new n7.a0(n7.a0.d.incrementAndGet(), "Subchannel", f2Var.t.e());
        this.e = a0Var;
        o oVar = new o(a0Var, u2Var.q(), "Subchannel for " + list);
        this.f4195g = oVar;
        this.f4194f = new m(oVar, u2Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final List c() {
        this.f4201m.f4229m.d();
        o4.b.m(this.f4198j, "not started");
        return this.f4196h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final n7.b d() {
        return this.d.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final n7.e e() {
        return this.f4194f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final Object f() {
        o4.b.m(this.f4198j, "Subchannel is not started");
        return this.f4197i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void l() {
        this.f4201m.f4229m.d();
        o4.b.m(this.f4198j, "not started");
        k1 k1Var = this.f4197i;
        if (k1Var.f4322v != null) {
            return;
        }
        k1Var.f4313k.execute(new f1(k1Var, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void n() {
        l.d dVar;
        f2 f2Var = this.f4201m;
        f2Var.f4229m.d();
        if (this.f4197i == null) {
            this.f4199k = true;
            return;
        }
        if (!this.f4199k) {
            this.f4199k = true;
        } else {
            if (!f2Var.H || (dVar = this.f4200l) == null) {
                return;
            }
            dVar.j();
            this.f4200l = null;
        }
        if (!f2Var.H) {
            this.f4200l = f2Var.f4229m.c(new q1(new com.bumptech.glide.m(17, this)), 5L, TimeUnit.SECONDS, f2Var.f4222f.f4326b.e);
        } else {
            k1 k1Var = this.f4197i;
            k1Var.f4313k.execute(new e0(15, k1Var, f2.f4213e0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void p(n7.i0 i0Var) {
        f2 f2Var = this.f4201m;
        f2Var.f4229m.d();
        o4.b.m(!this.f4198j, "already started");
        o4.b.m(!this.f4199k, "already shutdown");
        o4.b.m(!f2Var.H, "Channel is being terminated");
        this.f4198j = true;
        List list = this.d.f3903b;
        String strE = f2Var.t.e();
        u2 u2Var = f2Var.f4234s;
        l lVar = f2Var.f4222f;
        ScheduledExecutorService scheduledExecutorService = lVar.f4326b.e;
        u2 u2Var2 = f2Var.f4232p;
        n7.k1 k1Var = f2Var.f4229m;
        w4 w4Var = new w4(4, this, i0Var);
        n7.x xVar = f2Var.O;
        f2Var.K.getClass();
        k1 k1Var2 = new k1(list, strE, u2Var, lVar, scheduledExecutorService, u2Var2, k1Var, w4Var, xVar, new b1.m(11), this.f4195g, this.e, this.f4194f, f2Var.f4235u);
        f2Var.M.b(new n7.w("Child Subchannel started", n7.v.f3976b, f2Var.f4228l.q(), k1Var2));
        this.f4197i = k1Var2;
        f2Var.A.add(k1Var2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void q(List list) {
        this.f4201m.f4229m.d();
        this.f4196h = list;
        k1 k1Var = this.f4197i;
        k1Var.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o4.b.i(it.next(), "newAddressGroups contains null entry");
        }
        o4.b.d("newAddressGroups is empty", !list.isEmpty());
        k1Var.f4313k.execute(new e0(14, k1Var, Collections.unmodifiableList(new ArrayList(list))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.e.toString();
    }
}
