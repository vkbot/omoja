package h;

import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c0.c f2412b = new c0.c();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v3, resolved type: K */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        for (int i9 = 0; i9 < this.f2412b.getSize(); i9++) {
            g gVar = (g) this.f2412b.keyAt(i9);
            Object objValueAt = this.f2412b.valueAt(i9);
            f fVar = gVar.f2411b;
            if (gVar.d == null) {
                gVar.d = gVar.c.getBytes(e.f2409a);
            }
            fVar.a(gVar.d, objValueAt, messageDigest);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object c(g gVar) {
        c0.c cVar = this.f2412b;
        return cVar.containsKey(gVar) ? cVar.get(gVar) : gVar.f2410a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f2412b.equals(((h) obj).f2412b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        return this.f2412b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "Options{values=" + this.f2412b + '}';
    }
}
