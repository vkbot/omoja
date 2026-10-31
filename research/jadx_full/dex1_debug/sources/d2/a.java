package d2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f1664a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f1665b;
    public static final x4.c c;
    public static final x4.c d;
    public static final x4.c e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a5.a aVar = new a5.a(1);
        HashMap map = new HashMap();
        map.put(a5.d.class, aVar);
        f1665b = new x4.c("window", Collections.unmodifiableMap(new HashMap(map)));
        a5.a aVar2 = new a5.a(2);
        HashMap map2 = new HashMap();
        map2.put(a5.d.class, aVar2);
        c = new x4.c("logSourceMetrics", Collections.unmodifiableMap(new HashMap(map2)));
        a5.a aVar3 = new a5.a(3);
        HashMap map3 = new HashMap();
        map3.put(a5.d.class, aVar3);
        d = new x4.c("globalMetrics", Collections.unmodifiableMap(new HashMap(map3)));
        a5.a aVar4 = new a5.a(4);
        HashMap map4 = new HashMap();
        map4.put(a5.d.class, aVar4);
        e = new x4.c("appNamespace", Collections.unmodifiableMap(new HashMap(map4)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        g2.a aVar = (g2.a) obj;
        x4.e eVar = (x4.e) obj2;
        eVar.d(f1665b, aVar.f2340a);
        eVar.d(c, aVar.f2341b);
        eVar.d(d, aVar.c);
        eVar.d(e, aVar.d);
    }
}
