package p240x5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1173o0;
import com.google.protobuf.C1199x;
import com.google.protobuf.C1206z0;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1200x0;
import java.util.Collections;
import java.util.Map;
import p042d5.C1280a;
import p042d5.C1282c;
import p042d5.C1285f;
import p042d5.C1297r;

/* JADX INFO: renamed from: x5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3577c extends AbstractC1202y {
    public static final int CONTENT_FIELD_NUMBER = 3;
    public static final int DATA_BUNDLE_FIELD_NUMBER = 8;
    private static final C3577c DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_PAYLOAD_FIELD_NUMBER = 2;
    public static final int IS_TEST_CAMPAIGN_FIELD_NUMBER = 7;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int PRIORITY_FIELD_NUMBER = 4;
    public static final int TRIGGERING_CONDITIONS_FIELD_NUMBER = 5;
    public static final int VANILLA_PAYLOAD_FIELD_NUMBER = 1;
    private int bitField0_;
    private C1297r content_;
    private boolean isTestCampaign_;
    private Object payload_;
    private C1282c priority_;
    private int payloadCase_ = 0;
    private C1173o0 dataBundle_ = C1173o0.f2737c;
    private InterfaceC1129a0 triggeringConditions_ = C1206z0.f2798e;

    static {
        C3577c c3577c = new C3577c();
        DEFAULT_INSTANCE = c3577c;
        AbstractC1202y.m2172l(C3577c.class, c3577c);
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0001\u0001\b\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003ဉ\u0000\u0004ဉ\u0001\u0005\u001b\u0007\u0007\b2", new Object[]{"payload_", "payloadCase_", "bitField0_", C3578d.class, C3575a.class, "content_", "priority_", "triggeringConditions_", C1285f.class, "isTestCampaign_", "dataBundle_", AbstractC3576b.f10634a});
            case 3:
                return new C3577c();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3577c.class) {
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
    public final C1297r m5692n() {
        C1297r c1297r = this.content_;
        return c1297r == null ? C1297r.m2330p() : c1297r;
    }

    /* JADX INFO: renamed from: o */
    public final Map m5693o() {
        return Collections.unmodifiableMap(this.dataBundle_);
    }

    /* JADX INFO: renamed from: p */
    public final C3575a m5694p() {
        return this.payloadCase_ == 2 ? (C3575a) this.payload_ : C3575a.m5686r();
    }

    /* JADX INFO: renamed from: q */
    public final boolean m5695q() {
        return this.isTestCampaign_;
    }

    /* JADX INFO: renamed from: r */
    public final int m5696r() {
        int i10 = this.payloadCase_;
        if (i10 == 0) {
            return 3;
        }
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                return 0;
            }
        }
        return i11;
    }

    /* JADX INFO: renamed from: s */
    public final C1282c m5697s() {
        C1282c c1282c = this.priority_;
        return c1282c == null ? C1282c.m2288n() : c1282c;
    }

    /* JADX INFO: renamed from: t */
    public final InterfaceC1129a0 m5698t() {
        return this.triggeringConditions_;
    }

    /* JADX INFO: renamed from: u */
    public final C3578d m5699u() {
        return this.payloadCase_ == 1 ? (C3578d) this.payload_ : C3578d.m5700r();
    }
}
