package p067g0;

import java.util.LinkedList;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;

/* JADX INFO: renamed from: g0.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1599a {

    /* JADX INFO: renamed from: c */
    public static final Object f4013c;

    /* JADX INFO: renamed from: a */
    public final ScheduledThreadPoolExecutor f4014a = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-51, 116, 116, 15, -96, 96, -9, -61, -25, 91, 110, 7, -71, 110, -10, -45, -52, 116, 104, 15, -70, 123}, new byte[]{-113, 24, 1, 106, -44, 15, -104, -73}));

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f4015b;

    static {
        AbstractC1387m.m2421h(new byte[]{-119, -2, -37, 35, -114, -25, 42, 38, -93, -47, -63, 43, -105, -23, 43, 54, -120, -2, -57, 35, -108, -4}, new byte[]{-53, -110, -82, 70, -6, -120, 69, 82});
        AbstractC1387m.m2421h(new byte[]{5, 85, -60, 82, -43, -23, 44, 121, 47, 122, -34, 90, -52, -25, 45, 105, 4, 85, -40, 82, -49, -14, 28, 93, 16, 125}, new byte[]{71, 57, -79, 55, -95, -122, 67, 13});
        UUID.fromString(AbstractC1387m.m2421h(new byte[]{17, 23, 125, -38, -112, -13, 7, 109, 12, 23, 125, -38, -111, -17, 6, 108, 17, 23, 96, -46, -111, -14, 7, 113, 17, 23, 117, -38, -108, -124, 14, 30, 18, 19, 11, -88}, new byte[]{33, 39, 77, -22, -95, -62, 55, 92}));
        f4013c = new Object();
    }

    public C1599a() {
        new LinkedList();
        this.f4015b = new AtomicBoolean(true);
        new AtomicBoolean(false);
    }

    /* JADX INFO: renamed from: a */
    public final void m2686a() {
        synchronized (f4013c) {
            this.f4015b.set(false);
        }
    }
}
