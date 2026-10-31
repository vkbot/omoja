package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1297r extends AbstractC1202y {
    public static final int BANNER_FIELD_NUMBER = 1;
    public static final int CARD_FIELD_NUMBER = 4;
    private static final C1297r DEFAULT_INSTANCE;
    public static final int IMAGE_ONLY_FIELD_NUMBER = 3;
    public static final int MODAL_FIELD_NUMBER = 2;
    private static volatile InterfaceC1200x0 PARSER;
    private int messageDetailsCase_ = 0;
    private Object messageDetails_;

    static {
        C1297r c1297r = new C1297r();
        DEFAULT_INSTANCE = c1297r;
        AbstractC1202y.m2172l(C1297r.class, c1297r);
    }

    /* JADX INFO: renamed from: p */
    public static C1297r m2330p() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000", new Object[]{"messageDetails_", "messageDetailsCase_", C1294o.class, C1299t.class, C1298s.class, C1296q.class});
            case 3:
                return new C1297r();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1297r.class) {
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
    public final C1294o m2331n() {
        return this.messageDetailsCase_ == 1 ? (C1294o) this.messageDetails_ : C1294o.m2301q();
    }

    /* JADX INFO: renamed from: o */
    public final C1296q m2332o() {
        return this.messageDetailsCase_ == 4 ? (C1296q) this.messageDetails_ : C1296q.m2314p();
    }

    /* JADX INFO: renamed from: q */
    public final C1298s m2333q() {
        return this.messageDetailsCase_ == 3 ? (C1298s) this.messageDetails_ : C1298s.m2336o();
    }

    /* JADX INFO: renamed from: r */
    public final int m2334r() {
        int i10 = this.messageDetailsCase_;
        if (i10 == 0) {
            return 5;
        }
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                i11 = 3;
                if (i10 != 3) {
                    i11 = 4;
                    if (i10 != 4) {
                        return 0;
                    }
                }
            }
        }
        return i11;
    }

    /* JADX INFO: renamed from: s */
    public final C1299t m2335s() {
        return this.messageDetailsCase_ == 2 ? (C1299t) this.messageDetails_ : C1299t.m2340r();
    }
}
