package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1299t extends AbstractC1202y {
    public static final int ACTION_BUTTON_FIELD_NUMBER = 4;
    public static final int ACTION_FIELD_NUMBER = 5;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 6;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final C1299t DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private C1295p actionButton_;
    private C1293n action_;
    private int bitField0_;
    private C1300u body_;
    private C1300u title_;
    private String imageUrl_ = "";
    private String backgroundHexColor_ = "";

    static {
        C1299t c1299t = new C1299t();
        DEFAULT_INSTANCE = c1299t;
        AbstractC1202y.m2172l(C1299t.class, c1299t);
    }

    /* JADX INFO: renamed from: r */
    public static C1299t m2340r() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003Ȉ\u0004ဉ\u0002\u0005ဉ\u0003\u0006Ȉ", new Object[]{"bitField0_", "title_", "body_", "imageUrl_", "actionButton_", "action_", "backgroundHexColor_"});
            case 3:
                return new C1299t();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1299t.class) {
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
    public final C1293n m2341n() {
        C1293n c1293n = this.action_;
        return c1293n == null ? C1293n.m2299o() : c1293n;
    }

    /* JADX INFO: renamed from: o */
    public final C1295p m2342o() {
        C1295p c1295p = this.actionButton_;
        return c1295p == null ? C1295p.m2310o() : c1295p;
    }

    /* JADX INFO: renamed from: p */
    public final String m2343p() {
        return this.backgroundHexColor_;
    }

    /* JADX INFO: renamed from: q */
    public final C1300u m2344q() {
        C1300u c1300u = this.body_;
        return c1300u == null ? C1300u.m2350n() : c1300u;
    }

    /* JADX INFO: renamed from: s */
    public final String m2345s() {
        return this.imageUrl_;
    }

    /* JADX INFO: renamed from: t */
    public final C1300u m2346t() {
        C1300u c1300u = this.title_;
        return c1300u == null ? C1300u.m2350n() : c1300u;
    }

    /* JADX INFO: renamed from: u */
    public final boolean m2347u() {
        return (this.bitField0_ & 8) != 0;
    }

    /* JADX INFO: renamed from: v */
    public final boolean m2348v() {
        return (this.bitField0_ & 2) != 0;
    }

    /* JADX INFO: renamed from: w */
    public final boolean m2349w() {
        return (this.bitField0_ & 1) != 0;
    }
}
