package p062f5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: f5.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1545d0 extends AbstractC1202y {
    private static final C1545d0 DEFAULT_INSTANCE;
    private static volatile InterfaceC1200x0 PARSER = null;
    public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 1;
    private long startTimeEpoch_;
    private long value_;

    static {
        C1545d0 c1545d0 = new C1545d0();
        DEFAULT_INSTANCE = c1545d0;
        AbstractC1202y.m2172l(C1545d0.class, c1545d0);
    }

    /* JADX INFO: renamed from: n */
    public static void m2635n(C1545d0 c1545d0) {
        c1545d0.value_ = 0L;
    }

    /* JADX INFO: renamed from: o */
    public static void m2636o(C1545d0 c1545d0, long j10) {
        c1545d0.startTimeEpoch_ = j10;
    }

    /* JADX INFO: renamed from: p */
    public static C1545d0 m2637p() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: renamed from: s */
    public static C1543c0 m2638s() {
        return (C1543c0) DEFAULT_INSTANCE.m2173d();
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
            case 3:
                return new C1545d0();
            case 4:
                return new C1543c0(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1545d0.class) {
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

    /* JADX INFO: renamed from: q */
    public final long m2639q() {
        return this.startTimeEpoch_;
    }

    /* JADX INFO: renamed from: r */
    public final long m2640r() {
        return this.value_;
    }
}
