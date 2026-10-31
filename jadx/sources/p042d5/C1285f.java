package p042d5;

import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1130a1;
import com.google.protobuf.C1199x;
import com.google.protobuf.InterfaceC1200x0;

/* JADX INFO: renamed from: d5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1285f extends AbstractC1202y {
    private static final C1285f DEFAULT_INSTANCE;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int FIAM_TRIGGER_FIELD_NUMBER = 1;
    private static volatile InterfaceC1200x0 PARSER;
    private int conditionCase_ = 0;
    private Object condition_;

    static {
        C1285f c1285f = new C1285f();
        DEFAULT_INSTANCE = c1285f;
        AbstractC1202y.m2172l(C1285f.class, c1285f);
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
                return new C1130a1(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000", new Object[]{"condition_", "conditionCase_", C1281b.class});
            case 3:
                return new C1285f();
            case 4:
                return new C1280a(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC1200x0 interfaceC1200x0 = PARSER;
                if (interfaceC1200x0 != null) {
                    return interfaceC1200x0;
                }
                synchronized (C1285f.class) {
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
    public final C1281b m2290n() {
        return this.conditionCase_ == 2 ? (C1281b) this.condition_ : C1281b.m2286n();
    }

    /* JADX INFO: renamed from: o */
    public final EnumC1283d m2291o() {
        int i10 = this.conditionCase_;
        EnumC1283d enumC1283d = EnumC1283d.UNKNOWN_TRIGGER;
        if (i10 == 1) {
            int iIntValue = ((Integer) this.condition_).intValue();
            if (iIntValue != 0) {
                if (iIntValue != 1) {
                    enumC1283d = iIntValue != 2 ? null : EnumC1283d.ON_FOREGROUND;
                } else {
                    enumC1283d = EnumC1283d.APP_LAUNCH;
                }
            }
            if (enumC1283d == null) {
                return EnumC1283d.UNRECOGNIZED;
            }
        }
        return enumC1283d;
    }
}
