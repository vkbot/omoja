package d2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f1670a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f1671b;
    public static final x4.c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a5.a aVar = new a5.a(1);
        HashMap map = new HashMap();
        map.put(a5.d.class, aVar);
        f1671b = new x4.c("logSource", Collections.unmodifiableMap(new HashMap(map)));
        a5.a aVar2 = new a5.a(2);
        HashMap map2 = new HashMap();
        map2.put(a5.d.class, aVar2);
        c = new x4.c("logEventDropped", Collections.unmodifiableMap(new HashMap(map2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        g2.e eVar = (g2.e) obj;
        x4.e eVar2 = (x4.e) obj2;
        eVar2.d(f1671b, eVar.f2351a);
        eVar2.d(c, eVar.f2352b);
    }
}
