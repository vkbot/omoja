package k;

import android.graphics.Bitmap$Config;
import c0.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f3145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3146b;
    public Bitmap$Config c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(f fVar) {
        this.f3145a = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.i
    public final void a() {
        this.f3145a.c(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f3146b == kVar.f3146b && p.b(this.c, kVar.c)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int i9 = this.f3146b * 31;
        Bitmap$Config bitmap$Config = this.c;
        return i9 + (bitmap$Config != null ? bitmap$Config.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return l.c(this.f3146b, this.c);
    }
}
