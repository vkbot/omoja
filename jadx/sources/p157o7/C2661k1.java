package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import com.bumptech.glide.manager.C1074t;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import p016b1.C0872m;
import p091i4.C1748f;
import p120l.C2187d;
import p148n7.AbstractC2503e;
import p148n7.C2492a0;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2521k;
import p148n7.C2538r;
import p148n7.C2544u;
import p148n7.C2550x;
import p148n7.EnumC2505e1;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;
import p148n7.InterfaceC2516i0;
import p148n7.InterfaceC2554z;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.k1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2661k1 implements InterfaceC2554z {

    /* JADX INFO: renamed from: a */
    public final C2492a0 f7568a;

    /* JADX INFO: renamed from: b */
    public final String f7569b;

    /* JADX INFO: renamed from: c */
    public final C2722u2 f7570c;

    /* JADX INFO: renamed from: d */
    public final C2736w4 f7571d;

    /* JADX INFO: renamed from: e */
    public final InterfaceC2747z f7572e;

    /* JADX INFO: renamed from: f */
    public final ScheduledExecutorService f7573f;

    /* JADX INFO: renamed from: g */
    public final C2550x f7574g;

    /* JADX INFO: renamed from: h */
    public final C0872m f7575h;

    /* JADX INFO: renamed from: i */
    public final AbstractC2503e f7576i;

    /* JADX INFO: renamed from: j */
    public final List f7577j;

    /* JADX INFO: renamed from: k */
    public final ExecutorC2523k1 f7578k;

    /* JADX INFO: renamed from: l */
    public final C2643h1 f7579l;

    /* JADX INFO: renamed from: m */
    public volatile List f7580m;

    /* JADX INFO: renamed from: n */
    public C2702r0 f7581n;

    /* JADX INFO: renamed from: o */
    public final C1748f f7582o;

    /* JADX INFO: renamed from: p */
    public C2187d f7583p;

    /* JADX INFO: renamed from: q */
    public C2187d f7584q;

    /* JADX INFO: renamed from: r */
    public InterfaceC2680n2 f7585r;

    /* JADX INFO: renamed from: u */
    public C2637g1 f7588u;

    /* JADX INFO: renamed from: v */
    public volatile C2637g1 f7589v;

    /* JADX INFO: renamed from: x */
    public C2508f1 f7591x;

    /* JADX INFO: renamed from: s */
    public final ArrayList f7586s = new ArrayList();

    /* JADX INFO: renamed from: t */
    public final C2625e1 f7587t = new C2625e1(this, 0);

    /* JADX INFO: renamed from: w */
    public volatile C2521k f7590w = C2521k.m3950a(EnumC2518j.f6971e);

    public C2661k1(List list, String str, C2722u2 c2722u2, C2665l c2665l, ScheduledExecutorService scheduledExecutorService, C2722u2 c2722u3, ExecutorC2523k1 executorC2523k1, C2736w4 c2736w4, C2550x c2550x, C0872m c0872m, C2683o c2683o, C2492a0 c2492a0, AbstractC2503e abstractC2503e, ArrayList arrayList) {
        AbstractC2587b.m4042i(list, "addressGroups");
        AbstractC2587b.m4037d("addressGroups is empty", !list.isEmpty());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC2587b.m4042i(it.next(), "addressGroups contains null entry");
        }
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f7580m = listUnmodifiableList;
        C2643h1 c2643h1 = new C2643h1();
        c2643h1.f7496a = listUnmodifiableList;
        this.f7579l = c2643h1;
        this.f7569b = str;
        this.f7570c = c2722u2;
        this.f7572e = c2665l;
        this.f7573f = scheduledExecutorService;
        this.f7582o = (C1748f) c2722u3.m4246r();
        this.f7578k = executorC2523k1;
        this.f7571d = c2736w4;
        this.f7574g = c2550x;
        this.f7575h = c0872m;
        AbstractC2587b.m4042i(c2683o, "channelTracer");
        AbstractC2587b.m4042i(c2492a0, "logId");
        this.f7568a = c2492a0;
        AbstractC2587b.m4042i(abstractC2503e, "channelLogger");
        this.f7576i = abstractC2503e;
        this.f7577j = arrayList;
    }

    /* JADX INFO: renamed from: e */
    public static void m4174e(C2661k1 c2661k1, EnumC2518j enumC2518j) {
        c2661k1.f7578k.m3957d();
        c2661k1.m4177g(C2521k.m3950a(enumC2518j));
    }

    /* JADX INFO: renamed from: f */
    public static void m4175f(C2661k1 c2661k1) {
        SocketAddress socketAddress;
        C2544u c2544u;
        C2643h1 c2643h1 = c2661k1.f7579l;
        ExecutorC2523k1 executorC2523k1 = c2661k1.f7578k;
        executorC2523k1.m3957d();
        AbstractC2587b.m4046m(c2661k1.f7583p == null, "Should have no reconnectTask scheduled");
        if (c2643h1.f7497b == 0 && c2643h1.f7498c == 0) {
            C1748f c1748f = c2661k1.f7582o;
            c1748f.f4562a = false;
            c1748f.m2873b();
        }
        SocketAddress socketAddress2 = (SocketAddress) ((C2538r) c2643h1.f7496a.get(c2643h1.f7497b)).f7017a.get(c2643h1.f7498c);
        if (socketAddress2 instanceof C2544u) {
            c2544u = (C2544u) socketAddress2;
            socketAddress = c2544u.f7030c;
        } else {
            socketAddress = socketAddress2;
            c2544u = null;
        }
        C2494b c2494b = ((C2538r) c2643h1.f7496a.get(c2643h1.f7497b)).f7018b;
        String str = (String) c2494b.f6882a.get(C2538r.f7016d);
        C2742y c2742y = new C2742y();
        c2742y.f7872a = "unknown-authority";
        c2742y.f7873b = C2494b.f6881b;
        if (str == null) {
            str = c2661k1.f7569b;
        }
        AbstractC2587b.m4042i(str, "authority");
        c2742y.f7872a = str;
        c2742y.f7873b = c2494b;
        c2742y.f7874c = c2544u;
        C2655j1 c2655j1 = new C2655j1();
        c2655j1.f7537b = c2661k1.f7568a;
        C2637g1 c2637g1 = new C2637g1(c2661k1.f7572e.mo4180I(socketAddress, c2742y, c2655j1), c2661k1.f7575h);
        c2655j1.f7537b = c2637g1.mo3995c();
        c2661k1.f7588u = c2637g1;
        c2661k1.f7586s.add(c2637g1);
        Runnable runnableMo4181b = c2637g1.mo4181b(new C1074t(c2661k1, c2637g1));
        if (runnableMo4181b != null) {
            executorC2523k1.m3955b(runnableMo4181b);
        }
        c2661k1.f7576i.mo3906n(2, "Started transport {0}", c2655j1.f7537b);
    }

    /* JADX INFO: renamed from: h */
    public static String m4176h(C2508f1 c2508f1) {
        StringBuilder sb = new StringBuilder();
        EnumC2505e1 enumC2505e1 = c2508f1.f6948a;
        Throwable th = c2508f1.f6950c;
        sb.append(enumC2505e1);
        String str = c2508f1.f6949b;
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

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        return this.f7568a;
    }

    /* JADX INFO: renamed from: g */
    public final void m4177g(C2521k c2521k) {
        this.f7578k.m3957d();
        if (this.f7590w.f6982a != c2521k.f6982a) {
            AbstractC2587b.m4046m(this.f7590w.f6982a != EnumC2518j.f6972f, "Cannot transition out of SHUTDOWN to " + c2521k);
            this.f7590w = c2521k;
            ((InterfaceC2516i0) this.f7571d.f7859c).mo3943a(c2521k);
        }
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1346b(this.f7568a.f6880c, "logId");
        c1073sM1263t.m1347c(this.f7580m, "addressGroups");
        return c1073sM1263t.toString();
    }
}
