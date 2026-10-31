package p103j5;

/* JADX INFO: renamed from: j5.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1990l {

    /* JADX INFO: renamed from: a */
    public final String f5418a;

    /* JADX INFO: renamed from: b */
    public final String f5419b;

    public C1990l(String str, String str2) {
        this.f5418a = str;
        this.f5419b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1990l)) {
            return false;
        }
        C1990l c1990l = (C1990l) obj;
        String str = c1990l.f5418a;
        if (hashCode() != c1990l.hashCode()) {
            return false;
        }
        String str2 = this.f5418a;
        return (str2 != null || str == null) && (str2 == null || str2.equals(str)) && this.f5419b.equals(c1990l.f5419b);
    }

    public final int hashCode() {
        String str = this.f5419b;
        String str2 = this.f5418a;
        if (str2 == null) {
            return str.hashCode();
        }
        return str.hashCode() + str2.hashCode();
    }
}
