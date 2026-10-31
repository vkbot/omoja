package p062f5;

import android.app.Application;
import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import p000a.AbstractC0000a;
import p009a8.C0029a;
import p045d8.AbstractC1314b;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p085h8.C1706l;
import p085h8.C1707l0;
import p085h8.C1715p0;
import p111k2.C2038j;
import p142n0.C2467b;
import p148n7.AbstractC2531n0;
import p148n7.AbstractC2542t;
import p148n7.C2512h;
import p148n7.C2533o0;
import p148n7.C2535p0;
import p170p7.C2983h;
import p196s8.C3218b;
import p204t8.InterfaceC3268a;
import p242x7.AbstractC3585b;
import p250y5.C3655j;

/* JADX INFO: renamed from: f5.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1562m implements InterfaceC1495b, InterfaceC1534b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3841b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3268a f3842c;

    public /* synthetic */ C1562m(Object obj, InterfaceC3268a interfaceC3268a, int i10) {
        this.f3841b = i10;
        this.f3842c = interfaceC3268a;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        C2535p0 c2535p0;
        List list;
        switch (this.f3841b) {
            case 0:
                return new C1560l((C3655j) this.f3842c.get());
            case 1:
                return new C1565o((C1575y) this.f3842c.get());
            case 2:
                return new C1576z((Application) this.f3842c.get());
            case 3:
                C1715p0 c1715p0 = ((C1540b) this.f3842c.get()).f3792b;
                AbstractC0000a.m5e(c1715p0);
                return c1715p0;
            case 4:
                return new C1540b((C1541b0) this.f3842c.get());
            case 5:
                return new C1552h((Executor) this.f3842c.get());
            case 6:
                Application application = (Application) this.f3842c.get();
                C1558k c1558k = new C1558k();
                C3218b c3218b = c1558k.f3836f;
                c3218b.getClass();
                C1706l c1706l = new C1706l(3, c3218b);
                int i10 = AbstractC3585b.f10653b;
                AbstractC1314b.m2357b(i10, "bufferSize");
                C1715p0 c1715p0M5713c = new C1707l0(c1706l, i10).m5713c();
                c1715p0M5713c.m2840f();
                application.registerActivityLifecycleCallbacks(c1558k);
                return c1715p0M5713c;
            case 7:
                String str = (String) this.f3842c.get();
                Logger logger = C2535p0.f7007c;
                synchronized (C2535p0.class) {
                    try {
                        if (C2535p0.f7008d == null) {
                            List<AbstractC2531n0> listM3974h = AbstractC2542t.m3974h(AbstractC2531n0.class, C2535p0.m3966a(), AbstractC2531n0.class.getClassLoader(), new C2512h(7));
                            C2535p0.f7008d = new C2535p0();
                            for (AbstractC2531n0 abstractC2531n0 : listM3974h) {
                                C2535p0.f7007c.fine("Service loader found " + abstractC2531n0);
                                C2535p0 c2535p1 = C2535p0.f7008d;
                                synchronized (c2535p1) {
                                    abstractC2531n0.getClass();
                                    c2535p1.f7009a.add(abstractC2531n0);
                                    break;
                                }
                            }
                            C2535p0 c2535p2 = C2535p0.f7008d;
                            synchronized (c2535p2) {
                                ArrayList arrayList = new ArrayList(c2535p2.f7009a);
                                Collections.sort(arrayList, Collections.reverseOrder(new C2533o0()));
                                c2535p2.f7010b = Collections.unmodifiableList(arrayList);
                            }
                        }
                        c2535p0 = C2535p0.f7008d;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                synchronized (c2535p0) {
                    list = c2535p0.f7010b;
                }
                if ((list.isEmpty() ? null : (AbstractC2531n0) list.get(0)) != null) {
                    return new C2983h(str).f8328b.m4158E();
                }
                throw new C0029a("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact", 2);
            case 8:
                return new C1575y((Application) this.f3842c.get(), "fiam_eligible_campaigns_cache_file");
            case 9:
                return new C1575y((Application) this.f3842c.get(), "fiam_impressions_store_file");
            case 10:
                return new C1575y((Application) this.f3842c.get(), "rate_limit_store_file");
            case 11:
                String packageName = ((Context) this.f3842c.get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                C2467b.m3828n("Cannot return null from a non-@Nullable @Provides method");
                return null;
            default:
                return new C2038j((Context) this.f3842c.get(), "com.google.android.datatransport.events", Integer.valueOf(C2038j.f5560e).intValue());
        }
    }

    public /* synthetic */ C1562m(InterfaceC3268a interfaceC3268a, int i10) {
        this.f3841b = i10;
        this.f3842c = interfaceC3268a;
    }
}
