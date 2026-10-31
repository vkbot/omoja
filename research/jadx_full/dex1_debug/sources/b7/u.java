package b7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f389b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(int i9, int i10) {
        this.f389b = i9;
        this.c = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u a(u uVar) {
        int i9 = uVar.c;
        int i10 = this.f389b;
        int i11 = i10 * i9;
        int i12 = uVar.f389b;
        int i13 = this.c;
        return i11 <= i12 * i13 ? new u(i12, (i13 * i12) / i10) : new u((i10 * i9) / i13, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final u b(u uVar) {
        int i9 = uVar.c;
        int i10 = this.f389b;
        int i11 = i10 * i9;
        int i12 = uVar.f389b;
        int i13 = this.c;
        return i11 >= i12 * i13 ? new u(i12, (i13 * i12) / i10) : new u((i10 * i9) / i13, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        u uVar = (u) obj;
        int i9 = this.c * this.f389b;
        int i10 = uVar.c * uVar.f389b;
        if (i10 < i9) {
            return 1;
        }
        return i10 > i9 ? -1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && u.class == obj.getClass()) {
            u uVar = (u) obj;
            if (this.f389b == uVar.f389b && this.c == uVar.c) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return (this.f389b * 31) + this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f389b + "x" + this.c;
    }
}
