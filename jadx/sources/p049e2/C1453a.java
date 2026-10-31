package p049e2;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1034g;
import p142n0.C2467b;

/* JADX INFO: renamed from: e2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1453a {

    /* JADX INFO: renamed from: a */
    public final int f3526a;

    /* JADX INFO: renamed from: b */
    public final long f3527b;

    public C1453a(int i10, long j10) {
        if (i10 == 0) {
            C2467b.m3828n("Null status");
            throw null;
        }
        this.f3526a = i10;
        this.f3527b = j10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1453a)) {
            return false;
        }
        C1453a c1453a = (C1453a) obj;
        return AbstractC1034g.m1294a(this.f3526a, c1453a.f3526a) && this.f3527b == c1453a.f3527b;
    }

    public final int hashCode() {
        int iM1296c = (AbstractC1034g.m1296c(this.f3526a) ^ 1000003) * 1000003;
        long j10 = this.f3527b;
        return iM1296c ^ ((int) ((j10 >>> 32) ^ j10));
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        int i10 = this.f3526a;
        if (i10 == 1) {
            str = "OK";
        } else if (i10 == 2) {
            str = "TRANSIENT_ERROR";
        } else if (i10 != 3) {
            str = i10 != 4 ? "null" : "INVALID_PAYLOAD";
        } else {
            str = "FATAL_ERROR";
        }
        sb.append(str);
        sb.append(", nextRequestWaitMillis=");
        return AbstractC0074a.m163n(sb, this.f3527b, "}");
    }
}
