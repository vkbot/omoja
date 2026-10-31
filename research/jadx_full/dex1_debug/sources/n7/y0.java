package n7;

import androidx.core.app.NotificationCompat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f1 f3988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3989b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y0(f1 f1Var) {
        this.f3989b = null;
        o4.b.i(f1Var, NotificationCompat.CATEGORY_STATUS);
        this.f3988a = f1Var;
        o4.b.e("cannot use OK status: %s", !f1Var.f(), f1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && y0.class == obj.getClass()) {
            y0 y0Var = (y0) obj;
            if (com.bumptech.glide.d.f(this.f3988a, y0Var.f3988a) && com.bumptech.glide.d.f(this.f3989b, y0Var.f3989b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3988a, this.f3989b});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        Object obj = this.f3989b;
        if (obj != null) {
            com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
            sVarT.c(obj, "config");
            return sVarT.toString();
        }
        com.bumptech.glide.manager.s sVarT2 = com.bumptech.glide.c.t(this);
        sVarT2.c(this.f3988a, "error");
        return sVarT2.toString();
    }

    public y0(Object obj) {
        this.f3989b = obj;
        this.f3988a = null;
    }
}
