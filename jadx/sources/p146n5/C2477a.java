package p146n5;

import com.bumptech.glide.AbstractC1034g;

/* JADX INFO: renamed from: n5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2477a {

    /* JADX INFO: renamed from: a */
    public final String f6820a;

    /* JADX INFO: renamed from: b */
    public final String f6821b;

    /* JADX INFO: renamed from: c */
    public final String f6822c;

    /* JADX INFO: renamed from: d */
    public final C2478b f6823d;

    /* JADX INFO: renamed from: e */
    public final int f6824e;

    public C2477a(String str, String str2, String str3, C2478b c2478b, int i10) {
        this.f6820a = str;
        this.f6821b = str2;
        this.f6822c = str3;
        this.f6823d = c2478b;
        this.f6824e = i10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2477a)) {
            return false;
        }
        C2477a c2477a = (C2477a) obj;
        String str = c2477a.f6820a;
        String str2 = this.f6820a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        String str3 = c2477a.f6821b;
        String str4 = this.f6821b;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = c2477a.f6822c;
        String str6 = this.f6822c;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        C2478b c2478b = c2477a.f6823d;
        C2478b c2478b2 = this.f6823d;
        if (c2478b2 == null) {
            if (c2478b != null) {
                return false;
            }
        } else if (!c2478b2.equals(c2478b)) {
            return false;
        }
        int i10 = c2477a.f6824e;
        int i11 = this.f6824e;
        if (i11 == 0) {
            return i10 == 0;
        }
        return AbstractC1034g.m1294a(i11, i10);
    }

    public final int hashCode() {
        String str = this.f6820a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f6821b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f6822c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        C2478b c2478b = this.f6823d;
        int iHashCode4 = (iHashCode3 ^ (c2478b == null ? 0 : c2478b.hashCode())) * 1000003;
        int i10 = this.f6824e;
        return (i10 != 0 ? AbstractC1034g.m1296c(i10) : 0) ^ iHashCode4;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("InstallationResponse{uri=");
        sb.append(this.f6820a);
        sb.append(", fid=");
        sb.append(this.f6821b);
        sb.append(", refreshToken=");
        sb.append(this.f6822c);
        sb.append(", authToken=");
        sb.append(this.f6823d);
        sb.append(", responseCode=");
        int i10 = this.f6824e;
        if (i10 != 1) {
            str = i10 != 2 ? "null" : "BAD_CONFIG";
        } else {
            str = "OK";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
