package p062f5;

import android.support.v4.media.C0090h;
import android.text.TextUtils;
import androidx.constraintlayout.core.state.C0275a;
import androidx.constraintlayout.core.utils.C0279a;
import com.bumptech.glide.AbstractC1034g;
import com.google.firebase.inappmessaging.model.MessageType;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1200x0;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.Executor;
import p010a9.C0061w;
import p023b8.InterfaceC0928b;
import p023b8.InterfaceC0929c;
import p023b8.InterfaceC0930d;
import p042d5.C1294o;
import p042d5.C1296q;
import p042d5.C1297r;
import p042d5.C1298s;
import p042d5.C1299t;
import p044d7.CallableC1311b;
import p045d8.AbstractC1314b;
import p045d8.CallableC1313a;
import p047e0.C1357g;
import p047e0.RunnableC1375j2;
import p050e3.C1461d;
import p054e8.InterfaceCallableC1502e;
import p075g8.C1626b;
import p075g8.C1628d;
import p085h8.C1685a0;
import p085h8.C1706l;
import p085h8.C1720s;
import p085h8.C1724w;
import p092i5.C1750a;
import p095i8.C1778c;
import p095i8.C1779d;
import p095i8.C1781f;
import p095i8.C1782g;
import p095i8.C1784i;
import p095i8.C1786k;
import p095i8.C1793r;
import p095i8.C1796u;
import p095i8.CallableC1787l;
import p099j1.C1929i;
import p103j5.AbstractC1986h;
import p103j5.C1979a;
import p103j5.C1981c;
import p103j5.C1982d;
import p103j5.C1983e;
import p103j5.C1984f;
import p103j5.C1985g;
import p103j5.C1987i;
import p103j5.C1988j;
import p103j5.C1990l;
import p103j5.C1991m;
import p106j8.C2000c;
import p106j8.C2001d;
import p106j8.C2002e;
import p106j8.C2005h;
import p106j8.C2009l;
import p116k8.C2057a;
import p116k8.C2058b;
import p126l5.C2209d;
import p126l5.C2212g;
import p126l5.RunnableC2208c;
import p141n.C2455p;
import p155o4.AbstractC2587b;
import p157o7.C2599a;
import p165p2.C2962e;
import p184r5.C3105c;
import p232w7.C3537c;
import p240x5.C3577c;
import p242x7.AbstractC3585b;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3590g;
import p242x7.AbstractC3594k;
import p250y5.C3648c;
import p250y5.C3654i;
import p258z3.C3720f;

