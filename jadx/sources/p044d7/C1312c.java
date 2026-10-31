package p044d7;

/* JADX INFO: renamed from: d7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1312c {

    /* JADX INFO: renamed from: a */
    public final long f3128a;

    /* JADX INFO: renamed from: b */
    public final long f3129b;

    /* JADX INFO: renamed from: c */
    public final long f3130c;

    public C1312c(long j10, long j11, long j12) {
        this.f3128a = j10;
        this.f3129b = j11;
        this.f3130c = j12;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1312c)) {
            return false;
        }
        C1312c c1312c = (C1312c) obj;
        return this.f3128a == c1312c.f3128a && this.f3129b == c1312c.f3129b && this.f3130c == c1312c.f3130c;
    }

    public final int hashCode() {
        return Long.hashCode(this.f3130c) + ((Long.hashCode(this.f3129b) + (Long.hashCode(this.f3128a) * 31)) * 31);
    }

    public final String toString() {
        Object[] objArr = {Long.valueOf(this.f3128a), Long.valueOf(this.f3129b), Long.valueOf(this.f3130c)};
        String[] strArrSplit = "a;b;c".length() == 0 ? new String[0] : "a;b;c".split(";");
        StringBuilder sb = new StringBuilder();
        sb.append(C1312c.class.getSimpleName());
        sb.append("[");
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            sb.append(strArrSplit[i10]);
            sb.append("=");
            sb.append(objArr[i10]);
            if (i10 != strArrSplit.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
