package n7;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements Comparable {
    public static final h e = new h(3);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f3960f = -3153600000000000000L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f3961b;
    public final long c;
    public volatile boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(long j9) {
        h hVar = e;
        long jNanoTime = System.nanoTime();
        this.f3961b = hVar;
        long jMin = Math.min(3153600000000000000L, Math.max(f3960f, j9));
        this.c = jNanoTime + jMin;
        this.d = jMin <= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        if (!this.d) {
            long j9 = this.c;
            this.f3961b.getClass();
            if (j9 - System.nanoTime() > 0) {
                return false;
            }
            this.d = true;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long b() {
        this.f3961b.getClass();
        long jNanoTime = System.nanoTime();
        if (!this.d && this.c - jNanoTime <= 0) {
            this.d = true;
        }
        return this.c - jNanoTime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        o oVar = (o) obj;
        h hVar = oVar.f3961b;
        h hVar2 = this.f3961b;
        if (hVar2 == hVar) {
            long j9 = this.c - oVar.c;
            if (j9 < 0) {
                return -1;
            }
            return j9 > 0 ? 1 : 0;
        }
        StringBuilder sb = new StringBuilder("Tickers (");
        sb.append(hVar2);
        h hVar3 = oVar.f3961b;
        sb.append(" and ");
        sb.append(hVar3);
        sb.append(") don't match. Custom Ticker should only be used in tests!");
        throw new AssertionError(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        h hVar = oVar.f3961b;
        h hVar2 = this.f3961b;
        if (hVar2 != null ? hVar2 == hVar : hVar == null) {
            return this.c == oVar.c;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.asList(this.f3961b, Long.valueOf(this.c)).hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        long jB = b();
        long jAbs = Math.abs(jB) / 1000000000;
        long jAbs2 = Math.abs(jB) % 1000000000;
        StringBuilder sb = new StringBuilder();
        if (jB < 0) {
            sb.append('-');
        }
        sb.append(jAbs);
        if (jAbs2 > 0) {
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
        }
        sb.append("s from now");
        h hVar = e;
        h hVar2 = this.f3961b;
        if (hVar2 != hVar) {
            sb.append(" (ticker=" + hVar2 + ")");
        }
        return sb.toString();
    }
}
