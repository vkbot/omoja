package p091i4;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: i4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1748f {

    /* JADX INFO: renamed from: a */
    public boolean f4562a;

    /* JADX INFO: renamed from: b */
    public long f4563b;

    /* JADX INFO: renamed from: a */
    public final long m2872a() {
        if (this.f4562a) {
            return System.nanoTime() - this.f4563b;
        }
        return 0L;
    }

    /* JADX INFO: renamed from: b */
    public final void m2873b() {
        AbstractC2587b.m4046m(!this.f4562a, "This stopwatch is already running.");
        this.f4562a = true;
        this.f4563b = System.nanoTime();
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jNanoTime = this.f4562a ? System.nanoTime() - this.f4563b : 0L;
        long j10 = jNanoTime / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j10 > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jNanoTime / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jNanoTime / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jNanoTime / 1000000000 > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jNanoTime / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jNanoTime / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        double dConvert = jNanoTime / timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        int i10 = AbstractC1746d.f4560a;
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(dConvert)));
        sb.append(" ");
        switch (AbstractC1747e.f4561a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        sb.append(str);
        return sb.toString();
    }
}
