package d2;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f1666a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f1667b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a5.a aVar = new a5.a(1);
        HashMap map = new HashMap();
        map.put(a5.d.class, aVar);
        f1667b = new x4.c("storageMetrics", Collections.unmodifiableMap(new HashMap(map)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        ((x4.e) obj2).d(f1667b, ((g2.b) obj).f2342a);
    }
}
