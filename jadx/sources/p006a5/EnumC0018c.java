package p006a5;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: a5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0018c {

    /* JADX INFO: renamed from: b */
    public static final EnumC0018c f67b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC0018c[] f68c;

    static {
        EnumC0018c enumC0018c = new EnumC0018c("DEFAULT", 0);
        f67b = enumC0018c;
        f68c = new EnumC0018c[]{enumC0018c, new EnumC0018c("SIGNED", 1), new EnumC0018c("FIXED", 2)};
    }

    public static EnumC0018c valueOf(String str) {
        return (EnumC0018c) Enum.valueOf(EnumC0018c.class, str);
    }

    public static EnumC0018c[] values() {
        return (EnumC0018c[]) f68c.clone();
    }
}
