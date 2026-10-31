package p250y5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1132b;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.C1206z0;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: y5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3648c extends AbstractC1202y {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 1;
    private static final C3648c DEFAULT_INSTANCE;
    private static volatile InterfaceC1200x0 PARSER;
    private InterfaceC1129a0 alreadySeenCampaigns_ = C1206z0.f2798e;

    static {
        C3648c c3648c = new C3648c();
        DEFAULT_INSTANCE = c3648c;
        AbstractC1202y.m2172l(C3648c.class, c3648c);
    }

    /* JADX INFO: renamed from: n */
    public static void m5834n(C3648c c3648c, C3646a c3646a) {
        c3648c.getClass();
        InterfaceC1129a0 interfaceC1129a0 = c3648c.alreadySeenCampaigns_;
        if (!((AbstractC1132b) interfaceC1129a0).f2633b) {
            int size = interfaceC1129a0.size();
            c3648c.alreadySeenCampaigns_ = interfaceC1129a0.mo1896c(size == 0 ? 10 : size * 2);
        }
        c3648c.alreadySeenCampaigns_.add(c3646a);
    }

    /* JADX INFO: renamed from: p */
    public static C3648c m5835p() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: q */
    public static C3647b m5836q() {
        return (C3647b) DEFAULT_INSTANCE.m2173d();
    }

    /* JADX INFO: renamed from: r */
    public static InterfaceC1200x0 m5837r() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"alreadySeenCampaigns_", C3646a.class});
            case 3:
                return new C3648c();
            case 4:
                return new C3647b(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3648c.class) {
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
    public final InterfaceC1129a0 m5838o() {
        return this.alreadySeenCampaigns_;
    }
}
