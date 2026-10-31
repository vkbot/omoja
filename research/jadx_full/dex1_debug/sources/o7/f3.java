package o7;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f3 extends n7.k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f4240a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f4240a = !i4.d.a(System.getenv("GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST")) && Boolean.parseBoolean(System.getenv("GRPC_EXPERIMENTAL_ENABLE_NEW_PICK_FIRST"));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final String a() {
        return "pick_first";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final n7.j0 b(n7.e eVar) {
        return f4240a ? new a3(eVar) : new e3(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.k0
    public final n7.y0 c(Map map) {
        try {
            return new n7.y0(new c3(p4.c("shuffleAddressList", map)));
        } catch (RuntimeException e) {
            return new n7.y0(n7.f1.f3930m.g(e).h("Failed parsing configuration for pick_first"));
        }
    }
}
