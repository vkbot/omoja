package n7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f3972a = new a("io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f3973b = new a("io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR");
    public static final a c = new a("io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:35:0x005a */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.ArrayList] */
    public static List h(Class cls, Iterable iterable, ClassLoader classLoader, h hVar) {
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
            switch (hVar.f3938b) {
                case 6:
                    ((k0) obj).getClass();
                    break;
                case 7:
                    ((n0) obj).getClass();
                    break;
                default:
                    ((a1) obj).getClass();
                    break;
            }
            arrayList.add(obj);
        }
        Collections.sort(arrayList, Collections.reverseOrder(new d1(hVar)));
        return Collections.unmodifiableList(arrayList);
    }

    public abstract void a(String str, Throwable th);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    public r b() {
        boolean z8;
        List listC = c();
        if (listC != null) {
            z8 = listC.size() == 1;
        }
        o4.b.l("%s does not have exactly one group", z8, listC);
        return (r) listC.get(0);
    }

    public abstract List c();

    public abstract b d();

    public abstract e e();

    public abstract Object f();

    public abstract void g();

    public abstract void i(f1 f1Var);

    public abstract void j(z0 z0Var);

    public abstract void k();

    public abstract void l();

    public abstract void m(y5.g gVar);

    public abstract void n();

    public abstract void o(e eVar, v0 v0Var);

    public abstract void p(i0 i0Var);

    public abstract void q(List list);
}
