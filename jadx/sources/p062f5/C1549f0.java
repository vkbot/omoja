package p062f5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1173o0;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;
import p042d5.C1280a;

/* JADX INFO: renamed from: f5.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1549f0 extends AbstractC1202y {
    private static final C1549f0 DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 1;
    private static volatile InterfaceC1200x0 PARSER;
    private C1173o0 limits_ = C1173o0.f2737c;

    static {
        C1549f0 c1549f0 = new C1549f0();
        DEFAULT_INSTANCE = c1549f0;
        AbstractC1202y.m2172l(C1549f0.class, c1549f0);
    }

    /* JADX INFO: renamed from: n */
    public static C1549f0 m2641n() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: p */
    public static InterfaceC1200x0 m2642p() {
        return (InterfaceC1200x0) DEFAULT_INSTANCE.mo2174e(7);
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"limits_", AbstractC1547e0.f3803a});
            case 3:
                return new C1549f0();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1549f0.class) {
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

    /* JADX INFO: renamed from: o */
    public final C1545d0 m2643o(C1545d0 c1545d0) {
        C1173o0 c1173o0 = this.limits_;
        return c1173o0.containsKey("APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY") ? (C1545d0) c1173o0.get("APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY") : c1545d0;
    }
}
