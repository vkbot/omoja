package p240x5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;
import p042d5.C1280a;
import p042d5.C1288i;

/* JADX INFO: renamed from: x5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3575a extends AbstractC1202y {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    private static final C3575a DEFAULT_INSTANCE;
    public static final int EXPERIMENT_PAYLOAD_FIELD_NUMBER = 2;
    private static volatile InterfaceC1200x0 PARSER;
    private int bitField0_;
    private long campaignEndTimeMillis_;
    private String campaignId_ = "";
    private String campaignName_ = "";
    private long campaignStartTimeMillis_;
    private C1288i experimentPayload_;

    static {
        C3575a c3575a = new C3575a();
        DEFAULT_INSTANCE = c3575a;
        AbstractC1202y.m2172l(C3575a.class, c3575a);
    }

    /* JADX INFO: renamed from: r */
    public static C3575a m5686r() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"bitField0_", "campaignId_", "experimentPayload_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case 3:
                return new C3575a();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3575a.class) {
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
    public final long m5687n() {
        return this.campaignEndTimeMillis_;
    }

    /* JADX INFO: renamed from: o */
    public final String m5688o() {
        return this.campaignId_;
    }

    /* JADX INFO: renamed from: p */
    public final String m5689p() {
        return this.campaignName_;
    }

    /* JADX INFO: renamed from: q */
    public final long m5690q() {
        return this.campaignStartTimeMillis_;
    }

    /* JADX INFO: renamed from: s */
    public final C1288i m5691s() {
        C1288i c1288i = this.experimentPayload_;
        return c1288i == null ? C1288i.m2292n() : c1288i;
    }
}
