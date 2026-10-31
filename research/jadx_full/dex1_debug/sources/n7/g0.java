package n7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3936b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g0(List list, b bVar, Object obj) {
        o4.b.i(list, "addresses");
        this.f3935a = Collections.unmodifiableList(new ArrayList(list));
        o4.b.i(bVar, "attributes");
        this.f3936b = bVar;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return com.bumptech.glide.d.f(this.f3935a, g0Var.f3935a) && com.bumptech.glide.d.f(this.f3936b, g0Var.f3936b) && com.bumptech.glide.d.f(this.c, g0Var.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3935a, this.f3936b, this.c});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3935a, "addresses");
        sVarT.c(this.f3936b, "attributes");
        sVarT.c(this.c, "loadBalancingPolicyConfig");
        return sVarT.toString();
    }
}
