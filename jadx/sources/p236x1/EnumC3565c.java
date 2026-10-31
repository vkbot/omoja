package p236x1;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: x1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC3565c {

    /* JADX INFO: renamed from: b */
    public static final EnumC3565c f10623b;

    /* JADX INFO: renamed from: c */
    public static final EnumC3565c f10624c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC3565c[] f10625d;

    static {
        EnumC3565c enumC3565c = new EnumC3565c("ROUND", 0);
        f10623b = enumC3565c;
        EnumC3565c enumC3565c2 = new EnumC3565c("BUTT", 1);
        f10624c = enumC3565c2;
        f10625d = new EnumC3565c[]{enumC3565c, enumC3565c2};
    }

    public static EnumC3565c valueOf(String str) {
        return (EnumC3565c) Enum.valueOf(EnumC3565c.class, str);
    }

    public static EnumC3565c[] values() {
        return (EnumC3565c[]) f10625d.clone();
    }
}
