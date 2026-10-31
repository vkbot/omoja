package p077h;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: h.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1639a {

    /* JADX INFO: renamed from: b */
    public static final EnumC1639a f4171b;

    /* JADX INFO: renamed from: c */
    public static final EnumC1639a f4172c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1639a f4173d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC1639a[] f4174e;

    static {
        EnumC1639a enumC1639a = new EnumC1639a("PREFER_ARGB_8888", 0);
        f4171b = enumC1639a;
        EnumC1639a enumC1639a2 = new EnumC1639a("PREFER_RGB_565", 1);
        f4172c = enumC1639a2;
        f4174e = new EnumC1639a[]{enumC1639a, enumC1639a2};
        f4173d = enumC1639a;
    }

    public static EnumC1639a valueOf(String str) {
        return (EnumC1639a) Enum.valueOf(EnumC1639a.class, str);
    }

    public static EnumC1639a[] values() {
        return (EnumC1639a[]) f4174e.clone();
    }
}
