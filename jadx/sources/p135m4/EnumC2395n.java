package p135m4;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: m4.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2395n implements Executor {

    /* JADX INFO: renamed from: b */
    public static final EnumC2395n f6477b;

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ EnumC2395n[] f6478c;

    static {
        EnumC2395n enumC2395n = new EnumC2395n("INSTANCE", 0);
        f6477b = enumC2395n;
        f6478c = new EnumC2395n[]{enumC2395n};
    }

    public static EnumC2395n valueOf(String str) {
        return (EnumC2395n) Enum.valueOf(EnumC2395n.class, str);
    }

    public static EnumC2395n[] values() {
        return (EnumC2395n[]) f6478c.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
