package f5;

import com.google.protobuf.a1;
import com.google.protobuf.o0;
import com.google.protobuf.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 extends com.google.protobuf.y {
    private static final f0 DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 1;
    private static volatile x0 PARSER;
    private o0 limits_ = o0.c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f0 f0Var = new f0();
        DEFAULT_INSTANCE = f0Var;
        com.google.protobuf.y.l(f0.class, f0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f0 n() {
        return DEFAULT_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x0 p() {
        return (x0) DEFAULT_INSTANCE.e(7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.y
    public final Object e(int i9) {
        x0 xVar;
        switch (com.bumptech.glide.g.c(i9)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new a1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"limits_", e0.f2195a});
            case 3:
                return new f0();
            case 4:
                return new d5.a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (f0.class) {
                    try {
                        xVar = PARSER;
                        if (xVar == null) {
                            xVar = new com.google.protobuf.x(DEFAULT_INSTANCE);
                            PARSER = xVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return xVar;
            default:
                androidx.navigation.b.a();
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 o(d0 d0Var) {
        o0 o0Var = this.limits_;
        return o0Var.containsKey("APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY") ? (d0) o0Var.get("APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY") : d0Var;
    }
}
