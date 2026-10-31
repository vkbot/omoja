package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1295p extends AbstractC1202y {
    public static final int BUTTON_HEX_COLOR_FIELD_NUMBER = 2;
    private static final C1295p DEFAULT_INSTANCE;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private String buttonHexColor_ = "";
    private C1300u text_;

    static {
        C1295p c1295p = new C1295p();
        DEFAULT_INSTANCE = c1295p;
        AbstractC1202y.m2172l(C1295p.class, c1295p);
    }

    /* JADX INFO: renamed from: o */
    public static C1295p m2310o() {
        return DEFAULT_INSTANCE;
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002Ȉ", new Object[]{"bitField0_", "text_", "buttonHexColor_"});
            case 3:
                return new C1295p();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1295p.class) {
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

    /* JADX INFO: renamed from: n */
    public final String m2311n() {
        return this.buttonHexColor_;
    }

    /* JADX INFO: renamed from: p */
    public final C1300u m2312p() {
        C1300u c1300u = this.text_;
        return c1300u == null ? C1300u.m2350n() : c1300u;
    }

    /* JADX INFO: renamed from: q */
    public final boolean m2313q() {
        return (this.bitField0_ & 1) != 0;
    }
}
