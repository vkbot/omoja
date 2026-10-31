package c3;

import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout$BaseBehavior;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import l9.a0;
import n7.c1;
import n7.f1;
import n7.g1;
import n7.h0;
import n7.j1;
import n7.k1;
import n7.u;
import n7.v0;
import o7.b2;
import o7.f2;
import o7.i0;
import o7.p4;
import o7.y0;
import o7.y1;
import p7.l;
import p7.m;
import p7.n;
import p7.t;
import v7.k;
import v7.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f479b;
    public final Object c;
    public final Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(Object obj, Object obj2, Object obj3, int i9) {
        this.f479b = i9;
        this.e = obj;
        this.c = obj2;
        this.d = obj3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        OverScroller overScroller;
        n nVar;
        m mVar;
        Socket socketF;
        SSLSession session;
        Socket socket;
        j4.c cVar;
        o oVar;
        double d;
        int i9;
        int i10 = 0;
        switch (this.f479b) {
            case 0:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.c;
                f fVar = (f) this.e;
                View view = (View) this.d;
                if (view == null || (overScroller = fVar.d) == null) {
                    return;
                }
                if (overScroller.computeScrollOffset()) {
                    fVar.e(coordinatorLayout, view, fVar.d.getCurrY());
                    view.postOnAnimation(this);
                    return;
                }
                AppBarLayout appBarLayout = (AppBarLayout) view;
                ((AppBarLayout$BaseBehavior) fVar).k(coordinatorLayout, appBarLayout);
                if (appBarLayout.f1109l) {
                    appBarLayout.e(appBarLayout.f(AppBarLayout$BaseBehavior.h(coordinatorLayout)));
                    return;
                }
                return;
            case 1:
                ((k1) this.e).execute((j1) this.c);
                return;
            case 2:
                ((b2) this.e).f4161i.o((n7.e) this.c, (v0) this.d);
                return;
            case 3:
                ((i0) this.e).f4277b.o((f1) this.c, (v0) this.d);
                return;
            case 4:
                n7.j jVar = (n7.j) this.d;
                h0 h0Var = (h0) this.c;
                y1 y1Var = (y1) this.e;
                f2 f2Var = y1Var.c;
                if (y1Var != f2Var.f4237x) {
                    return;
                }
                f2Var.f4238y = h0Var;
                f2Var.E.g(h0Var);
                if (jVar != n7.j.f3944f) {
                    y1Var.c.N.n(2, "Entering {0} state with picker: {1}", jVar, h0Var);
                    y1Var.c.r.c(jVar);
                    return;
                }
                return;
            case 5:
                try {
                    ((CountDownLatch) this.c).await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
                a0 a0Var = new a0(new l());
                try {
                    try {
                        try {
                            n nVar2 = (n) this.e;
                            u uVar = nVar2.N;
                            if (uVar == null) {
                                socketF = nVar2.A.createSocket(nVar2.f4659a.getAddress(), ((n) this.e).f4659a.getPort());
                            } else {
                                SocketAddress socketAddress = uVar.f3975b;
                                if (!(socketAddress instanceof InetSocketAddress)) {
                                    throw new g1(f1.f3929l.h("Unsupported SocketAddress implementation " + ((n) this.e).N.f3975b.getClass()));
                                }
                                socketF = n.f(nVar2, uVar.c, (InetSocketAddress) socketAddress, uVar.d, uVar.e);
                            }
                            n nVar3 = (n) this.e;
                            SSLSocketFactory sSLSocketFactory = nVar3.B;
                            if (sSLSocketFactory != null) {
                                String host = nVar3.f4660b;
                                URI uriA = y0.a(host);
                                if (uriA.getHost() != null) {
                                    host = uriA.getHost();
                                }
                                SSLSocket sSLSocketA = t.a(sSLSocketFactory, socketF, host, ((n) this.e).j(), ((n) this.e).E);
                                session = sSLSocketA.getSession();
                                socket = sSLSocketA;
                            } else {
                                session = null;
                                socket = socketF;
                            }
                            socket.setTcpNoDelay(true);
                            a0 a0VarB = l9.b.b(l9.b.h(socket));
                            ((p7.c) this.d).b(l9.b.g(socket), socket);
                            n nVar4 = (n) this.e;
                            n7.b bVar = nVar4.f4674u;
                            bVar.getClass();
                            l.d dVar = new l.d(3, bVar);
                            dVar.M(n7.t.f3972a, socket.getRemoteSocketAddress());
                            dVar.M(n7.t.f3973b, socket.getLocalSocketAddress());
                            dVar.M(n7.t.c, session);
                            dVar.M(p4.f4393a, session == null ? c1.f3899b : c1.c);
                            nVar4.f4674u = dVar.g();
                            n nVar5 = (n) this.e;
                            nVar5.f4662g.getClass();
                            nVar5.t = new m(nVar5, new r7.h(a0VarB));
                            synchronized (((n) this.e).f4666k) {
                                if (session != null) {
                                    try {
                                        new n7.h(session);
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                break;
                            }
                            return;
                        } catch (Throwable th2) {
                            n nVar6 = (n) this.e;
                            nVar6.f4662g.getClass();
                            nVar6.t = new m(nVar6, new r7.h(a0Var));
                            throw th2;
                        }
                    } catch (g1 e) {
                        ((n) this.e).r(0, r7.a.INTERNAL_ERROR, e.f3937b);
                        nVar = (n) this.e;
                        nVar.f4662g.getClass();
                        mVar = new m(nVar, new r7.h(a0Var));
                        nVar.t = mVar;
                        return;
                    }
                } catch (Exception e6) {
                    ((n) this.e).n(e6);
                    nVar = (n) this.e;
                    nVar.f4662g.getClass();
                    mVar = new m(nVar, new r7.h(a0Var));
                    nVar.t = mVar;
                    return;
                }
                break;
            default:
                v7.t tVar = (v7.t) this.e;
                tVar.f5580l = Long.valueOf(tVar.f5577i.q());
                for (k kVar : ((v7.t) this.e).f5574f.f5555b.values()) {
                    l.d dVar2 = kVar.c;
                    ((AtomicLong) dVar2.c).set(0L);
                    ((AtomicLong) dVar2.d).set(0L);
                    l.d dVar3 = kVar.f5553b;
                    kVar.f5553b = kVar.c;
                    kVar.c = dVar3;
                }
                o oVar2 = (o) this.c;
                n7.e eVar = (n7.e) this.d;
                j4.c cVar2 = j4.e.c;
                j4.b bVar2 = new j4.b(0);
                b1.u.c(4, "initialCapacity");
                bVar2.d = new Object[4];
                bVar2.f3046b = 0;
                if (oVar2.e != null) {
                    bVar2.a(new v7.m(oVar2, eVar, 1));
                }
                if (oVar2.f5562f != null) {
                    bVar2.a(new v7.m(oVar2, eVar, 0));
                }
                bVar2.c = true;
                j4.c cVarJ = j4.e.i(bVar2.f3046b, (Object[]) bVar2.d).j(0);
                while (cVarJ.hasNext()) {
                    v7.m mVar2 = (v7.m) cVarJ.next();
                    v7.t tVar2 = (v7.t) this.e;
                    v7.l lVar = tVar2.f5574f;
                    long jLongValue = tVar2.f5580l.longValue();
                    switch (mVar2.f5556a) {
                        case 0:
                            cVar = cVarJ;
                            o oVar3 = mVar2.f5557b;
                            ArrayList arrayListH = v7.t.h(lVar, oVar3.f5562f.d.intValue());
                            int size = arrayListH.size();
                            v7.n nVar7 = oVar3.f5562f;
                            if (size >= nVar7.c.intValue() && arrayListH.size() != 0) {
                                int size2 = arrayListH.size();
                                int i11 = 0;
                                while (i11 < size2) {
                                    Object obj = arrayListH.get(i11);
                                    i11++;
                                    k kVar2 = (k) obj;
                                    if (lVar.a() >= oVar3.d.intValue()) {
                                    }
                                    if (kVar2.c() >= nVar7.d.intValue()) {
                                        ArrayList arrayList = arrayListH;
                                        int i12 = size2;
                                        if (((AtomicLong) kVar2.c.d).get() / kVar2.c() > ((double) nVar7.f5558a.intValue()) / 100.0d) {
                                            mVar2.c.n(1, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}", kVar2, Double.valueOf(((AtomicLong) kVar2.c.d).get() / kVar2.c()));
                                            if (new Random().nextInt(100) < nVar7.f5559b.intValue()) {
                                                kVar2.b(jLongValue);
                                            }
                                        }
                                        arrayListH = arrayList;
                                        size2 = i12;
                                    }
                                    break;
                                }
                            }
                            break;
                        default:
                            o oVar4 = mVar2.f5557b;
                            ArrayList arrayListH2 = v7.t.h(lVar, oVar4.e.d.intValue());
                            int size3 = arrayListH2.size();
                            v7.n nVar8 = oVar4.e;
                            if (size3 < nVar8.c.intValue() || arrayListH2.size() == 0) {
                                cVar = cVarJ;
                            }
                            ArrayList arrayList2 = new ArrayList();
                            int size4 = arrayListH2.size();
                            int i13 = i10;
                            while (i13 < size4) {
                                Object obj2 = arrayListH2.get(i13);
                                i13++;
                                k kVar3 = (k) obj2;
                                arrayList2.add(Double.valueOf(((AtomicLong) kVar3.c.c).get() / kVar3.c()));
                                arrayListH2 = arrayListH2;
                            }
                            ArrayList arrayList3 = arrayListH2;
                            int size5 = arrayList2.size();
                            double d9 = 0.0d;
                            double dDoubleValue = 0.0d;
                            int i14 = 0;
                            while (i14 < size5) {
                                Object obj3 = arrayList2.get(i14);
                                i14++;
                                dDoubleValue = ((Double) obj3).doubleValue() + dDoubleValue;
                            }
                            double size6 = dDoubleValue / ((double) arrayList2.size());
                            int size7 = arrayList2.size();
                            int i15 = 0;
                            while (i15 < size7) {
                                Object obj4 = arrayList2.get(i15);
                                i15++;
                                double dDoubleValue2 = ((Double) obj4).doubleValue() - size6;
                                d9 = (dDoubleValue2 * dDoubleValue2) + d9;
                            }
                            double dSqrt = Math.sqrt(d9 / ((double) arrayList2.size()));
                            double dIntValue = size6 - (((double) (nVar8.f5558a.intValue() / 1000.0f)) * dSqrt);
                            int size8 = arrayList3.size();
                            int i16 = 0;
                            while (true) {
                                if (i16 >= size8) {
                                    cVar = cVarJ;
                                }
                                cVar = cVarJ;
                                ArrayList arrayList4 = arrayList3;
                                Object obj5 = arrayList4.get(i16);
                                i16++;
                                k kVar4 = (k) obj5;
                                double d10 = dSqrt;
                                if (lVar.a() >= oVar4.d.intValue()) {
                                }
                                if (((AtomicLong) kVar4.c.c).get() / kVar4.c() < dIntValue) {
                                    oVar = oVar4;
                                    d = dIntValue;
                                    i9 = size8;
                                    mVar2.c.n(1, "SuccessRate algorithm detected outlier: {0}. Parameters: successRate={1}, mean={2}, stdev={3}, requiredSuccessRate={4}", kVar4, Double.valueOf(((AtomicLong) kVar4.c.c).get() / kVar4.c()), Double.valueOf(size6), Double.valueOf(d10), Double.valueOf(d));
                                    if (new Random().nextInt(100) < nVar8.f5559b.intValue()) {
                                        kVar4.b(jLongValue);
                                    }
                                } else {
                                    oVar = oVar4;
                                    d = dIntValue;
                                    i9 = size8;
                                }
                                oVar4 = oVar;
                                cVarJ = cVar;
                                arrayList3 = arrayList4;
                                dIntValue = d;
                                dSqrt = d10;
                                size8 = i9;
                                break;
                                break;
                            }
                            break;
                            break;
                    }
                    cVarJ = cVar;
                    i10 = 0;
                }
                v7.t tVar3 = (v7.t) this.e;
                v7.l lVar2 = tVar3.f5574f;
                Long l9 = tVar3.f5580l;
                for (k kVar5 : lVar2.f5555b.values()) {
                    if (!kVar5.d()) {
                        int i17 = kVar5.e;
                        kVar5.e = i17 == 0 ? 0 : i17 - 1;
                    }
                    if (kVar5.d()) {
                        if (l9.longValue() > Math.min(kVar5.f5552a.f5561b.longValue() * ((long) kVar5.e), Math.max(kVar5.f5552a.f5561b.longValue(), kVar5.f5552a.c.longValue())) + kVar5.d.longValue()) {
                            kVar5.e();
                        }
                    }
                }
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f479b) {
            case 1:
                return ((Runnable) this.d).toString() + "(scheduled in SynchronizationContext)";
            default:
                return super.toString();
        }
    }
}
