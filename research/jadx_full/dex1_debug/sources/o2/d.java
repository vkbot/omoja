package o2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4052b;
    public int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        d dVar = (d) obj;
        int i9 = this.c;
        int i10 = dVar.c;
        return i9 != i10 ? i9 - i10 : this.f4052b - dVar.f4052b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "Order{order=" + this.c + ", index=" + this.f4052b + '}';
    }
}
