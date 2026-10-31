package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1296q extends AbstractC1202y {
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final C1296q DEFAULT_INSTANCE;
    public static final int LANDSCAPE_IMAGE_URL_FIELD_NUMBER = 4;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int PORTRAIT_IMAGE_URL_FIELD_NUMBER = 3;
    public static final int PRIMARY_ACTION_BUTTON_FIELD_NUMBER = 6;
    public static final int PRIMARY_ACTION_FIELD_NUMBER = 7;
    public static final int SECONDARY_ACTION_BUTTON_FIELD_NUMBER = 8;
    public static final int SECONDARY_ACTION_FIELD_NUMBER = 9;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int bitField0_;
    private C1300u body_;
    private C1295p primaryActionButton_;
    private C1293n primaryAction_;
    private C1295p secondaryActionButton_;
    private C1293n secondaryAction_;
    private C1300u title_;
    private String portraitImageUrl_ = "";
    private String landscapeImageUrl_ = "";
    private String backgroundHexColor_ = "";

    static {
        C1296q c1296q = new C1296q();
        DEFAULT_INSTANCE = c1296q;
        AbstractC1202y.m2172l(C1296q.class, c1296q);
    }

    /* JADX INFO: renamed from: p */
    public static C1296q m2314p() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: A */
    public final boolean m2315A() {
        return (this.bitField0_ & 32) != 0;
    }

    /* JADX INFO: renamed from: B */
    public final boolean m2316B() {
        return (this.bitField0_ & 16) != 0;
    }

    /* JADX INFO: renamed from: C */
    public final boolean m2317C() {
        return (this.bitField0_ & 1) != 0;
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006ဉ\u0002\u0007ဉ\u0003\bဉ\u0004\tဉ\u0005", new Object[]{"bitField0_", "title_", "body_", "portraitImageUrl_", "landscapeImageUrl_", "backgroundHexColor_", "primaryActionButton_", "primaryAction_", "secondaryActionButton_", "secondaryAction_"});
            case 3:
                return new C1296q();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1296q.class) {
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
    public final String m2318n() {
        return this.backgroundHexColor_;
    }

    /* JADX INFO: renamed from: o */
    public final C1300u m2319o() {
        C1300u c1300u = this.body_;
        return c1300u == null ? C1300u.m2350n() : c1300u;
    }

    /* JADX INFO: renamed from: q */
    public final String m2320q() {
        return this.landscapeImageUrl_;
    }

    /* JADX INFO: renamed from: r */
    public final String m2321r() {
        return this.portraitImageUrl_;
    }

    /* JADX INFO: renamed from: s */
    public final C1293n m2322s() {
        C1293n c1293n = this.primaryAction_;
        return c1293n == null ? C1293n.m2299o() : c1293n;
    }

    /* JADX INFO: renamed from: t */
    public final C1295p m2323t() {
        C1295p c1295p = this.primaryActionButton_;
        return c1295p == null ? C1295p.m2310o() : c1295p;
    }

    /* JADX INFO: renamed from: u */
    public final C1293n m2324u() {
        C1293n c1293n = this.secondaryAction_;
        return c1293n == null ? C1293n.m2299o() : c1293n;
    }

    /* JADX INFO: renamed from: v */
    public final C1295p m2325v() {
        C1295p c1295p = this.secondaryActionButton_;
        return c1295p == null ? C1295p.m2310o() : c1295p;
    }

    /* JADX INFO: renamed from: w */
    public final C1300u m2326w() {
        C1300u c1300u = this.title_;
        return c1300u == null ? C1300u.m2350n() : c1300u;
    }

    /* JADX INFO: renamed from: x */
    public final boolean m2327x() {
        return (this.bitField0_ & 2) != 0;
    }

    /* JADX INFO: renamed from: y */
    public final boolean m2328y() {
        return (this.bitField0_ & 8) != 0;
    }

    /* JADX INFO: renamed from: z */
    public final boolean m2329z() {
        return (this.bitField0_ & 4) != 0;
    }
}
