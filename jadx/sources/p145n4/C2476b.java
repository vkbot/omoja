package p145n4;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: n4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2476b extends AbstractC1202y {
    public static final int APP_VERSION_FIELD_NUMBER = 1;
    private static final C2476b DEFAULT_INSTANCE;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 2;
    public static final int TIME_ZONE_FIELD_NUMBER = 4;
    private String appVersion_ = "";
    private String platformVersion_ = "";
    private String languageCode_ = "";
    private String timeZone_ = "";

    static {
        C2476b c2476b = new C2476b();
        DEFAULT_INSTANCE = c2476b;
        AbstractC1202y.m2172l(C2476b.class, c2476b);
    }

    /* JADX INFO: renamed from: n */
    public static void m3841n(C2476b c2476b, String str) {
        c2476b.getClass();
        str.getClass();
        c2476b.appVersion_ = str;
    }

    /* JADX INFO: renamed from: o */
    public static void m3842o(C2476b c2476b, String str) {
        c2476b.getClass();
        str.getClass();
        c2476b.timeZone_ = str;
    }

    /* JADX INFO: renamed from: p */
    public static void m3843p(C2476b c2476b, String str) {
        c2476b.getClass();
        str.getClass();
        c2476b.platformVersion_ = str;
    }

    /* JADX INFO: renamed from: q */
    public static void m3844q(C2476b c2476b, String str) {
        c2476b.getClass();
        str.getClass();
        c2476b.languageCode_ = str;
    }

    /* JADX INFO: renamed from: r */
    public static C2475a m3845r() {
        return (C2475a) DEFAULT_INSTANCE.m2173d();
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"appVersion_", "platformVersion_", "languageCode_", "timeZone_"});
            case 3:
                return new C2476b();
            case 4:
                return new C2475a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C2476b.class) {
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
