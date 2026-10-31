package p027c2;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c2.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0971u {

    /* JADX INFO: renamed from: b */
    public static final SparseArray f897b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC0971u[] f898c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0971u EF1;

    static {
        EnumC0971u enumC0971u = new EnumC0971u("UNKNOWN_MOBILE_SUBTYPE", 0);
        EnumC0971u enumC0971u2 = new EnumC0971u("GPRS", 1);
        EnumC0971u enumC0971u3 = new EnumC0971u("EDGE", 2);
        EnumC0971u enumC0971u4 = new EnumC0971u("UMTS", 3);
        EnumC0971u enumC0971u5 = new EnumC0971u("CDMA", 4);
        EnumC0971u enumC0971u6 = new EnumC0971u("EVDO_0", 5);
        EnumC0971u enumC0971u7 = new EnumC0971u("EVDO_A", 6);
        EnumC0971u enumC0971u8 = new EnumC0971u("RTT", 7);
        EnumC0971u enumC0971u9 = new EnumC0971u("HSDPA", 8);
        EnumC0971u enumC0971u10 = new EnumC0971u("HSUPA", 9);
        EnumC0971u enumC0971u11 = new EnumC0971u("HSPA", 10);
        EnumC0971u enumC0971u12 = new EnumC0971u("IDEN", 11);
        EnumC0971u enumC0971u13 = new EnumC0971u("EVDO_B", 12);
        EnumC0971u enumC0971u14 = new EnumC0971u("LTE", 13);
        EnumC0971u enumC0971u15 = new EnumC0971u("EHRPD", 14);
        EnumC0971u enumC0971u16 = new EnumC0971u("HSPAP", 15);
        EnumC0971u enumC0971u17 = new EnumC0971u("GSM", 16);
        EnumC0971u enumC0971u18 = new EnumC0971u("TD_SCDMA", 17);
        EnumC0971u enumC0971u19 = new EnumC0971u("IWLAN", 18);
        EnumC0971u enumC0971u20 = new EnumC0971u("LTE_CA", 19);
        f898c = new EnumC0971u[]{enumC0971u, enumC0971u2, enumC0971u3, enumC0971u4, enumC0971u5, enumC0971u6, enumC0971u7, enumC0971u8, enumC0971u9, enumC0971u10, enumC0971u11, enumC0971u12, enumC0971u13, enumC0971u14, enumC0971u15, enumC0971u16, enumC0971u17, enumC0971u18, enumC0971u19, enumC0971u20, new EnumC0971u("COMBINED", 20)};
        SparseArray sparseArray = new SparseArray();
        f897b = sparseArray;
        sparseArray.put(0, enumC0971u);
        sparseArray.put(1, enumC0971u2);
        sparseArray.put(2, enumC0971u3);
        sparseArray.put(3, enumC0971u4);
        sparseArray.put(4, enumC0971u5);
        sparseArray.put(5, enumC0971u6);
        sparseArray.put(6, enumC0971u7);
        sparseArray.put(7, enumC0971u8);
        sparseArray.put(8, enumC0971u9);
        sparseArray.put(9, enumC0971u10);
        sparseArray.put(10, enumC0971u11);
        sparseArray.put(11, enumC0971u12);
        sparseArray.put(12, enumC0971u13);
        sparseArray.put(13, enumC0971u14);
        sparseArray.put(14, enumC0971u15);
        sparseArray.put(15, enumC0971u16);
        sparseArray.put(16, enumC0971u17);
        sparseArray.put(17, enumC0971u18);
        sparseArray.put(18, enumC0971u19);
        sparseArray.put(19, enumC0971u20);
    }

    public static EnumC0971u valueOf(String str) {
        return (EnumC0971u) Enum.valueOf(EnumC0971u.class, str);
    }

    public static EnumC0971u[] values() {
        return (EnumC0971u[]) f898c.clone();
    }
}
