package p250y5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.C1206z0;
import com.google.protobuf.InterfaceC1129a0;
import com.google.protobuf.InterfaceC1200x0;
import p240x5.C3577c;

/* JADX INFO: renamed from: y5.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3654i extends AbstractC1202y {
    private static final C3654i DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    private static volatile InterfaceC1200x0 PARSER;
    private long expirationEpochTimestampMillis_;
    private InterfaceC1129a0 messages_ = C1206z0.f2798e;

    static {
        C3654i c3654i = new C3654i();
        DEFAULT_INSTANCE = c3654i;
        AbstractC1202y.m2172l(C3654i.class, c3654i);
    }

    /* JADX INFO: renamed from: n */
    public static void m5849n(C3654i c3654i, long j10) {
        c3654i.expirationEpochTimestampMillis_ = j10;
    }

    /* JADX INFO: renamed from: o */
    public static C3654i m5850o() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: r */
    public static C3653h m5851r() {
        return (C3653h) DEFAULT_INSTANCE.m2173d();
    }

    /* JADX INFO: renamed from: s */
    public static InterfaceC1200x0 m5852s() {
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"messages_", C3577c.class, "expirationEpochTimestampMillis_"});
            case 3:
                return new C3654i();
            case 4:
                return new C3653h(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C3654i.class) {
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

    /* JADX INFO: renamed from: p */
    public final long m5853p() {
        return this.expirationEpochTimestampMillis_;
    }

    /* JADX INFO: renamed from: q */
    public final InterfaceC1129a0 m5854q() {
        return this.messages_;
    }
}
