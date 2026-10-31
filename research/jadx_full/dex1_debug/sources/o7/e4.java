package o7;

import java.util.Arrays;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4206b;
    public final long c;
    public final double d;
    public final Long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j4.g f4207f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    public e4(int i9, long j9, long j10, double d, Long l9, Set set) {
        j4.g gVarJ;
        this.f4205a = i9;
        this.f4206b = j9;
        this.c = j10;
        this.d = d;
        this.e = l9;
        int i10 = j4.g.d;
        if (!(set instanceof j4.g) || (set instanceof SortedSet)) {
            Object[] array = set.toArray();
            gVarJ = j4.g.j(array.length, array);
        } else {
            gVarJ = (j4.g) set;
            if (gVarJ.h()) {
                Object[] array2 = set.toArray();
                gVarJ = j4.g.j(array2.length, array2);
            }
        }
        this.f4207f = gVarJ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof e4)) {
            return false;
        }
        e4 e4Var = (e4) obj;
        return this.f4205a == e4Var.f4205a && this.f4206b == e4Var.f4206b && this.c == e4Var.c && Double.compare(this.d, e4Var.d) == 0 && com.bumptech.glide.d.f(this.e, e4Var.e) && com.bumptech.glide.d.f(this.f4207f, e4Var.f4207f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4205a), Long.valueOf(this.f4206b), Long.valueOf(this.c), Double.valueOf(this.d), this.e, this.f4207f});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.e("maxAttempts", String.valueOf(this.f4205a));
        sVarT.b(this.f4206b, "initialBackoffNanos");
        sVarT.b(this.c, "maxBackoffNanos");
        sVarT.e("backoffMultiplier", String.valueOf(this.d));
        sVarT.c(this.e, "perAttemptRecvTimeoutNanos");
        sVarT.c(this.f4207f, "retryableStatusCodes");
        return sVarT.toString();
    }
}
