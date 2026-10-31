package p027c2;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c2.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0972v {

    /* JADX INFO: renamed from: b */
    public static final SparseArray f899b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC0972v[] f900c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0972v EF1;

    static {
        EnumC0972v enumC0972v = new EnumC0972v("MOBILE", 0);
        EnumC0972v enumC0972v2 = new EnumC0972v("WIFI", 1);
        EnumC0972v enumC0972v3 = new EnumC0972v("MOBILE_MMS", 2);
        EnumC0972v enumC0972v4 = new EnumC0972v("MOBILE_SUPL", 3);
        EnumC0972v enumC0972v5 = new EnumC0972v("MOBILE_DUN", 4);
        EnumC0972v enumC0972v6 = new EnumC0972v("MOBILE_HIPRI", 5);
        EnumC0972v enumC0972v7 = new EnumC0972v("WIMAX", 6);
        EnumC0972v enumC0972v8 = new EnumC0972v("BLUETOOTH", 7);
        EnumC0972v enumC0972v9 = new EnumC0972v("DUMMY", 8);
        EnumC0972v enumC0972v10 = new EnumC0972v("ETHERNET", 9);
        EnumC0972v enumC0972v11 = new EnumC0972v("MOBILE_FOTA", 10);
        EnumC0972v enumC0972v12 = new EnumC0972v("MOBILE_IMS", 11);
        EnumC0972v enumC0972v13 = new EnumC0972v("MOBILE_CBS", 12);
        EnumC0972v enumC0972v14 = new EnumC0972v("WIFI_P2P", 13);
        EnumC0972v enumC0972v15 = new EnumC0972v("MOBILE_IA", 14);
        EnumC0972v enumC0972v16 = new EnumC0972v("MOBILE_EMERGENCY", 15);
        EnumC0972v enumC0972v17 = new EnumC0972v("PROXY", 16);
        EnumC0972v enumC0972v18 = new EnumC0972v("VPN", 17);
        EnumC0972v enumC0972v19 = new EnumC0972v("NONE", 18);
        f900c = new EnumC0972v[]{enumC0972v, enumC0972v2, enumC0972v3, enumC0972v4, enumC0972v5, enumC0972v6, enumC0972v7, enumC0972v8, enumC0972v9, enumC0972v10, enumC0972v11, enumC0972v12, enumC0972v13, enumC0972v14, enumC0972v15, enumC0972v16, enumC0972v17, enumC0972v18, enumC0972v19};
        SparseArray sparseArray = new SparseArray();
        f899b = sparseArray;
        sparseArray.put(0, enumC0972v);
        sparseArray.put(1, enumC0972v2);
        sparseArray.put(2, enumC0972v3);
        sparseArray.put(3, enumC0972v4);
        sparseArray.put(4, enumC0972v5);
        sparseArray.put(5, enumC0972v6);
        sparseArray.put(6, enumC0972v7);
        sparseArray.put(7, enumC0972v8);
        sparseArray.put(8, enumC0972v9);
        sparseArray.put(9, enumC0972v10);
        sparseArray.put(10, enumC0972v11);
        sparseArray.put(11, enumC0972v12);
        sparseArray.put(12, enumC0972v13);
        sparseArray.put(13, enumC0972v14);
        sparseArray.put(14, enumC0972v15);
        sparseArray.put(15, enumC0972v16);
        sparseArray.put(16, enumC0972v17);
        sparseArray.put(17, enumC0972v18);
        sparseArray.put(-1, enumC0972v19);
    }

    public static EnumC0972v valueOf(String str) {
        return (EnumC0972v) Enum.valueOf(EnumC0972v.class, str);
    }

    public static EnumC0972v[] values() {
        return (EnumC0972v[]) f900c.clone();
    }
}
