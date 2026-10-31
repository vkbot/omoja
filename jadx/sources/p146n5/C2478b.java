package p146n5;

import com.bumptech.glide.AbstractC1034g;
import p032c7.C1008l;

/* JADX INFO: renamed from: n5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2478b {

    /* JADX INFO: renamed from: a */
    public final String f6825a;

    /* JADX INFO: renamed from: b */
    public final long f6826b;

    /* JADX INFO: renamed from: c */
    public final int f6827c;

    public C2478b(int i10, String str, long j10) {
        this.f6825a = str;
        this.f6826b = j10;
        this.f6827c = i10;
    }

    /* JADX INFO: renamed from: a */
    public static C1008l m3846a() {
        C1008l c1008l = new C1008l(1);
        c1008l.f1010d = 0L;
        return c1008l;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2478b)) {
            return false;
        }
        C2478b c2478b = (C2478b) obj;
        String str = c2478b.f6825a;
        String str2 = this.f6825a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (this.f6826b != c2478b.f6826b) {
            return false;
        }
        int i10 = c2478b.f6827c;
        int i11 = this.f6827c;
        if (i11 == 0) {
            return i10 == 0;
        }
        return AbstractC1034g.m1294a(i11, i10);
    }

    public final int hashCode() {
        String str = this.f6825a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f6826b;
        int i10 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003;
        int i11 = this.f6827c;
        return (i11 != 0 ? AbstractC1034g.m1296c(i11) : 0) ^ i10;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("TokenResult{token=");
        sb.append(this.f6825a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f6826b);
        sb.append(", responseCode=");
        int i10 = this.f6827c;
        if (i10 == 1) {
            str = "OK";
        } else if (i10 != 2) {
            str = i10 != 3 ? "null" : "AUTH_ERROR";
        } else {
            str = "BAD_CONFIG";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
