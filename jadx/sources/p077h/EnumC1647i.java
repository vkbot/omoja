package p077h;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: h.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1647i {

    /* JADX INFO: renamed from: b */
    public static final EnumC1647i f4183b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC1647i[] f4184c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1647i EF0;

    static {
        EnumC1647i enumC1647i = new EnumC1647i("SRGB", 0);
        EnumC1647i enumC1647i2 = new EnumC1647i("DISPLAY_P3", 1);
        f4183b = enumC1647i2;
        f4184c = new EnumC1647i[]{enumC1647i, enumC1647i2};
    }

    public static EnumC1647i valueOf(String str) {
        return (EnumC1647i) Enum.valueOf(EnumC1647i.class, str);
    }

    public static EnumC1647i[] values() {
        return (EnumC1647i[]) f4184c.clone();
    }
}
