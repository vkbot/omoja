package j5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3086b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(String str, String str2) {
        this.f3085a = str;
        this.f3086b = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        String str = lVar.f3085a;
        if (hashCode() != lVar.hashCode()) {
            return false;
        }
        String str2 = this.f3085a;
        return (str2 != null || str == null) && (str2 == null || str2.equals(str)) && this.f3086b.equals(lVar.f3086b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        String str = this.f3086b;
        String str2 = this.f3085a;
        if (str2 == null) {
            return str.hashCode();
        }
        return str.hashCode() + str2.hashCode();
    }
}
