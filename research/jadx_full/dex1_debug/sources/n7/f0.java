package n7;

import androidx.core.app.NotificationCompat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f0 {
    public static final f0 e = new f0(null, null, f1.e, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f3921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f3922b;
    public final f1 c;
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f0(t tVar, g gVar, f1 f1Var, boolean z8) {
        this.f3921a = tVar;
        this.f3922b = gVar;
        o4.b.i(f1Var, NotificationCompat.CATEGORY_STATUS);
        this.c = f1Var;
        this.d = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f0 a(f1 f1Var) {
        o4.b.d("error status shouldn't be OK", !f1Var.f());
        return new f0(null, null, f1Var, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f0 b(t tVar, v7.r rVar) {
        o4.b.i(tVar, "subchannel");
        return new f0(tVar, rVar, f1.e, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return com.bumptech.glide.d.f(this.f3921a, f0Var.f3921a) && com.bumptech.glide.d.f(this.c, f0Var.c) && com.bumptech.glide.d.f(this.f3922b, f0Var.f3922b) && this.d == f0Var.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3921a, this.c, this.f3922b, Boolean.valueOf(this.d)});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3921a, "subchannel");
        sVarT.c(this.f3922b, "streamTracerFactory");
        sVarT.c(this.c, NotificationCompat.CATEGORY_STATUS);
        sVarT.d("drop", this.d);
        return sVarT.toString();
    }
}
