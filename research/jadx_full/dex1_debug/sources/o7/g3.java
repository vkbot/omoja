package o7;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.c f4264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.v0 f4265b;
    public final n7.x0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g3(n7.x0 x0Var, n7.v0 v0Var, n7.c cVar) {
        o4.b.i(x0Var, "method");
        this.c = x0Var;
        o4.b.i(v0Var, "headers");
        this.f4265b = v0Var;
        o4.b.i(cVar, "callOptions");
        this.f4264a = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g3.class == obj.getClass()) {
            g3 g3Var = (g3) obj;
            if (com.bumptech.glide.d.f(this.f4264a, g3Var.f4264a) && com.bumptech.glide.d.f(this.f4265b, g3Var.f4265b) && com.bumptech.glide.d.f(this.c, g3Var.c)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4264a, this.f4265b, this.c});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "[method=" + this.c + " headers=" + this.f4265b + " callOptions=" + this.f4264a + "]";
    }
}
