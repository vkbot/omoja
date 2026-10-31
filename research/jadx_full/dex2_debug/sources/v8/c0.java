package v8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class c0 {
    public static final /* synthetic */ int a = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        String property;
        int i = a9.x.a;
        try {
            property = System.getProperty("kotlinx.coroutines.main.delay");
        } catch (SecurityException unused) {
            property = null;
        }
        if (!(property != null ? Boolean.parseBoolean(property) : false)) {
            b0 b0Var = b0.h;
            return;
        }
        c9.d dVar = h0.a;
        w8.c cVar = a9.q.a;
        w8.c cVar2 = cVar.d;
        if (cVar == null) {
            b0 b0Var2 = b0.h;
        }
    }
}
