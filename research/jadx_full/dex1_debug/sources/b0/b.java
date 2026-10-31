package b0;

import c0.g;
import h.e;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f228b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Object obj) {
        g.c(obj, "Argument must not be null");
        this.f228b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.f228b.toString().getBytes(e.f2409a));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f228b.equals(((b) obj).f228b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return this.f228b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "ObjectKey{object=" + this.f228b + '}';
    }
}
