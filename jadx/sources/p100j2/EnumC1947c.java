package p100j2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j2.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1947c {

    /* JADX INFO: renamed from: b */
    public static final EnumC1947c f5304b;

    /* JADX INFO: renamed from: c */
    public static final EnumC1947c f5305c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1947c f5306d;

    /* JADX INFO: renamed from: e */
    public static final /* synthetic */ EnumC1947c[] f5307e;

    static {
        EnumC1947c enumC1947c = new EnumC1947c("NETWORK_UNMETERED", 0);
        f5304b = enumC1947c;
        EnumC1947c enumC1947c2 = new EnumC1947c("DEVICE_IDLE", 1);
        f5305c = enumC1947c2;
        EnumC1947c enumC1947c3 = new EnumC1947c("DEVICE_CHARGING", 2);
        f5306d = enumC1947c3;
        f5307e = new EnumC1947c[]{enumC1947c, enumC1947c2, enumC1947c3};
    }

    public static EnumC1947c valueOf(String str) {
        return (EnumC1947c) Enum.valueOf(EnumC1947c.class, str);
    }

    public static EnumC1947c[] values() {
        return (EnumC1947c[]) f5307e.clone();
    }
}
