package y5;

import com.google.protobuf.a1;
import com.google.protobuf.x;
import com.google.protobuf.x0;
import com.google.protobuf.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends y {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;
    private static final e DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 1;
    private static volatile x0 PARSER;
    private String gmpAppId_ = "";
    private String appInstanceId_ = "";
    private String appInstanceIdToken_ = "";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        y.l(e.class, eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.gmpAppId_ = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void o(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.appInstanceId_ = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.appInstanceIdToken_ = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d q() {
        return (d) DEFAULT_INSTANCE.d();
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
                return new a1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});
            case 3:
                return new e();
            case 4:
                return new d(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                x0 x0Var = PARSER;
                if (x0Var != null) {
                    return x0Var;
                }
                synchronized (e.class) {
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
}