/* JADX INFO: renamed from: f5.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1567q implements InterfaceC0928b, InterfaceC0929c, InterfaceC0930d {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3853b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1570t f3854c;

    public /* synthetic */ C1567q(C1570t c1570t, String str) {
        this.f3853b = 3;
        this.f3854c = c1570t;
    }

    @Override // p023b8.InterfaceC0928b
    public void accept(Object obj) {
        C3654i c3654i = (C3654i) obj;
        switch (this.f3853b) {
            case 0:
                C1565o c1565o = this.f3854c.f3867g;
                c1565o.getClass();
                HashSet hashSet = new HashSet();
                for (C3577c c3577c : c3654i.m5854q()) {
                    hashSet.add(AbstractC1034g.m1294a(c3577c.m5696r(), 1) ? c3577c.m5699u().m5702o() : c3577c.m5694p().m5688o());
                }
                C1461d.m2513m("Potential impressions to clear: " + hashSet.toString());
                AbstractC3588e abstractC3588eM2645a = c1565o.m2645a();
                C3648c c3648c = C1565o.f3849c;
                AbstractC1314b.m2356a(c3648c, "item is null");
                new C1784i(abstractC3588eM2645a.m5718e(AbstractC3588e.m5715a(c3648c)), new C1548f(1, c1565o, hashSet)).m1010z();
                break;
            default:
                C1550g c1550g = this.f3854c.f3863c;
                C1575y c1575y = c1550g.f3807a;
                c1575y.getClass();
                C1626b c1626b = new C1626b(new CallableC1574x(1, c1575y, c3654i));
                C1548f c1548f = new C1548f(0, c1550g, c3654i);
                C3720f c3720f = AbstractC1314b.f3136d;
                new C1626b(new C1628d(new C1628d(new C1628d(c1626b, c3720f, c1548f), c3720f, new C1357g(19)), new C1357g(20), AbstractC1314b.f3135c), new C1357g(21)).m1010z();
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) throws Exception {
        String strM5702o;
        String strM5703p;
        C1984f c1984f;
        C1979a c1979a;
        AbstractC1986h c1981c;
        AbstractC1986h c1988j;
        C1984f c1984f2;
        C1984f c1984f3;
        C1979a c1979a2;
        C1984f c1984f4;
        C1984f c1984f5;
        AbstractC3590g c2005h;
        int i10 = 1;
        int i11 = 0;
        switch (this.f3853b) {
            case 1:
                final C1570t c1570t = this.f3854c;
                final String str = (String) obj;
                C1550g c1550g = c1570t.f3863c;
                c1550g.getClass();
                CallableC1787l callableC1787l = new CallableC1787l(new CallableC1311b(1, c1550g));
                C1575y c1575y = c1550g.f3807a;
                InterfaceC1200x0 interfaceC1200x0M5852s = C3654i.m5852s();
                c1575y.getClass();
                CallableC1787l callableC1787l2 = new CallableC1787l(new CallableC1574x(0, c1575y, interfaceC1200x0M5852s));
                C1546e c1546e = new C1546e(c1550g, 0);
                C3720f c3720f = AbstractC1314b.f3136d;
                AbstractC3588e abstractC3588eM5716b = new C1793r(new C1793r(new C1793r(new C1781f(callableC1787l.m5718e(new C1793r(callableC1787l2, c1546e, c3720f)), new C1546e(c1550g, 1), 0), c3720f, new C1546e(c1550g, 2)), new C1357g(24), c3720f), c3720f, new C1357g(25)).m5716b(C1779d.f4673b);
                int i12 = 4;
                C1567q c1567q = new C1567q(c1570t, i12);
                final C1567q c1567q2 = new C1567q(c1570t, 5);
                final C1548f c1548f = new C1548f(6, c1570t, str);
                final C1357g c1357g = new C1357g(26);
                InterfaceC0929c interfaceC0929c = new InterfaceC0929c() { // from class: f5.s
                    @Override // p023b8.InterfaceC0929c
                    public final Object apply(Object obj2) {
                        C1570t c1570t2 = c1570t;
                        c1570t2.getClass();
                        InterfaceC1129a0 interfaceC1129a0M5854q = ((C3654i) obj2).m5854q();
                        int i13 = AbstractC3585b.f10653b;
                        AbstractC1314b.m2356a(interfaceC1129a0M5854q, "source is null");
                        C1724w c1724w = new C1724w(new C1706l(2, interfaceC1129a0M5854q), new C1567q(c1570t2, 2), 0);
                        String str2 = str;
                        C1724w c1724w2 = new C1724w(new C1724w(new C1724w(c1724w, new C0275a(str2, 4), 0).m5712b(c1567q2).m5712b(c1548f).m5712b(c1357g)), new C3105c(6, new C0279a(2)), 1);
                        int i14 = AbstractC3585b.f10653b;
                        AbstractC1314b.m2357b(i14, "bufferSize");
                        return new C1786k(new C1720s(new C1685a0(c1724w2, i14)), new C1567q(c1570t2, str2), 0);
                    }
                };
                C1793r c1793r = new C1793r(c1570t.f3867g.m2645a(), c3720f, new C1357g(27));
                C3648c c3648cM5835p = C3648c.m5835p();
                AbstractC1314b.m2356a(c3648cM5835p, "item is null");
                AbstractC3588e abstractC3588eM5716b2 = c1793r.m5718e(AbstractC3588e.m5715a(c3648cM5835p)).m5716b(AbstractC3588e.m5715a(C3648c.m5835p()));
                C2209d c2209d = (C2209d) c1570t.f3873m;
                C2599a c2599aM3540c = c2209d.m3540c();
                Executor executor = c1570t.f3875o;
                C1778c c1778c = new C1778c(new C1548f(i12, c2599aM3540c, executor));
                c2209d.m3541d();
                C2455p c2455p = new C2455p(17);
                C2212g c2212g = new C2212g(c2209d.f5807d, c2455p);
                synchronized (c2209d.f5810g) {
                    c2209d.f5815l.add(c2212g);
                    break;
                }
                C2599a c2599a = (C2599a) c2455p.f6648c;
                c2209d.f5811h.execute(new RunnableC2208c(c2209d, 2));
                C1782g c1782g = new C1782g(i10, new AbstractC3588e[]{c1778c, new C1778c(new C1548f(4, c2599a, executor))}, new C2962e(new C1357g(13)));
                AbstractC3594k abstractC3594k = c1570t.f3866f.f3837a;
                AbstractC1314b.m2356a(abstractC3594k, "scheduler is null");
                C1548f c1548f2 = new C1548f(3, c1570t, new C1781f(c1782g, abstractC3594k, 1));
                C1563m0 c1563m0 = c1570t.f3871k;
                if (!(c1563m0.f3845c ? str.equals("ON_FOREGROUND") : c1563m0.f3844b)) {
                    C1461d.m2513m("Attempting to fetch campaigns using cache");
                    return new C1706l(4, new C1786k(abstractC3588eM5716b.m5718e(new C1793r(new C1786k(abstractC3588eM5716b2, c1548f2, 0), c1567q, c3720f)), interfaceC0929c, 0));
                }
                C1461d.m2514n("Forcing fetch from service rather than cache. Test Device: " + c1563m0.f3844b + " | App Fresh Install: " + c1563m0.f3845c);
                return new C1706l(4, new C1786k(new C1786k(abstractC3588eM5716b2, c1548f2, 0), interfaceC0929c, 0));
            case 2:
            default:
                C1570t c1570t2 = this.f3854c;
                C3577c c3577c = (C3577c) obj;
                c1570t2.getClass();
                if (c3577c.m5695q()) {
                    return AbstractC3588e.m5715a(c3577c);
                }
                C1565o c1565o = c1570t2.f3867g;
                c1565o.getClass();
                String strM5702o2 = AbstractC1034g.m1294a(c3577c.m5696r(), 1) ? c3577c.m5699u().m5702o() : c3577c.m5694p().m5688o();
                C1786k c1786k = new C1786k(c1565o.m2645a(), new C1357g(9), 1);
                C1357g c1357g2 = new C1357g(10);
                C1796u c1796u = new C1796u(0, c1786k);
                int i13 = AbstractC3585b.f10653b;
                AbstractC1314b.m2357b(Integer.MAX_VALUE, "maxConcurrency");
                AbstractC1314b.m2357b(i13, "bufferSize");
                if (c1796u instanceof InterfaceCallableC1502e) {
                    Object objCall = ((InterfaceCallableC1502e) c1796u).call();
                    c2005h = objCall == null ? C2002e.f5453b : new C2009l(objCall, c1357g2);
                } else {
                    c2005h = new C2005h(c1796u, c1357g2, i13);
                }
                C2000c c2000c = new C2000c(c2005h, new C1357g(11), 1);
                AbstractC1314b.m2356a(strM5702o2, "element is null");
                return new C1786k(new C1782g(i11, new C2057a(new C2057a(new C2057a(new C2001d(c2000c, new C0061w(strM5702o2, 1)), new C1357g(22), 0), new CallableC1313a(0, new C2058b()), 2), new C1566p(c3577c), 1), new C1357g(23)), new C1566p(c3577c), 1);
            case 3:
                C1779d c1779d = C1779d.f4673b;
                C1570t c1570t3 = this.f3854c;
                C3577c c3577c2 = (C3577c) obj;
                c1570t3.getClass();
                if (AbstractC1034g.m1294a(c3577c2.m5696r(), 1)) {
                    strM5702o = c3577c2.m5699u().m5702o();
                    strM5703p = c3577c2.m5699u().m5703p();
                } else {
                    if (!AbstractC1034g.m1294a(c3577c2.m5696r(), 2)) {
                        return c1779d;
                    }
                    String strM5688o = c3577c2.m5694p().m5688o();
                    String strM5689p = c3577c2.m5694p().m5689p();
                    if (!c3577c2.m5695q()) {
                        C1538a c1538a = c1570t3.f3872l;
                        c1538a.f3787b.execute(new RunnableC1375j2(8, c1538a, c3577c2.m5694p().m5691s()));
                    }
                    strM5702o = strM5688o;
                    strM5703p = strM5689p;
                }
                C1297r c1297rM5692n = c3577c2.m5692n();
                Map mapM5693o = c3577c2.m5693o();
                AbstractC2587b.m4042i(c1297rM5692n, "FirebaseInAppMessaging content cannot be null.");
                AbstractC2587b.m4042i(strM5702o, "FirebaseInAppMessaging campaign id cannot be null.");
                AbstractC2587b.m4042i(strM5703p, "FirebaseInAppMessaging campaign name cannot be null.");
                C1461d.m2513m("Decoding message: ".concat(c1297rM5692n.toString()));
                int iM1296c = AbstractC1034g.m1296c(c1297rM5692n.m2334r());
                if (iM1296c == 0) {
                    C1294o c1294oM2331n = c1297rM5692n.m2331n();
                    String strM2303o = !TextUtils.isEmpty(c1294oM2331n.m2303o()) ? c1294oM2331n.m2303o() : null;
                    if (!TextUtils.isEmpty(c1294oM2331n.m2305r())) {
                        String strM2305r = c1294oM2331n.m2305r();
                        if (TextUtils.isEmpty(strM2305r)) {
                            strM2305r = null;
                        }
                        if (TextUtils.isEmpty(strM2305r)) {
                            C1929i.m3029k("ImageData model must have an imageUrl");
                        } else {
                            c1984f = new C1984f(strM2305r);
                        }
                        return null;
                    }
                    c1984f = null;
                    if (c1294oM2331n.m2307t()) {
                        C0090h c0090hM5643d = C3537c.m5643d(c1294oM2331n.m2302n());
                        c1979a = new C1979a((String) c0090hM5643d.f191c, (C1982d) c0090hM5643d.f192d);
                    } else {
                        c1979a = null;
                    }
                    C1990l c1990lM5645g = c1294oM2331n.m2308u() ? C3537c.m5645g(c1294oM2331n.m2304p()) : null;
                    C1990l c1990lM5645g2 = c1294oM2331n.m2309v() ? C3537c.m5645g(c1294oM2331n.m2306s()) : null;
                    if (c1990lM5645g2 == null) {
                        C1929i.m3029k("Banner model must have a title");
                    } else if (TextUtils.isEmpty(strM2303o)) {
                        C1929i.m3029k("Banner model must have a background color");
                    } else {
                        c1981c = new C1981c(c1990lM5645g2, c1990lM5645g, c1984f, c1979a, strM2303o, mapM5693o);
                        c1988j = c1981c;
                    }
                    return null;
                }
                if (iM1296c == 1) {
                    C1299t c1299tM2335s = c1297rM5692n.m2335s();
                    String strM2343p = !TextUtils.isEmpty(c1299tM2335s.m2343p()) ? c1299tM2335s.m2343p() : null;
                    if (!TextUtils.isEmpty(c1299tM2335s.m2345s())) {
                        String strM2345s = c1299tM2335s.m2345s();
                        if (TextUtils.isEmpty(strM2345s)) {
                            strM2345s = null;
                        }
                        if (TextUtils.isEmpty(strM2345s)) {
                            C1929i.m3029k("ImageData model must have an imageUrl");
                        } else {
                            c1984f2 = new C1984f(strM2345s);
                        }
                        return null;
                    }
                    c1984f2 = null;
                    C1979a c1979aM5644f = c1299tM2335s.m2347u() ? C3537c.m5644f(c1299tM2335s.m2341n(), c1299tM2335s.m2342o()) : null;
                    C1990l c1990lM5645g3 = c1299tM2335s.m2348v() ? C3537c.m5645g(c1299tM2335s.m2344q()) : null;
                    C1990l c1990lM5645g4 = c1299tM2335s.m2349w() ? C3537c.m5645g(c1299tM2335s.m2346t()) : null;
                    if (c1990lM5645g4 == null) {
                        C1929i.m3029k("Modal model must have a title");
                    } else if (c1979aM5644f != null && c1979aM5644f.f5390b == null) {
                        C1929i.m3029k("Modal model action must be null or have a button");
                    } else if (TextUtils.isEmpty(strM2343p)) {
                        C1929i.m3029k("Modal model must have a background color");
                    } else {
                        c1981c = new C1987i(c1990lM5645g4, c1990lM5645g3, c1984f2, c1979aM5644f, strM2343p, mapM5693o);
                        c1988j = c1981c;
                    }
                    return null;
                }
                if (iM1296c == 2) {
                    C1298s c1298sM2333q = c1297rM5692n.m2333q();
                    if (!TextUtils.isEmpty(c1298sM2333q.m2338p())) {
                        String strM2338p = c1298sM2333q.m2338p();
                        if (TextUtils.isEmpty(strM2338p)) {
                            strM2338p = null;
                        }
                        if (TextUtils.isEmpty(strM2338p)) {
                            C1929i.m3029k("ImageData model must have an imageUrl");
                        } else {
                            c1984f3 = new C1984f(strM2338p);
                        }
                        return null;
                    }
                    c1984f3 = null;
                    if (c1298sM2333q.m2339q()) {
                        C0090h c0090hM5643d2 = C3537c.m5643d(c1298sM2333q.m2337n());
                        c1979a2 = new C1979a((String) c0090hM5643d2.f191c, (C1982d) c0090hM5643d2.f192d);
                    } else {
                        c1979a2 = null;
                    }
                    if (c1984f3 == null) {
                        C1929i.m3029k("ImageOnly model must have image data");
                        return null;
                    }
                    C1985g c1985g = new C1985g(MessageType.IMAGE_ONLY, mapM5693o);
                    c1985g.f5408c = c1984f3;
                    c1985g.f5409d = c1979a2;
                    c1988j = c1985g;
                } else {
                    if (iM1296c == 3) {
                        C1296q c1296qM2332o = c1297rM5692n.m2332o();
                        C1990l c1990lM5645g5 = c1296qM2332o.m2317C() ? C3537c.m5645g(c1296qM2332o.m2326w()) : null;
                        C1990l c1990lM5645g6 = c1296qM2332o.m2327x() ? C3537c.m5645g(c1296qM2332o.m2319o()) : null;
                        String strM2318n = !TextUtils.isEmpty(c1296qM2332o.m2318n()) ? c1296qM2332o.m2318n() : null;
                        C1979a c1979aM5644f2 = (c1296qM2332o.m2328y() || c1296qM2332o.m2329z()) ? C3537c.m5644f(c1296qM2332o.m2322s(), c1296qM2332o.m2323t()) : null;
                        C1979a c1979aM5644f3 = (c1296qM2332o.m2315A() || c1296qM2332o.m2316B()) ? C3537c.m5644f(c1296qM2332o.m2324u(), c1296qM2332o.m2325v()) : null;
                        if (!TextUtils.isEmpty(c1296qM2332o.m2321r())) {
                            String strM2321r = c1296qM2332o.m2321r();
                            if (TextUtils.isEmpty(strM2321r)) {
                                strM2321r = null;
                            }
                            if (TextUtils.isEmpty(strM2321r)) {
                                C1929i.m3029k("ImageData model must have an imageUrl");
                            } else {
                                c1984f4 = new C1984f(strM2321r);
                            }
                            return null;
                        }
                        c1984f4 = null;
                        if (!TextUtils.isEmpty(c1296qM2332o.m2320q())) {
                            String strM2320q = c1296qM2332o.m2320q();
                            if (TextUtils.isEmpty(strM2320q)) {
                                strM2320q = null;
                            }
                            if (TextUtils.isEmpty(strM2320q)) {
                                C1929i.m3029k("ImageData model must have an imageUrl");
                            } else {
                                c1984f5 = new C1984f(strM2320q);
                            }
                            return null;
                        }
                        c1984f5 = null;
                        if (c1979aM5644f2 == null) {
                            C1929i.m3029k("Card model must have a primary action");
                        } else if (c1979aM5644f2.f5390b == null) {
                            C1929i.m3029k("Card model must have a primary action button");
                        } else if (c1979aM5644f3 != null && c1979aM5644f3.f5390b == null) {
                            C1929i.m3029k("Card model secondary action must be null or have a button");
                        } else if (c1990lM5645g5 == null) {
                            C1929i.m3029k("Card model must have a title");
                        } else if (c1984f4 == null && c1984f5 == null) {
                            C1929i.m3029k("Card model must have at least one image");
                        } else if (TextUtils.isEmpty(strM2318n)) {
                            C1929i.m3029k("Card model must have a background color");
                        } else {
                            c1981c = new C1983e(c1990lM5645g5, c1990lM5645g6, c1984f4, c1984f5, strM2318n, c1979aM5644f2, c1979aM5644f3, mapM5693o);
                            c1988j = c1981c;
                        }
                        return null;
                    }
                    c1988j = new C1988j(MessageType.UNSUPPORTED, mapM5693o);
                }
                return c1988j.f5410a.equals(MessageType.UNSUPPORTED) ? c1779d : AbstractC3588e.m5715a(new C1991m());
        }
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        long jM5690q;
        long jM5687n;
        C3577c c3577c = (C3577c) obj;
        C1570t c1570t = this.f3854c;
        if (!c1570t.f3871k.f3844b) {
            C1750a c1750a = c1570t.f3864d;
            if (AbstractC1034g.m1294a(c3577c.m5696r(), 1)) {
                jM5690q = c3577c.m5699u().m5704q();
                jM5687n = c3577c.m5699u().m5701n();
            } else {
                if (!AbstractC1034g.m1294a(c3577c.m5696r(), 2)) {
                    return false;
                }
                jM5690q = c3577c.m5694p().m5690q();
                jM5687n = c3577c.m5694p().m5687n();
            }
            c1750a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis <= jM5690q || jCurrentTimeMillis >= jM5687n) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ C1567q(C1570t c1570t, int i10) {
        this.f3853b = i10;
        this.f3854c = c1570t;
    }
}
