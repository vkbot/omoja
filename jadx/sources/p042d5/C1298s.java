package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1298s extends AbstractC1202y {
    public static final int ACTION_FIELD_NUMBER = 2;
    private static final C1298s DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 1;
    private static volatile InterfaceC1200x0 PARSER;
    private C1293n action_;
    private int bitField0_;
    private String imageUrl_ = "";

    static {
        C1298s c1298s = new C1298s();
        DEFAULT_INSTANCE = c1298s;
        AbstractC1202y.m2172l(C1298s.class, c1298s);
    }

    /* JADX INFO: renamed from: o */
    public static C1298s m2336o() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"bitField0_", "imageUrl_", "action_"});
            case 3:
                return new C1298s();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1298s.class) {
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
    public final C1293n m2337n() {
        C1293n c1293n = this.action_;
        return c1293n == null ? C1293n.m2299o() : c1293n;
    }

    /* JADX INFO: renamed from: p */
    public final String m2338p() {
        return this.imageUrl_;
    }

    /* JADX INFO: renamed from: q */
    public final boolean m2339q() {
        return (this.bitField0_ & 1) != 0;
    }
}
