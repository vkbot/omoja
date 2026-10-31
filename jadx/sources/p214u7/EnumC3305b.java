package p214u7;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: u7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC3305b {

    /* JADX INFO: renamed from: b */
    public static final EnumC3305b f9682b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC3305b[] f9683c;

    static {
        EnumC3305b enumC3305b = new EnumC3305b("BLOCKING", 0);
        f9682b = enumC3305b;
        f9683c = new EnumC3305b[]{enumC3305b, new EnumC3305b("FUTURE", 1), new EnumC3305b("ASYNC", 2)};
    }

    public static EnumC3305b valueOf(String str) {
        return (EnumC3305b) Enum.valueOf(EnumC3305b.class, str);
    }

    public static EnumC3305b[] values() {
        return (EnumC3305b[]) f9683c.clone();
    }
}
