package p027c2;

/* JADX INFO: renamed from: c2.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0965o extends AbstractC0973w {

    /* JADX INFO: renamed from: a */
    public final EnumC0972v f893a;

    /* JADX INFO: renamed from: b */
    public final EnumC0971u f894b;

    public C0965o(EnumC0972v enumC0972v, EnumC0971u enumC0971u) {
        this.f893a = enumC0972v;
        this.f894b = enumC0971u;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0973w) {
            AbstractC0973w abstractC0973w = (AbstractC0973w) obj;
            EnumC0972v enumC0972v = this.f893a;
            if (enumC0972v != null ? enumC0972v.equals(((C0965o) abstractC0973w).f893a) : ((C0965o) abstractC0973w).f893a == null) {
                EnumC0971u enumC0971u = this.f894b;
                if (enumC0971u != null ? enumC0971u.equals(((C0965o) abstractC0973w).f894b) : ((C0965o) abstractC0973w).f894b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        EnumC0972v enumC0972v = this.f893a;
        int iHashCode = ((enumC0972v == null ? 0 : enumC0972v.hashCode()) ^ 1000003) * 1000003;
        EnumC0971u enumC0971u = this.f894b;
        return (enumC0971u != null ? enumC0971u.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f893a + ", mobileSubtype=" + this.f894b + "}";
    }
}
