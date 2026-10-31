package p103j5;

/* JADX INFO: renamed from: j5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1984f {

    /* JADX INFO: renamed from: a */
    public final String f5407a;

    public C1984f(String str) {
        this.f5407a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1984f)) {
            return false;
        }
        String str = ((C1984f) obj).f5407a;
        String str2 = this.f5407a;
        return str2.hashCode() == str.hashCode() && str2.equals(str);
    }

    public final int hashCode() {
        return this.f5407a.hashCode();
    }
}
