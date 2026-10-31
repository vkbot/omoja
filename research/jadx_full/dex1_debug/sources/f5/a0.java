package f5;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a0 {
    public static final Object c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet f2185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile a0 f2186b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Set set) {
        a0 a0Var = this.f2186b;
        if (a0Var == c) {
            return;
        }
        if (a0Var != null) {
            a0Var.a(set);
        } else {
            synchronized (this) {
                this.f2185a.addAll(set);
            }
        }
    }
}
