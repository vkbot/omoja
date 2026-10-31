package p6;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o6.b f4593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o6.b f4594b;
    public final o6.c c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(o6.b bVar, o6.b bVar2, o6.c cVar) {
        this.f4593a = bVar;
        this.f4594b = bVar2;
        this.c = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f4593a.equals(aVar.f4593a) && Objects.equals(this.f4594b, aVar.f4594b) && this.c.equals(aVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return (this.f4593a.hashCode() ^ Objects.hashCode(this.f4594b)) ^ this.c.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "[ " + this.f4593a + " , " + this.f4594b + " : " + Integer.valueOf(this.c.f4105a) + " ]";
    }
}
