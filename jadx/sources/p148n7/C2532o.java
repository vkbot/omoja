package p148n7;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: n7.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2532o implements Comparable {

    /* JADX INFO: renamed from: e */
    public static final C2512h f7000e = new C2512h(3);

    /* JADX INFO: renamed from: f */
    public static final long f7001f = -3153600000000000000L;

    /* JADX INFO: renamed from: b */
    public final C2512h f7002b;

    /* JADX INFO: renamed from: c */
    public final long f7003c;

    /* JADX INFO: renamed from: d */
    public volatile boolean f7004d;

    public C2532o(long j10) {
        C2512h c2512h = f7000e;
        long jNanoTime = System.nanoTime();
        this.f7002b = c2512h;
        long jMin = Math.min(3153600000000000000L, Math.max(f7001f, j10));
        this.f7003c = jNanoTime + jMin;
        this.f7004d = jMin <= 0;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m3964a() {
        if (!this.f7004d) {
            long j10 = this.f7003c;
            this.f7002b.getClass();
            if (j10 - System.nanoTime() > 0) {
                return false;
            }
            this.f7004d = true;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    public final long m3965b() {
        this.f7002b.getClass();
        long jNanoTime = System.nanoTime();
        if (!this.f7004d && this.f7003c - jNanoTime <= 0) {
            this.f7004d = true;
        }
        return this.f7003c - jNanoTime;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2532o c2532o = (C2532o) obj;
        C2512h c2512h = c2532o.f7002b;
        C2512h c2512h2 = this.f7002b;
        if (c2512h2 == c2512h) {
            long j10 = this.f7003c - c2532o.f7003c;
            if (j10 < 0) {
                return -1;
            }
            return j10 > 0 ? 1 : 0;
        }
        StringBuilder sb = new StringBuilder("Tickers (");
        sb.append(c2512h2);
        C2512h c2512h3 = c2532o.f7002b;
        sb.append(" and ");
        sb.append(c2512h3);
        sb.append(") don't match. Custom Ticker should only be used in tests!");
        throw new AssertionError(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2532o)) {
            return false;
        }
        C2532o c2532o = (C2532o) obj;
        C2512h c2512h = c2532o.f7002b;
        C2512h c2512h2 = this.f7002b;
        if (c2512h2 != null ? c2512h2 == c2512h : c2512h == null) {
            return this.f7003c == c2532o.f7003c;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.asList(this.f7002b, Long.valueOf(this.f7003c)).hashCode();
    }

    public final String toString() {
        long jM3965b = m3965b();
        long jAbs = Math.abs(jM3965b) / 1000000000;
        long jAbs2 = Math.abs(jM3965b) % 1000000000;
        StringBuilder sb = new StringBuilder();
        if (jM3965b < 0) {
            sb.append('-');
        }
        sb.append(jAbs);
        if (jAbs2 > 0) {
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
        }
        sb.append("s from now");
        C2512h c2512h = f7000e;
        C2512h c2512h2 = this.f7002b;
        if (c2512h2 != c2512h) {
            sb.append(" (ticker=" + c2512h2 + ")");
        }
        return sb.toString();
    }
}
