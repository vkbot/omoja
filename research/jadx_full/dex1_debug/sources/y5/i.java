package y5;

import com.google.protobuf.a0;
import com.google.protobuf.a1;
import com.google.protobuf.x;
import com.google.protobuf.x0;
import com.google.protobuf.y;
import com.google.protobuf.z0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends y {
    private static final i DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    private static volatile x0 PARSER;
    private long expirationEpochTimestampMillis_;
    private a0 messages_ = z0.e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        y.l(i.class, iVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(i iVar, long j9) {
        iVar.expirationEpochTimestampMillis_ = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static i o() {
        return DEFAULT_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h r() {
        return (h) DEFAULT_INSTANCE.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x0 s() {
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
                return new a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"messages_", x5.c.class, "expirationEpochTimestampMillis_"});
            case 3:
                return new i();
            case 4:
                return new h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (i.class) {
                    try {
                        xVar = PARSER;
                        if (xVar == null) {
                            xVar = new x(DEFAULT_INSTANCE);
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
    public final long p() {
        return this.expirationEpochTimestampMillis_;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a0 q() {
        return this.messages_;
    }
}
