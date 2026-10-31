package g0;

import e0.m;
import e0.w;
import java.util.LinkedList;
import java.util.UUID;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {
    public static final Object c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2330a = w.c(-1, m.h(new byte[]{-51, 116, 116, 15, -96, 96, -9, -61, -25, 91, 110, 7, -71, 110, -10, -45, -52, 116, 104, 15, -70, 123}, new byte[]{-113, 24, 1, 106, -44, 15, -104, -73}));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2331b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{-119, -2, -37, 35, -114, -25, 42, 38, -93, -47, -63, 43, -105, -23, 43, 54, -120, -2, -57, 35, -108, -4}, new byte[]{-53, -110, -82, 70, -6, -120, 69, 82});
        m.h(new byte[]{5, 85, -60, 82, -43, -23, 44, 121, 47, 122, -34, 90, -52, -25, 45, 105, 4, 85, -40, 82, -49, -14, 28, 93, 16, 125}, new byte[]{71, 57, -79, 55, -95, -122, 67, 13});
        UUID.fromString(m.h(new byte[]{17, 23, 125, -38, -112, -13, 7, 109, 12, 23, 125, -38, -111, -17, 6, 108, 17, 23, 96, -46, -111, -14, 7, 113, 17, 23, 117, -38, -108, -124, 14, 30, 18, 19, 11, -88}, new byte[]{33, 39, 77, -22, -95, -62, 55, 92}));
        c = new Object();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a() {
        new LinkedList();
        this.f2331b = new AtomicBoolean(true);
        new AtomicBoolean(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        synchronized (c) {
            this.f2331b.set(false);
        }
    }
}
