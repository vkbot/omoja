package e2;

import com.bumptech.glide.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2022b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9, long j9) {
        if (i9 == 0) {
            n0.b.n("Null status");
            throw null;
        }
        this.f2021a = i9;
        this.f2022b = j9;
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
        return g.a(this.f2021a, aVar.f2021a) && this.f2022b == aVar.f2022b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int iC = (g.c(this.f2021a) ^ 1000003) * 1000003;
        long j9 = this.f2022b;
        return iC ^ ((int) ((j9 >>> 32) ^ j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        int i9 = this.f2021a;
        if (i9 == 1) {
            str = "OK";
        } else if (i9 == 2) {
            str = "TRANSIENT_ERROR";
        } else if (i9 != 3) {
            str = i9 != 4 ? "null" : "INVALID_PAYLOAD";
        } else {
            str = "FATAL_ERROR";
        }
        sb.append(str);
        sb.append(", nextRequestWaitMillis=");
        return ai.onnxruntime.a.n(sb, this.f2022b, "}");
    }
}
