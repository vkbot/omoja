package p027c2;

/* JADX INFO: renamed from: c2.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0960j extends AbstractC0968r {

    /* JADX INFO: renamed from: a */
    public final C0958h f870a;

    public C0960j(C0958h c0958h) {
        this.f870a = c0958h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0968r)) {
            return false;
        }
        AbstractC0968r abstractC0968r = (AbstractC0968r) obj;
        Object obj2 = EnumC0967q.f895b;
        if (obj2.equals(obj2)) {
            return this.f870a.equals(((C0960j) abstractC0968r).f870a);
        }
        return false;
    }

    public final int hashCode() {
        return ((EnumC0967q.f895b.hashCode() ^ 1000003) * 1000003) ^ this.f870a.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + EnumC0967q.f895b + ", androidClientInfo=" + this.f870a + "}";
    }
}
