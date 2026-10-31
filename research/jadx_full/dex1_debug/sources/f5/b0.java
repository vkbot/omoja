package f5;

import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile Object f2189a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a0 a(p2.e eVar) {
        Object obj = this.f2189a;
        if (obj instanceof b0) {
            return ((b0) obj).a(eVar);
        }
        a0 a0Var = new a0();
        a0Var.f2185a = new HashSet();
        ((t4.n) obj).a(new f(7, a0Var, eVar));
        return a0Var;
    }
}
