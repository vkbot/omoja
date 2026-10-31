package p153o2;

/* JADX INFO: renamed from: o2.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2576d implements Comparable {

    /* JADX INFO: renamed from: b */
    public int f7157b;

    /* JADX INFO: renamed from: c */
    public int f7158c;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C2576d c2576d = (C2576d) obj;
        int i10 = this.f7158c;
        int i11 = c2576d.f7158c;
        return i10 != i11 ? i10 - i11 : this.f7157b - c2576d.f7157b;
    }

    public final String toString() {
        return "Order{order=" + this.f7158c + ", index=" + this.f7157b + '}';
    }
}
