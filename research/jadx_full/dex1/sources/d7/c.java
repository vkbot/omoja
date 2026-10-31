package d7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1793b;
    public final long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(long j9, long j10, long j11) {
        this.f1792a = j9;
        this.f1793b = j10;
        this.c = j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f1792a == cVar.f1792a && this.f1793b == cVar.f1793b && this.c == cVar.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Long.hashCode(this.c) + ((Long.hashCode(this.f1793b) + (Long.hashCode(this.f1792a) * 31)) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        Object[] objArr = {Long.valueOf(this.f1792a), Long.valueOf(this.f1793b), Long.valueOf(this.c)};
        String[] strArrSplit = "a;b;c".length() == 0 ? new String[0] : "a;b;c".split(";");
        StringBuilder sb = new StringBuilder();
        sb.append(c.class.getSimpleName());
        sb.append("[");
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            sb.append(strArrSplit[i9]);
            sb.append("=");
            sb.append(objArr[i9]);
            if (i9 != strArrSplit.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
