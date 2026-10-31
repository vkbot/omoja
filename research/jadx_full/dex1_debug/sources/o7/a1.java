package o7;

import java.util.Arrays;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4119b;
    public final j4.g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public a1(int i9, long j9, Set set) {
        j4.g gVarJ;
        this.f4118a = i9;
        this.f4119b = j9;
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
        this.c = gVarJ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a1.class != obj.getClass()) {
            return false;
        }
        a1 a1Var = (a1) obj;
        return this.f4118a == a1Var.f4118a && this.f4119b == a1Var.f4119b && com.bumptech.glide.d.f(this.c, a1Var.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4118a), Long.valueOf(this.f4119b), this.c});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.e("maxAttempts", String.valueOf(this.f4118a));
        sVarT.b(this.f4119b, "hedgingDelayNanos");
        sVarT.c(this.c, "nonFatalStatusCodes");
        return sVarT.toString();
    }
}
