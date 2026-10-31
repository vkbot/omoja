package p211u4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: u4.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC3297j implements Executor {

    /* JADX INFO: renamed from: b */
    public static final EnumC3297j f9650b;

    /* JADX INFO: renamed from: c */
    public static final Handler f9651c;

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ EnumC3297j[] f9652d;

    static {
        EnumC3297j enumC3297j = new EnumC3297j("INSTANCE", 0);
        f9650b = enumC3297j;
        f9652d = new EnumC3297j[]{enumC3297j};
        f9651c = new Handler(Looper.getMainLooper());
    }

    public static EnumC3297j valueOf(String str) {
        return (EnumC3297j) Enum.valueOf(EnumC3297j.class, str);
    }

    public static EnumC3297j[] values() {
        return (EnumC3297j[]) f9652d.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        f9651c.post(runnable);
    }
}
