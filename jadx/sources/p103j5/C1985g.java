package p103j5;

/* JADX INFO: renamed from: j5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1985g extends AbstractC1986h {

    /* JADX INFO: renamed from: c */
    public C1984f f5408c;

    /* JADX INFO: renamed from: d */
    public C1979a f5409d;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1985g)) {
            return false;
        }
        C1985g c1985g = (C1985g) obj;
        C1979a c1979a = c1985g.f5409d;
        if (hashCode() != c1985g.hashCode()) {
            return false;
        }
        C1979a c1979a2 = this.f5409d;
        return (c1979a2 != null || c1979a == null) && (c1979a2 == null || c1979a2.equals(c1979a)) && this.f5408c.equals(c1985g.f5408c);
    }

    public final int hashCode() {
        C1979a c1979a = this.f5409d;
        return this.f5408c.f5407a.hashCode() + (c1979a != null ? c1979a.hashCode() : 0);
    }
}
