package n7;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f3980b;
    public final long c;
    public final z d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(String str, v vVar, long j9, o7.k1 k1Var) {
        this.f3979a = str;
        this.f3980b = vVar;
        this.c = j9;
        this.d = k1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return com.bumptech.glide.d.f(this.f3979a, wVar.f3979a) && com.bumptech.glide.d.f(this.f3980b, wVar.f3980b) && this.c == wVar.c && com.bumptech.glide.d.f(null, null) && com.bumptech.glide.d.f(this.d, wVar.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3979a, this.f3980b, Long.valueOf(this.c), null, this.d});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3979a, "description");
        sVarT.c(this.f3980b, "severity");
        sVarT.b(this.c, "timestampNanos");
        sVarT.c(null, "channelRef");
        sVarT.c(this.d, "subchannelRef");
        return sVarT.toString();
    }
}
