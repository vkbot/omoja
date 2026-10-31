package o7;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f4355b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n4(String str, Map map) {
        o4.b.i(str, "policyName");
        this.f4354a = str;
        o4.b.i(map, "rawConfigValue");
        this.f4355b = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof n4) {
            n4 n4Var = (n4) obj;
            if (this.f4354a.equals(n4Var.f4354a) && this.f4355b.equals(n4Var.f4355b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4354a, this.f4355b});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4354a, "policyName");
        sVarT.c(this.f4355b, "rawConfigValue");
        return sVarT.toString();
    }
}
