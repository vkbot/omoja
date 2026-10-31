package o7;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.k0 f4361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4362b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o4(n7.k0 k0Var, Object obj) {
        this.f4361a = k0Var;
        this.f4362b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && o4.class == obj.getClass()) {
            o4 o4Var = (o4) obj;
            if (com.bumptech.glide.d.f(this.f4361a, o4Var.f4361a) && com.bumptech.glide.d.f(this.f4362b, o4Var.f4362b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4361a, this.f4362b});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4361a, "provider");
        sVarT.c(this.f4362b, "config");
        return sVarT.toString();
    }
}
