package p148n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import p155o4.AbstractC2587b;
import p250y5.C3652g;

/* JADX INFO: renamed from: n7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2542t {

    /* JADX INFO: renamed from: a */
    public static final C2491a f7024a = new C2491a("io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR");

    /* JADX INFO: renamed from: b */
    public static final C2491a f7025b = new C2491a("io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR");

    /* JADX INFO: renamed from: c */
    public static final C2491a f7026c = new C2491a("io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION");

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.ArrayList] */
    /* JADX INFO: renamed from: h */
    public static List m3974h(Class cls, Iterable iterable, ClassLoader classLoader, C2512h c2512h) {
        ?? Load;
        try {
            Class.forName("android.app.Application", false, classLoader);
            Load = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Class cls2 = (Class) it.next();
                Object objNewInstance = null;
                try {
                    objNewInstance = cls2.asSubclass(cls).getConstructor(null).newInstance(null);
                } catch (ClassCastException unused) {
                } catch (Throwable th) {
                    throw new ServiceConfigurationError(String.format("Provider %s could not be instantiated %s", cls2.getName(), th), th);
                }
                if (objNewInstance != null) {
                    Load.add(objNewInstance);
                }
            }
        } catch (Exception unused2) {
            ServiceLoader serviceLoaderLoad = ServiceLoader.load(cls, classLoader);
            Load = !serviceLoaderLoad.iterator().hasNext() ? ServiceLoader.load(cls) : serviceLoaderLoad;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : Load) {
            switch (c2512h.f6958b) {
                case 6:
                    ((AbstractC2522k0) obj).getClass();
                    break;
                case 7:
                    ((AbstractC2531n0) obj).getClass();
                    break;
                default:
                    ((AbstractC2493a1) obj).getClass();
                    break;
            }
            arrayList.add(obj);
        }
        Collections.sort(arrayList, Collections.reverseOrder(new C2502d1(c2512h)));
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: renamed from: a */
    public abstract void mo3969a(String str, Throwable th);

    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    /* JADX INFO: renamed from: b */
    public C2538r m3975b() {
        boolean z9;
        List listMo3976c = mo3976c();
        if (listMo3976c != null) {
            z9 = listMo3976c.size() == 1;
        }
        AbstractC2587b.m4045l("%s does not have exactly one group", z9, listMo3976c);
        return (C2538r) listMo3976c.get(0);
    }

    /* JADX INFO: renamed from: c */
    public abstract List mo3976c();

    /* JADX INFO: renamed from: d */
    public abstract C2494b mo3977d();

    /* JADX INFO: renamed from: e */
    public abstract AbstractC2503e mo3978e();

    /* JADX INFO: renamed from: f */
    public abstract Object mo3979f();

    /* JADX INFO: renamed from: g */
    public abstract void mo3970g();

    /* JADX INFO: renamed from: i */
    public abstract void mo3980i(C2508f1 c2508f1);

    /* JADX INFO: renamed from: j */
    public abstract void mo3981j(C2555z0 c2555z0);

    /* JADX INFO: renamed from: k */
    public abstract void mo3971k();

    /* JADX INFO: renamed from: l */
    public abstract void mo3982l();

    /* JADX INFO: renamed from: m */
    public abstract void mo3972m(C3652g c3652g);

    /* JADX INFO: renamed from: n */
    public abstract void mo3983n();

    /* JADX INFO: renamed from: o */
    public abstract void mo3984o(AbstractC2503e abstractC2503e, C2547v0 c2547v0);

    /* JADX INFO: renamed from: p */
    public abstract void mo3985p(InterfaceC2516i0 interfaceC2516i0);

    /* JADX INFO: renamed from: q */
    public abstract void mo3986q(List list);
}
