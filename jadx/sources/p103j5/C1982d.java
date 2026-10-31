package p103j5;

/* JADX INFO: renamed from: j5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1982d {

    /* JADX INFO: renamed from: a */
    public final C1990l f5398a;

    /* JADX INFO: renamed from: b */
    public final String f5399b;

    public C1982d(C1990l c1990l, String str) {
        this.f5398a = c1990l;
        this.f5399b = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1982d)) {
            return false;
        }
        C1982d c1982d = (C1982d) obj;
        return hashCode() == c1982d.hashCode() && this.f5398a.equals(c1982d.f5398a) && this.f5399b.equals(c1982d.f5399b);
    }

    public final int hashCode() {
        return this.f5399b.hashCode() + this.f5398a.hashCode();
    }
}
