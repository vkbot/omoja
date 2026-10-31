package f5;

import com.google.protobuf.a1;
import com.google.protobuf.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d0 extends com.google.protobuf.y {
    private static final d0 DEFAULT_INSTANCE;
    private static volatile x0 PARSER = null;
    public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 1;
    private long startTimeEpoch_;
    private long value_;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        d0 d0Var = new d0();
        DEFAULT_INSTANCE = d0Var;
        com.google.protobuf.y.l(d0.class, d0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(d0 d0Var) {
        d0Var.value_ = 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void o(d0 d0Var, long j9) {
        d0Var.startTimeEpoch_ = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d0 p() {
        return DEFAULT_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static c0 s() {
        return (c0) DEFAULT_INSTANCE.d();
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
                return new a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
            case 3:
                return new d0();
            case 4:
                return new c0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (d0.class) {
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
    public final long q() {
        return this.startTimeEpoch_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long r() {
        return this.value_;
    }
}
