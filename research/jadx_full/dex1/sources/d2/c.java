package d2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f1668a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f1669b;
    public static final x4.c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a5.a aVar = new a5.a(1);
        HashMap map = new HashMap();
        map.put(a5.d.class, aVar);
        f1669b = new x4.c("eventsDroppedCount", Collections.unmodifiableMap(new HashMap(map)));
        a5.a aVar2 = new a5.a(3);
        HashMap map2 = new HashMap();
        map2.put(a5.d.class, aVar2);
        c = new x4.c("reason", Collections.unmodifiableMap(new HashMap(map2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        g2.d dVar = (g2.d) obj;
        x4.e eVar = (x4.e) obj2;
        eVar.a(f1669b, dVar.f2349a);
        eVar.d(c, dVar.f2350b);
    }
}
