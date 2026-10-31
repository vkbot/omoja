package n7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3991b;
    public final y0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z0(List list, b bVar, y0 y0Var) {
        this.f3990a = Collections.unmodifiableList(new ArrayList(list));
        o4.b.i(bVar, "attributes");
        this.f3991b = bVar;
        this.c = y0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return com.bumptech.glide.d.f(this.f3990a, z0Var.f3990a) && com.bumptech.glide.d.f(this.f3991b, z0Var.f3991b) && com.bumptech.glide.d.f(this.c, z0Var.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3990a, this.f3991b, this.c});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3990a, "addresses");
        sVarT.c(this.f3991b, "attributes");
        sVarT.c(this.c, "serviceConfig");
        return sVarT.toString();
    }
}
