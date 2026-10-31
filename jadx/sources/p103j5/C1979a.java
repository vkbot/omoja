package p103j5;

/* JADX INFO: renamed from: j5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1979a {

    /* JADX INFO: renamed from: a */
    public final String f5389a;

    /* JADX INFO: renamed from: b */
    public final C1982d f5390b;

    public C1979a(String str, C1982d c1982d) {
        this.f5389a = str;
        this.f5390b = c1982d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1979a)) {
            return false;
        }
        C1979a c1979a = (C1979a) obj;
        C1982d c1982d = c1979a.f5390b;
        String str = c1979a.f5389a;
        if (hashCode() != c1979a.hashCode()) {
            return false;
        }
        String str2 = this.f5389a;
        if ((str2 == null && str != null) || (str2 != null && !str2.equals(str))) {
            return false;
        }
        C1982d c1982d2 = this.f5390b;
        return (c1982d2 == null && c1982d == null) || (c1982d2 != null && c1982d2.equals(c1982d));
    }

    public final int hashCode() {
        String str = this.f5389a;
        int iHashCode = str != null ? str.hashCode() : 0;
        C1982d c1982d = this.f5390b;
        return iHashCode + (c1982d != null ? c1982d.hashCode() : 0);
    }
}
