package r5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4984b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, String str2) {
        this.f4983a = str;
        if (str2 != null) {
            this.f4984b = str2;
        } else {
            n0.b.n("Null version");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f4983a.equals(aVar.f4983a) && this.f4984b.equals(aVar.f4984b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f4983a.hashCode() ^ 1000003) * 1000003) ^ this.f4984b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f4983a);
        sb.append(", version=");
        return ai.onnxruntime.a.p(sb, this.f4984b, "}");
    }
}
