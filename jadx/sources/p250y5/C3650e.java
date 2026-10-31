package p250y5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: y5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3650e extends AbstractC1202y {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;
    private static final C3650e DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 1;
    private static volatile InterfaceC1200x0 PARSER;
    private String gmpAppId_ = "";
    private String appInstanceId_ = "";
    private String appInstanceIdToken_ = "";

    static {
        C3650e c3650e = new C3650e();
        DEFAULT_INSTANCE = c3650e;
        AbstractC1202y.m2172l(C3650e.class, c3650e);
    }

    /* JADX INFO: renamed from: n */
    public static void m5839n(C3650e c3650e, String str) {
        c3650e.getClass();
        str.getClass();
        c3650e.gmpAppId_ = str;
    }

    /* JADX INFO: renamed from: o */
    public static void m5840o(C3650e c3650e, String str) {
        c3650e.getClass();
        str.getClass();
        c3650e.appInstanceId_ = str;
    }

    /* JADX INFO: renamed from: p */
    public static void m5841p(C3650e c3650e, String str) {
        c3650e.getClass();
        str.getClass();
        c3650e.appInstanceIdToken_ = str;
    }

    /* JADX INFO: renamed from: q */
    public static C3649d m5842q() {
        return (C3649d) DEFAULT_INSTANCE.m2173d();
    }

    @Override // com.google.protobuf.AbstractC1202y
    /* JADX INFO: renamed from: e */
    public final Object mo2174e(int i10) {
        InterfaceC1200x0 c1199x;
        switch (AbstractC1034g.m1296c(i10)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});
            case 3:
                return new C3650e();
            case 4:
                return new C3649d(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3650e.class) {
                    try {
                        c1199x = PARSER;
                        if (c1199x == null) {
                            c1199x = new C1199x(DEFAULT_INSTANCE);
                            PARSER = c1199x;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return c1199x;
            default:
                C0674b.m835a();
                return null;
        }
    }
}
