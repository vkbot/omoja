package j5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends h {
    public f c;
    public a d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        a aVar = gVar.d;
        if (hashCode() != gVar.hashCode()) {
            return false;
        }
        a aVar2 = this.d;
        return (aVar2 != null || aVar == null) && (aVar2 == null || aVar2.equals(aVar)) && this.c.equals(gVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        a aVar = this.d;
        return this.c.f3079a.hashCode() + (aVar != null ? aVar.hashCode() : 0);
    }
}
