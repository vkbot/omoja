package v7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import n7.f1;
import n7.g0;
import n7.i1;
import n7.j0;
import n7.j1;
import n7.k1;
import o7.o4;
import o7.u2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t extends j0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final n7.a f5573n = new n7.a("addressTrackerKey");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final l f5574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final k1 f5575g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f5576h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u2 f5577i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ScheduledExecutorService f5578j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public l.d f5579k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Long f5580l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final n7.e f5581m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(n7.e eVar) {
        u2 u2Var = u2.d;
        n7.e eVarC = eVar.c();
        this.f5581m = eVarC;
        this.f5576h = new e(new d(this, eVar));
        this.f5574f = new l();
        k1 k1VarF = eVar.f();
        o4.b.i(k1VarF, "syncContext");
        this.f5575g = k1VarF;
        ScheduledExecutorService scheduledExecutorServiceD = eVar.d();
        o4.b.i(scheduledExecutorServiceD, "timeService");
        this.f5578j = scheduledExecutorServiceD;
        this.f5577i = u2Var;
        eVarC.m(1, "OutlierDetection lb created.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean g(List list) {
        Iterator it = list.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += ((n7.r) it.next()).f3968a.size();
            if (size > 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList h(l lVar, int i9) {
        ArrayList arrayList = new ArrayList();
        for (k kVar : lVar.f5555b.values()) {
            if (kVar.c() >= i9) {
                arrayList.add(kVar);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final f1 a(g0 g0Var) {
        e eVar = this.f5576h;
        l lVar = this.f5574f;
        n7.e eVar2 = this.f5581m;
        eVar2.n(1, "Received resolution result: {0}", g0Var);
        o oVar = (o) g0Var.c;
        ArrayList arrayList = new ArrayList();
        Iterator it = g0Var.f3935a.iterator();
        while (it.hasNext()) {
            arrayList.addAll(((n7.r) it.next()).f3968a);
        }
        lVar.f5555b.keySet().retainAll(arrayList);
        Iterator it2 = lVar.f5555b.values().iterator();
        while (it2.hasNext()) {
            ((k) it2.next()).f5552a = oVar;
        }
        HashMap map = lVar.f5555b;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            SocketAddress socketAddress = (SocketAddress) obj;
            if (!map.containsKey(socketAddress)) {
                map.put(socketAddress, new k(oVar));
            }
        }
        o4 o4Var = oVar.f5563g;
        Long l9 = oVar.f5560a;
        eVar.i(o4Var.f4361a);
        if (oVar.e == null && oVar.f5562f == null) {
            l.d dVar = this.f5579k;
            if (dVar != null) {
                dVar.j();
                this.f5580l = null;
                for (k kVar : lVar.f5555b.values()) {
                    if (kVar.d()) {
                        kVar.e();
                    }
                    kVar.e = 0;
                }
            }
        } else {
            Long lValueOf = this.f5580l == null ? l9 : Long.valueOf(Math.max(0L, l9.longValue() - (this.f5577i.q() - this.f5580l.longValue())));
            l.d dVar2 = this.f5579k;
            if (dVar2 != null) {
                dVar2.j();
                for (k kVar2 : lVar.f5555b.values()) {
                    l.d dVar3 = kVar2.f5553b;
                    ((AtomicLong) dVar3.c).set(0L);
                    ((AtomicLong) dVar3.d).set(0L);
                    l.d dVar4 = kVar2.c;
                    ((AtomicLong) dVar4.c).set(0L);
                    ((AtomicLong) dVar4.d).set(0L);
                }
            }
            k1 k1Var = this.f5575g;
            c3.e eVar3 = new c3.e(this, oVar, eVar2, 6);
            long jLongValue = lValueOf.longValue();
            long jLongValue2 = l9.longValue();
            ScheduledExecutorService scheduledExecutorService = this.f5578j;
            k1Var.getClass();
            j1 j1Var = new j1(eVar3);
            this.f5579k = new l.d(j1Var, scheduledExecutorService.scheduleWithFixedDelay(new i1(k1Var, j1Var, eVar3, jLongValue2), jLongValue, jLongValue2, TimeUnit.NANOSECONDS));
        }
        n7.b bVar = n7.b.f3886b;
        eVar.d(new g0(g0Var.f3935a, g0Var.f3936b, oVar.f5563g.f4362b));
        return f1.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void c(f1 f1Var) {
        this.f5576h.c(f1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void f() {
        this.f5576h.f();
    }
}
