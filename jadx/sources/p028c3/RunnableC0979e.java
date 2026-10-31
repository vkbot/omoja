package p028c3;

import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
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
import p016b1.AbstractC0880u;
import p102j4.AbstractC1966e;
import p102j4.C1963b;
import p102j4.C1964c;
import p120l.C2187d;
import p130l9.AbstractC2223b;
import p130l9.C2222a0;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2542t;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2511g1;
import p148n7.C2512h;
import p148n7.C2544u;
import p148n7.C2547v0;
import p148n7.EnumC2499c1;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;
import p148n7.RunnableC2520j1;
import p157o7.AbstractC2694p4;
import p157o7.AbstractC2743y0;
import p157o7.C2608b2;
import p157o7.C2632f2;
import p157o7.C2648i0;
import p157o7.C2744y1;
import p170p7.AbstractC2995t;
import p170p7.C2978c;
import p170p7.C2987l;
import p170p7.C2989n;
import p170p7.RunnableC2988m;
import p186r7.C3116h;
import p186r7.EnumC3109a;
import p223v7.C3350k;
import p223v7.C3351l;
import p223v7.C3352m;
import p223v7.C3353n;
import p223v7.C3354o;
import p223v7.C3359t;

/* JADX INFO: renamed from: c3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0979e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f912b;

    /* JADX INFO: renamed from: c */
    public final Object f913c;

    /* JADX INFO: renamed from: d */
    public final Object f914d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f915e;

    public /* synthetic */ RunnableC0979e(Object obj, Object obj2, Object obj3, int i10) {
        this.f912b = i10;
        this.f915e = obj;
        this.f913c = obj2;
        this.f914d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OverScroller overScroller;
        C2989n c2989n;
        RunnableC2988m runnableC2988m;
        Socket socketM4786f;
        SSLSession session;
        Socket socket;
        C1964c c1964c;
        C3354o c3354o;
        double d;
        int i10;
        int i11 = 0;
        switch (this.f912b) {
            case 0:
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f913c;
                AbstractC0980f abstractC0980f = (AbstractC0980f) this.f915e;
                View view = (View) this.f914d;
                if (view == null || (overScroller = abstractC0980f.f917d) == null) {
                    return;
                }
                if (overScroller.computeScrollOffset()) {
                    abstractC0980f.m1099e(coordinatorLayout, view, abstractC0980f.f917d.getCurrY());
                    view.postOnAnimation(this);
                    return;
                }
                AppBarLayout appBarLayout = (AppBarLayout) view;
                ((AppBarLayout.BaseBehavior) abstractC0980f).m1747k(coordinatorLayout, appBarLayout);
                if (appBarLayout.f2053l) {
                    appBarLayout.m1738e(appBarLayout.m1739f(AppBarLayout.BaseBehavior.m1742h(coordinatorLayout)));
                    return;
                }
                return;
            case 1:
                ((ExecutorC2523k1) this.f915e).execute((RunnableC2520j1) this.f913c);
                return;
            case 2:
                ((C2608b2) this.f915e).f7316i.mo3984o((AbstractC2503e) this.f913c, (C2547v0) this.f914d);
                return;
            case 3:
                ((C2648i0) this.f915e).f7516b.mo3907o((C2508f1) this.f913c, (C2547v0) this.f914d);
                return;
            case 4:
                EnumC2518j enumC2518j = (EnumC2518j) this.f914d;
                AbstractC2513h0 abstractC2513h0 = (AbstractC2513h0) this.f913c;
                C2744y1 c2744y1 = (C2744y1) this.f915e;
                C2632f2 c2632f2 = c2744y1.f7894c;
                if (c2744y1 != c2632f2.f7448x) {
                    return;
                }
                c2632f2.f7449y = abstractC2513h0;
                c2632f2.f7401E.m4184g(abstractC2513h0);
                if (enumC2518j != EnumC2518j.f6972f) {
                    c2744y1.f7894c.f7410N.mo3906n(2, "Entering {0} state with picker: {1}", enumC2518j, abstractC2513h0);
                    c2744y1.f7894c.f7442r.m1075c(enumC2518j);
                    return;
                }
                return;
            case 5:
                try {
                    ((CountDownLatch) this.f913c).await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
                C2222a0 c2222a0 = new C2222a0(new C2987l());
                try {
                    try {
                        try {
                            C2989n c2989n2 = (C2989n) this.f915e;
                            C2544u c2544u = c2989n2.f8385N;
                            if (c2544u == null) {
                                socketM4786f = c2989n2.f8372A.createSocket(c2989n2.f8387a.getAddress(), ((C2989n) this.f915e).f8387a.getPort());
                            } else {
                                SocketAddress socketAddress = c2544u.f7029b;
                                if (!(socketAddress instanceof InetSocketAddress)) {
                                    throw new C2511g1(C2508f1.f6944l.m3934h("Unsupported SocketAddress implementation " + ((C2989n) this.f915e).f8385N.f7029b.getClass()));
                                }
                                socketM4786f = C2989n.m4786f(c2989n2, c2544u.f7030c, (InetSocketAddress) socketAddress, c2544u.f7031d, c2544u.f7032e);
                            }
                            C2989n c2989n3 = (C2989n) this.f915e;
                            SSLSocketFactory sSLSocketFactory = c2989n3.f8373B;
                            if (sSLSocketFactory != null) {
                                String host = c2989n3.f8388b;
                                URI uriM4257a = AbstractC2743y0.m4257a(host);
                                if (uriM4257a.getHost() != null) {
                                    host = uriM4257a.getHost();
                                }
                                SSLSocket sSLSocketM4807a = AbstractC2995t.m4807a(sSLSocketFactory, socketM4786f, host, ((C2989n) this.f915e).m4792j(), ((C2989n) this.f915e).f8376E);
                                session = sSLSocketM4807a.getSession();
                                socket = sSLSocketM4807a;
                            } else {
                                session = null;
                                socket = socketM4786f;
                            }
                            socket.setTcpNoDelay(true);
                            C2222a0 c2222a0M3569b = AbstractC2223b.m3569b(AbstractC2223b.m3575h(socket));
                            ((C2978c) this.f914d).m4773b(AbstractC2223b.m3574g(socket), socket);
                            C2989n c2989n4 = (C2989n) this.f915e;
                            C2494b c2494b = c2989n4.f8407u;
                            c2494b.getClass();
                            C2187d c2187d = new C2187d(3, c2494b);
                            c2187d.m3472M(AbstractC2542t.f7024a, socket.getRemoteSocketAddress());
                            c2187d.m3472M(AbstractC2542t.f7025b, socket.getLocalSocketAddress());
                            c2187d.m3472M(AbstractC2542t.f7026c, session);
                            c2187d.m3472M(AbstractC2694p4.f7703a, session == null ? EnumC2499c1.f6900b : EnumC2499c1.f6901c);
                            c2989n4.f8407u = c2187d.m3480g();
                            C2989n c2989n5 = (C2989n) this.f915e;
                            c2989n5.f8393g.getClass();
                            c2989n5.f8406t = new RunnableC2988m(c2989n5, new C3116h(c2222a0M3569b));
                            synchronized (((C2989n) this.f915e).f8397k) {
                                if (session != null) {
                                    try {
                                        new C2512h(session);
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                break;
                            }
                            return;
                        } catch (Exception e) {
                            ((C2989n) this.f915e).m4796n(e);
                            c2989n = (C2989n) this.f915e;
                            c2989n.f8393g.getClass();
                            runnableC2988m = new RunnableC2988m(c2989n, new C3116h(c2222a0));
                            c2989n.f8406t = runnableC2988m;
                            return;
                        }
                    } catch (C2511g1 e6) {
                        ((C2989n) this.f915e).m4799r(0, EnumC3109a.INTERNAL_ERROR, e6.f6954b);
                        c2989n = (C2989n) this.f915e;
                        c2989n.f8393g.getClass();
                        runnableC2988m = new RunnableC2988m(c2989n, new C3116h(c2222a0));
                        c2989n.f8406t = runnableC2988m;
                        return;
                    }
                } catch (Throwable th2) {
                    C2989n c2989n6 = (C2989n) this.f915e;
                    c2989n6.f8393g.getClass();
                    c2989n6.f8406t = new RunnableC2988m(c2989n6, new C3116h(c2222a0));
                    throw th2;
                }
                break;
            default:
                C3359t c3359t = (C3359t) this.f915e;
                c3359t.f9826l = Long.valueOf(c3359t.f9823i.m4245q());
                for (C3350k c3350k : ((C3359t) this.f915e).f9820f.f9792b.values()) {
                    C2187d c2187d2 = c3350k.f9788c;
                    ((AtomicLong) c2187d2.f5705c).set(0L);
                    ((AtomicLong) c2187d2.f5706d).set(0L);
                    C2187d c2187d3 = c3350k.f9787b;
                    c3350k.f9787b = c3350k.f9788c;
                    c3350k.f9788c = c2187d3;
                }
                C3354o c3354o2 = (C3354o) this.f913c;
                AbstractC2503e abstractC2503e = (AbstractC2503e) this.f914d;
                C1964c c1964c2 = AbstractC1966e.f5354c;
                C1963b c1963b = new C1963b(0);
                AbstractC0880u.m996c(4, "initialCapacity");
                c1963b.f5347d = new Object[4];
                c1963b.f5345b = 0;
                if (c3354o2.f9804e != null) {
                    c1963b.m3065a(new C3352m(c3354o2, abstractC2503e, 1));
                }
                if (c3354o2.f9805f != null) {
                    c1963b.m3065a(new C3352m(c3354o2, abstractC2503e, 0));
                }
                c1963b.f5346c = true;
                C1964c c1964cListIterator = AbstractC1966e.m3068i(c1963b.f5345b, (Object[]) c1963b.f5347d).listIterator(0);
                while (c1964cListIterator.hasNext()) {
                    C3352m c3352m = (C3352m) c1964cListIterator.next();
                    C3359t c3359t2 = (C3359t) this.f915e;
                    C3351l c3351l = c3359t2.f9820f;
                    long jLongValue = c3359t2.f9826l.longValue();
                    switch (c3352m.f9793a) {
                        case 0:
                            c1964c = c1964cListIterator;
                            C3354o c3354o3 = c3352m.f9794b;
                            ArrayList arrayListM5270h = C3359t.m5270h(c3351l, c3354o3.f9805f.f9799d.intValue());
                            int size = arrayListM5270h.size();
                            C3353n c3353n = c3354o3.f9805f;
                            if (size >= c3353n.f9798c.intValue() && arrayListM5270h.size() != 0) {
                                int size2 = arrayListM5270h.size();
                                int i12 = 0;
                                while (i12 < size2) {
                                    Object obj = arrayListM5270h.get(i12);
                                    i12++;
                                    C3350k c3350k2 = (C3350k) obj;
                                    if (c3351l.m5267a() >= c3354o3.f9803d.intValue()) {
                                    }
                                    if (c3350k2.m5264c() >= c3353n.f9799d.intValue()) {
                                        ArrayList arrayList = arrayListM5270h;
                                        int i13 = size2;
                                        if (((AtomicLong) c3350k2.f9788c.f5706d).get() / c3350k2.m5264c() > ((double) c3353n.f9796a.intValue()) / 100.0d) {
                                            c3352m.f9795c.mo3906n(1, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}", c3350k2, Double.valueOf(((AtomicLong) c3350k2.f9788c.f5706d).get() / c3350k2.m5264c()));
                                            if (new Random().nextInt(100) < c3353n.f9797b.intValue()) {
                                                c3350k2.m5263b(jLongValue);
                                            }
                                        }
                                        arrayListM5270h = arrayList;
                                        size2 = i13;
                                    }
                                    break;
                                }
                            }
                            break;
                        default:
                            C3354o c3354o4 = c3352m.f9794b;
                            ArrayList arrayListM5270h2 = C3359t.m5270h(c3351l, c3354o4.f9804e.f9799d.intValue());
                            int size3 = arrayListM5270h2.size();
                            C3353n c3353n2 = c3354o4.f9804e;
                            if (size3 < c3353n2.f9798c.intValue() || arrayListM5270h2.size() == 0) {
                                c1964c = c1964cListIterator;
                            }
                            ArrayList arrayList2 = new ArrayList();
                            int size4 = arrayListM5270h2.size();
                            int i14 = i11;
                            while (i14 < size4) {
                                Object obj2 = arrayListM5270h2.get(i14);
                                i14++;
                                C3350k c3350k3 = (C3350k) obj2;
                                arrayList2.add(Double.valueOf(((AtomicLong) c3350k3.f9788c.f5705c).get() / c3350k3.m5264c()));
                                arrayListM5270h2 = arrayListM5270h2;
                            }
                            ArrayList arrayList3 = arrayListM5270h2;
                            int size5 = arrayList2.size();
                            double d10 = 0.0d;
                            double dDoubleValue = 0.0d;
                            int i15 = 0;
                            while (i15 < size5) {
                                Object obj3 = arrayList2.get(i15);
                                i15++;
                                dDoubleValue = ((Double) obj3).doubleValue() + dDoubleValue;
                            }
                            double size6 = dDoubleValue / ((double) arrayList2.size());
                            int size7 = arrayList2.size();
                            int i16 = 0;
                            while (i16 < size7) {
                                Object obj4 = arrayList2.get(i16);
                                i16++;
                                double dDoubleValue2 = ((Double) obj4).doubleValue() - size6;
                                d10 = (dDoubleValue2 * dDoubleValue2) + d10;
                            }
                            double dSqrt = Math.sqrt(d10 / ((double) arrayList2.size()));
                            double dIntValue = size6 - (((double) (c3353n2.f9796a.intValue() / 1000.0f)) * dSqrt);
                            int size8 = arrayList3.size();
                            int i17 = 0;
                            while (true) {
                                if (i17 >= size8) {
                                    c1964c = c1964cListIterator;
                                }
                                c1964c = c1964cListIterator;
                                ArrayList arrayList4 = arrayList3;
                                Object obj5 = arrayList4.get(i17);
                                i17++;
                                C3350k c3350k4 = (C3350k) obj5;
                                double d11 = dSqrt;
                                if (c3351l.m5267a() >= c3354o4.f9803d.intValue()) {
                                }
                                if (((AtomicLong) c3350k4.f9788c.f5705c).get() / c3350k4.m5264c() < dIntValue) {
                                    c3354o = c3354o4;
                                    d = dIntValue;
                                    i10 = size8;
                                    c3352m.f9795c.mo3906n(1, "SuccessRate algorithm detected outlier: {0}. Parameters: successRate={1}, mean={2}, stdev={3}, requiredSuccessRate={4}", c3350k4, Double.valueOf(((AtomicLong) c3350k4.f9788c.f5705c).get() / c3350k4.m5264c()), Double.valueOf(size6), Double.valueOf(d11), Double.valueOf(d));
                                    if (new Random().nextInt(100) < c3353n2.f9797b.intValue()) {
                                        c3350k4.m5263b(jLongValue);
                                    }
                                } else {
                                    c3354o = c3354o4;
                                    d = dIntValue;
                                    i10 = size8;
                                }
                                c3354o4 = c3354o;
                                c1964cListIterator = c1964c;
                                arrayList3 = arrayList4;
                                dIntValue = d;
                                dSqrt = d11;
                                size8 = i10;
                                break;
                                break;
                            }
                            break;
                            break;
                    }
                    c1964cListIterator = c1964c;
                    i11 = 0;
                }
                C3359t c3359t3 = (C3359t) this.f915e;
                C3351l c3351l2 = c3359t3.f9820f;
                Long l10 = c3359t3.f9826l;
                for (C3350k c3350k5 : c3351l2.f9792b.values()) {
                    if (!c3350k5.m5265d()) {
                        int i18 = c3350k5.f9790e;
                        c3350k5.f9790e = i18 == 0 ? 0 : i18 - 1;
                    }
                    if (c3350k5.m5265d()) {
                        if (l10.longValue() > Math.min(c3350k5.f9786a.f9801b.longValue() * ((long) c3350k5.f9790e), Math.max(c3350k5.f9786a.f9801b.longValue(), c3350k5.f9786a.f9802c.longValue())) + c3350k5.f9789d.longValue()) {
                            c3350k5.m5266e();
                        }
                    }
                }
                return;
        }
    }

    public String toString() {
        switch (this.f912b) {
            case 1:
                return ((Runnable) this.f914d).toString() + "(scheduled in SynchronizationContext)";
            default:
                return super.toString();
        }
    }
}
