package p157o7;

import androidx.navigation.C0674b;
import com.bumptech.glide.RunnableC1054m;
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
import p016b1.AbstractC0880u;
import p091i4.AbstractC1746d;
import p099j1.C1929i;
import p102j4.AbstractC1962a;
import p102j4.AbstractC1966e;
import p102j4.C1963b;
import p102j4.C1964c;
import p102j4.C1970i;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.C2521k;
import p148n7.C2538r;
import p148n7.EnumC2518j;
import p148n7.InterfaceC2516i0;
import p148n7.RunnableC2520j1;

/* JADX INFO: renamed from: o7.a3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2603a3 extends AbstractC2519j0 {

    /* JADX INFO: renamed from: o */
    public static final Logger f7260o = Logger.getLogger(C2603a3.class.getName());

    /* JADX INFO: renamed from: f */
    public final AbstractC2503e f7261f;

    /* JADX INFO: renamed from: h */
    public C2643h1 f7263h;

    /* JADX INFO: renamed from: k */
    public C2187d f7266k;

    /* JADX INFO: renamed from: l */
    public EnumC2518j f7267l;

    /* JADX INFO: renamed from: m */
    public EnumC2518j f7268m;

    /* JADX INFO: renamed from: n */
    public final boolean f7269n;

    /* JADX INFO: renamed from: g */
    public final HashMap f7262g = new HashMap();

    /* JADX INFO: renamed from: i */
    public int f7264i = 0;

    /* JADX INFO: renamed from: j */
    public boolean f7265j = true;

    public C2603a3(AbstractC2503e abstractC2503e) {
        boolean z9 = false;
        EnumC2518j enumC2518j = EnumC2518j.f6971e;
        this.f7267l = enumC2518j;
        this.f7268m = enumC2518j;
        Logger logger = AbstractC2743y0.f7875a;
        String property = System.getenv("GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS");
        property = property == null ? System.getProperty("GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS") : property;
        if (!AbstractC1746d.m2871a(property) && Boolean.parseBoolean(property)) {
            z9 = true;
        }
        this.f7269n = z9;
        this.f7261f = abstractC2503e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: a */
    public final C2508f1 mo3944a(C2510g0 c2510g0) {
        int iMo3058d;
        List list;
        EnumC2518j enumC2518j;
        if (this.f7267l == EnumC2518j.f6972f) {
            return C2508f1.f6943k.m3934h("Already shut down");
        }
        List list2 = c2510g0.f6951a;
        Object obj = c2510g0.f6952b;
        if (list2.isEmpty()) {
            C2508f1 c2508f1M3934h = C2508f1.f6945m.m3934h("NameResolver returned no usable address. addrs=" + list2 + ", attrs=" + obj);
            mo3946c(c2508f1M3934h);
            return c2508f1M3934h;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((C2538r) it.next()) == null) {
                C2508f1 c2508f1M3934h2 = C2508f1.f6945m.m3934h("NameResolver returned address list with null endpoint. addrs=" + list2 + ", attrs=" + obj);
                mo3946c(c2508f1M3934h2);
                return c2508f1M3934h2;
            }
        }
        this.f7265j = true;
        C1964c c1964c = AbstractC1966e.f5354c;
        AbstractC0880u.m996c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int size = list2.size();
        if (objArrCopyOf.length < size) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, C1963b.m3063b(objArrCopyOf.length, size));
        }
        if (list2 instanceof AbstractC1962a) {
            iMo3058d = ((AbstractC1962a) list2).mo3058d(0, objArrCopyOf);
        } else {
            int i10 = 0;
            boolean z9 = false;
            for (Object obj2 : list2) {
                obj2.getClass();
                int i11 = i10 + 1;
                if (objArrCopyOf.length < i11) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, C1963b.m3063b(objArrCopyOf.length, i11));
                } else {
                    if (z9) {
                        objArrCopyOf = (Object[]) objArrCopyOf.clone();
                    }
                    objArrCopyOf[i10] = obj2;
                    i10++;
                }
                z9 = false;
                objArrCopyOf[i10] = obj2;
                i10++;
            }
            iMo3058d = i10;
        }
        C1970i c1970iM3068i = AbstractC1966e.m3068i(iMo3058d, objArrCopyOf);
        C2643h1 c2643h1 = this.f7263h;
        EnumC2518j enumC2518j2 = EnumC2518j.f6969c;
        if (c2643h1 == null) {
            C2643h1 c2643h2 = new C2643h1();
            c2643h2.f7496a = c1970iM3068i != null ? c1970iM3068i : Collections.EMPTY_LIST;
            this.f7263h = c2643h2;
        } else if (this.f7267l == enumC2518j2) {
            SocketAddress socketAddressM4159a = c2643h1.m4159a();
            C2643h1 c2643h3 = this.f7263h;
            if (c1970iM3068i != null) {
                list = c1970iM3068i;
            } else {
                c2643h3.getClass();
                list = Collections.EMPTY_LIST;
            }
            c2643h3.f7496a = list;
            c2643h3.f7497b = 0;
            c2643h3.f7498c = 0;
            if (this.f7263h.m4163e(socketAddressM4159a)) {
                return C2508f1.f6937e;
            }
            C2643h1 c2643h4 = this.f7263h;
            c2643h4.f7497b = 0;
            c2643h4.f7498c = 0;
        } else {
            c2643h1.f7496a = c1970iM3068i != null ? c1970iM3068i : Collections.EMPTY_LIST;
            c2643h1.f7497b = 0;
            c2643h1.f7498c = 0;
        }
        HashMap map = this.f7262g;
        HashSet<SocketAddress> hashSet = new HashSet(map.keySet());
        HashSet hashSet2 = new HashSet();
        C1964c c1964cListIterator = c1970iM3068i.listIterator(0);
        while (c1964cListIterator.hasNext()) {
            hashSet2.addAll(((C2538r) c1964cListIterator.next()).f7017a);
        }
        for (SocketAddress socketAddress : hashSet) {
            if (!hashSet2.contains(socketAddress)) {
                ((C2750z2) map.remove(socketAddress)).f7906a.mo3983n();
            }
        }
        int size2 = hashSet.size();
        EnumC2518j enumC2518j3 = EnumC2518j.f6968b;
        if (size2 == 0 || (enumC2518j = this.f7267l) == enumC2518j3 || enumC2518j == enumC2518j2) {
            this.f7267l = enumC2518j3;
            m4088i(enumC2518j3, new C2740x2(C2507f0.f6931e));
            m4086g();
            mo3948e();
        } else {
            EnumC2518j enumC2518j4 = EnumC2518j.f6971e;
            if (enumC2518j == enumC2518j4) {
                m4088i(enumC2518j4, new C2745y2(this, this));
            } else if (enumC2518j == EnumC2518j.f6970d) {
                m4086g();
                mo3948e();
            }
        }
        return C2508f1.f6937e;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: c */
    public final void mo3946c(C2508f1 c2508f1) {
        HashMap map = this.f7262g;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((C2750z2) it.next()).f7906a.mo3983n();
        }
        map.clear();
        m4088i(EnumC2518j.f6970d, new C2740x2(C2507f0.m3925a(c2508f1)));
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: e */
    public final void mo3948e() {
        int i10;
        AbstractC2542t abstractC2542t;
        C2643h1 c2643h1 = this.f7263h;
        if (c2643h1 == null || !c2643h1.m4161c() || this.f7267l == EnumC2518j.f6972f) {
            return;
        }
        SocketAddress socketAddressM4159a = this.f7263h.m4159a();
        HashMap map = this.f7262g;
        boolean zContainsKey = map.containsKey(socketAddressM4159a);
        Logger logger = f7260o;
        if (zContainsKey) {
            abstractC2542t = ((C2750z2) map.get(socketAddressM4159a)).f7906a;
        } else {
            C2734w2 c2734w2 = new C2734w2(this);
            C2504e0 c2504e0M3919d = C2504e0.m3919d();
            C2538r[] c2538rArr = {new C2538r(socketAddressM4159a)};
            AbstractC0880u.m996c(1, "arraySize");
            long j10 = ((long) 1) + 5 + ((long) 0);
            if (j10 > 2147483647L) {
                i10 = Integer.MAX_VALUE;
            } else {
                i10 = j10 < -2147483648L ? Integer.MIN_VALUE : (int) j10;
            }
            ArrayList arrayList = new ArrayList(i10);
            Collections.addAll(arrayList, c2538rArr);
            c2504e0M3919d.m3923e(arrayList);
            c2504e0M3919d.m3920a(c2734w2);
            final AbstractC2542t abstractC2542tMo3894b = this.f7261f.mo3894b(c2504e0M3919d.m3921b());
            if (abstractC2542tMo3894b == null) {
                logger.warning("Was not able to create subchannel for " + socketAddressM4159a);
                C1929i.m3030l("Can't create subchannel");
                return;
            }
            C2750z2 c2750z2 = new C2750z2(abstractC2542tMo3894b, c2734w2);
            c2734w2.f7852b = c2750z2;
            map.put(socketAddressM4159a, c2750z2);
            if (abstractC2542tMo3894b.mo3977d().f6882a.get(AbstractC2519j0.f6976d) == null) {
                c2734w2.f7851a = C2521k.m3950a(EnumC2518j.f6969c);
            }
            abstractC2542tMo3894b.mo3985p(new InterfaceC2516i0() { // from class: o7.v2
                @Override // p148n7.InterfaceC2516i0
                /* JADX INFO: renamed from: a */
                public final void mo3943a(C2521k c2521k) {
                    AbstractC2542t abstractC2542t2;
                    C2603a3 c2603a3 = this.f7840a;
                    AbstractC2503e abstractC2503e = c2603a3.f7261f;
                    EnumC2518j enumC2518j = c2521k.f6982a;
                    HashMap map2 = c2603a3.f7262g;
                    AbstractC2542t abstractC2542t3 = abstractC2542tMo3894b;
                    C2750z2 c2750z3 = (C2750z2) map2.get((SocketAddress) abstractC2542t3.m3975b().f7017a.get(0));
                    if (c2750z3 == null || (abstractC2542t2 = c2750z3.f7906a) != abstractC2542t3 || enumC2518j == EnumC2518j.f6972f) {
                        return;
                    }
                    EnumC2518j enumC2518j2 = EnumC2518j.f6971e;
                    if (enumC2518j == enumC2518j2) {
                        abstractC2503e.mo3917y();
                    }
                    C2750z2.m4266a(c2750z3, enumC2518j);
                    EnumC2518j enumC2518j3 = c2603a3.f7267l;
                    EnumC2518j enumC2518j4 = EnumC2518j.f6968b;
                    EnumC2518j enumC2518j5 = EnumC2518j.f6970d;
                    if (enumC2518j3 == enumC2518j5 || c2603a3.f7268m == enumC2518j5) {
                        if (enumC2518j == enumC2518j4) {
                            return;
                        }
                        if (enumC2518j == enumC2518j2) {
                            c2603a3.mo3948e();
                            return;
                        }
                    }
                    int iOrdinal = enumC2518j.ordinal();
                    if (iOrdinal == 0) {
                        c2603a3.f7267l = enumC2518j4;
                        c2603a3.m4088i(enumC2518j4, new C2740x2(C2507f0.f6931e));
                        return;
                    }
                    if (iOrdinal == 1) {
                        c2603a3.m4086g();
                        for (C2750z2 c2750z4 : map2.values()) {
                            if (!c2750z4.f7906a.equals(abstractC2542t2)) {
                                c2750z4.f7906a.mo3983n();
                            }
                        }
                        map2.clear();
                        EnumC2518j enumC2518j6 = EnumC2518j.f6969c;
                        C2750z2.m4266a(c2750z3, enumC2518j6);
                        map2.put((SocketAddress) abstractC2542t2.m3975b().f7017a.get(0), c2750z3);
                        c2603a3.f7263h.m4163e((SocketAddress) abstractC2542t3.m3975b().f7017a.get(0));
                        c2603a3.f7267l = enumC2518j6;
                        c2603a3.m4089j(c2750z3);
                        return;
                    }
                    if (iOrdinal != 2) {
                        if (iOrdinal != 3) {
                            C0674b.m853t(enumC2518j, "Unsupported state:");
                            return;
                        }
                        C2643h1 c2643h2 = c2603a3.f7263h;
                        c2643h2.f7497b = 0;
                        c2643h2.f7498c = 0;
                        c2603a3.f7267l = enumC2518j2;
                        c2603a3.m4088i(enumC2518j2, new C2745y2(c2603a3, c2603a3));
                        return;
                    }
                    if (c2603a3.f7263h.m4161c() && ((C2750z2) map2.get(c2603a3.f7263h.m4159a())).f7906a == abstractC2542t3 && c2603a3.f7263h.m4160b()) {
                        c2603a3.m4086g();
                        c2603a3.mo3948e();
                    }
                    C2643h1 c2643h3 = c2603a3.f7263h;
                    if (c2643h3 == null || c2643h3.m4161c()) {
                        return;
                    }
                    int size = map2.size();
                    List list = c2603a3.f7263h.f7496a;
                    if (size < (list != null ? list.size() : 0)) {
                        return;
                    }
                    Iterator it = map2.values().iterator();
                    while (it.hasNext()) {
                        if (!((C2750z2) it.next()).f7909d) {
                            return;
                        }
                    }
                    c2603a3.f7267l = enumC2518j5;
                    c2603a3.m4088i(enumC2518j5, new C2740x2(C2507f0.m3925a(c2521k.f6983b)));
                    int i11 = c2603a3.f7264i + 1;
                    c2603a3.f7264i = i11;
                    List list2 = c2603a3.f7263h.f7496a;
                    if (i11 >= (list2 != null ? list2.size() : 0) || c2603a3.f7265j) {
                        c2603a3.f7265j = false;
                        c2603a3.f7264i = 0;
                        abstractC2503e.mo3917y();
                    }
                }
            });
            abstractC2542t = abstractC2542tMo3894b;
        }
        int iOrdinal = ((C2750z2) map.get(socketAddressM4159a)).f7907b.ordinal();
        if (iOrdinal == 0) {
            if (this.f7269n) {
                m4087h();
                return;
            } else {
                abstractC2542t.mo3982l();
                return;
            }
        }
        if (iOrdinal == 1) {
            logger.warning("Requesting a connection even though we have a READY subchannel");
            return;
        }
        if (iOrdinal == 2) {
            this.f7263h.m4160b();
            mo3948e();
        } else {
            if (iOrdinal != 3) {
                return;
            }
            abstractC2542t.mo3982l();
            C2750z2.m4266a((C2750z2) map.get(socketAddressM4159a), EnumC2518j.f6968b);
            m4087h();
        }
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: f */
    public final void mo3949f() {
        Level level = Level.FINE;
        HashMap map = this.f7262g;
        f7260o.log(level, "Shutting down, currently have {} subchannels created", Integer.valueOf(map.size()));
        EnumC2518j enumC2518j = EnumC2518j.f6972f;
        this.f7267l = enumC2518j;
        this.f7268m = enumC2518j;
        m4086g();
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((C2750z2) it.next()).f7906a.mo3983n();
        }
        map.clear();
    }

    /* JADX INFO: renamed from: g */
    public final void m4086g() {
        C2187d c2187d = this.f7266k;
        if (c2187d != null) {
            c2187d.m3482j();
            this.f7266k = null;
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m4087h() {
        if (this.f7269n) {
            C2187d c2187d = this.f7266k;
            if (c2187d != null) {
                RunnableC2520j1 runnableC2520j1 = (RunnableC2520j1) c2187d.f5705c;
                if (!runnableC2520j1.f6981d && !runnableC2520j1.f6980c) {
                    return;
                }
            }
            AbstractC2503e abstractC2503e = this.f7261f;
            this.f7266k = abstractC2503e.mo3898f().m3956c(new RunnableC1054m(18, this), 250L, TimeUnit.MILLISECONDS, abstractC2503e.mo3896d());
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m4088i(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        if (enumC2518j == this.f7268m && (enumC2518j == EnumC2518j.f6971e || enumC2518j == EnumC2518j.f6968b)) {
            return;
        }
        this.f7268m = enumC2518j;
        this.f7261f.mo3892D(enumC2518j, abstractC2513h0);
    }

    /* JADX INFO: renamed from: j */
    public final void m4089j(C2750z2 c2750z2) {
        EnumC2518j enumC2518j = c2750z2.f7907b;
        EnumC2518j enumC2518j2 = EnumC2518j.f6969c;
        if (enumC2518j != enumC2518j2) {
            return;
        }
        C2521k c2521k = c2750z2.f7908c.f7851a;
        EnumC2518j enumC2518j3 = c2521k.f6982a;
        if (enumC2518j3 == enumC2518j2) {
            m4088i(enumC2518j2, new C2715t1(C2507f0.m3926b(c2750z2.f7906a, null)));
            return;
        }
        EnumC2518j enumC2518j4 = EnumC2518j.f6970d;
        if (enumC2518j3 == enumC2518j4) {
            m4088i(enumC2518j4, new C2740x2(C2507f0.m3925a(c2521k.f6983b)));
        } else if (this.f7268m != enumC2518j4) {
            m4088i(enumC2518j3, new C2740x2(C2507f0.f6931e));
        }
    }
}
