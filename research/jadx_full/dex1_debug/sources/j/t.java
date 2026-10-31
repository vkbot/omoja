package j;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y.f f2833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f2834b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(y.f fVar, Executor executor) {
        this.f2833a = fVar;
        this.f2834b = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            return this.f2833a.equals(((t) obj).f2833a);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f2833a.hashCode();
    }
}
