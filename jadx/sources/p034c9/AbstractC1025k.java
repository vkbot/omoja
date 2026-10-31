package p034c9;

import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;
import p010a9.AbstractC0035a;
import p010a9.AbstractC0062x;

/* JADX INFO: renamed from: c9.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1025k {

    /* JADX INFO: renamed from: a */
    public static final String f1050a;

    /* JADX INFO: renamed from: b */
    public static final long f1051b;

    /* JADX INFO: renamed from: c */
    public static final int f1052c;

    /* JADX INFO: renamed from: d */
    public static final int f1053d;

    /* JADX INFO: renamed from: e */
    public static final long f1054e;

    /* JADX INFO: renamed from: f */
    public static final C1020f f1055f;

    /* JADX INFO: renamed from: g */
    public static final C1023i f1056g;

    /* JADX INFO: renamed from: h */
    public static final C1023i f1057h;

    static {
        String property;
        int i10 = AbstractC0062x.f153a;
        try {
            property = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            property = "DefaultDispatcher";
        }
        f1050a = property;
        f1051b = AbstractC0035a.m101h(100000L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.resolution.ns");
        f1052c = AbstractC0035a.m102i(RangesKt.coerceAtLeast(AbstractC0062x.f153a, 2), 8, "kotlinx.coroutines.scheduler.core.pool.size");
        f1053d = AbstractC0035a.m102i(2097150, 4, "kotlinx.coroutines.scheduler.max.pool.size");
        f1054e = TimeUnit.SECONDS.toNanos(AbstractC0035a.m101h(60L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f1055f = C1020f.f1044a;
        f1056g = new C1023i(0);
        f1057h = new C1023i(1);
    }
}
