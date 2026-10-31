package p027c2;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: c2.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0974x {

    /* JADX INFO: renamed from: b */
    public static final EnumC0974x f901b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC0974x[] f902c;

    static {
        EnumC0974x enumC0974x = new EnumC0974x("DEFAULT", 0);
        f901b = enumC0974x;
        EnumC0974x enumC0974x2 = new EnumC0974x("UNMETERED_ONLY", 1);
        EnumC0974x enumC0974x3 = new EnumC0974x("UNMETERED_OR_DAILY", 2);
        EnumC0974x enumC0974x4 = new EnumC0974x("FAST_IF_RADIO_AWAKE", 3);
        EnumC0974x enumC0974x5 = new EnumC0974x("NEVER", 4);
        EnumC0974x enumC0974x6 = new EnumC0974x("UNRECOGNIZED", 5);
        f902c = new EnumC0974x[]{enumC0974x, enumC0974x2, enumC0974x3, enumC0974x4, enumC0974x5, enumC0974x6};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, enumC0974x);
        sparseArray.put(1, enumC0974x2);
        sparseArray.put(2, enumC0974x3);
        sparseArray.put(3, enumC0974x4);
        sparseArray.put(4, enumC0974x5);
        sparseArray.put(-1, enumC0974x6);
    }

    public static EnumC0974x valueOf(String str) {
        return (EnumC0974x) Enum.valueOf(EnumC0974x.class, str);
    }

    public static EnumC0974x[] values() {
        return (EnumC0974x[]) f902c.clone();
    }
}
