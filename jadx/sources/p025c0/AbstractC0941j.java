package p025c0;

import android.os.SystemClock;

/* JADX INFO: renamed from: c0.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0941j {

    /* JADX INFO: renamed from: a */
    public static final double f798a = 1.0d / Math.pow(10.0d, 6.0d);

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f799b = 0;

    /* JADX INFO: renamed from: a */
    public static double m1076a(long j10) {
        return (SystemClock.elapsedRealtimeNanos() - j10) * f798a;
    }
}
