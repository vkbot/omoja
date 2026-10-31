package p136m5;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1034g;

/* JADX INFO: renamed from: m5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2399b {

    /* JADX INFO: renamed from: a */
    public final String f6491a;

    /* JADX INFO: renamed from: b */
    public final int f6492b;

    /* JADX INFO: renamed from: c */
    public final String f6493c;

    /* JADX INFO: renamed from: d */
    public final String f6494d;

    /* JADX INFO: renamed from: e */
    public final long f6495e;

    /* JADX INFO: renamed from: f */
    public final long f6496f;

    /* JADX INFO: renamed from: g */
    public final String f6497g;

    public C2399b(String str, int i10, String str2, String str3, long j10, long j11, String str4) {
        this.f6491a = str;
        this.f6492b = i10;
        this.f6493c = str2;
        this.f6494d = str3;
        this.f6495e = j10;
        this.f6496f = j11;
        this.f6497g = str4;
    }

    /* JADX INFO: renamed from: a */
    public final C2398a m3763a() {
        C2398a c2398a = new C2398a();
        c2398a.f6485c = this.f6491a;
        c2398a.f6484b = this.f6492b;
        c2398a.f6486d = this.f6493c;
        c2398a.f6487e = this.f6494d;
        c2398a.f6489g = Long.valueOf(this.f6495e);
        c2398a.f6490h = Long.valueOf(this.f6496f);
        c2398a.f6488f = this.f6497g;
        return c2398a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2399b)) {
            return false;
        }
        C2399b c2399b = (C2399b) obj;
        String str = c2399b.f6491a;
        String str2 = this.f6491a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!AbstractC1034g.m1294a(this.f6492b, c2399b.f6492b)) {
            return false;
        }
        String str3 = c2399b.f6493c;
        String str4 = this.f6493c;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = c2399b.f6494d;
        String str6 = this.f6494d;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        if (this.f6495e != c2399b.f6495e || this.f6496f != c2399b.f6496f) {
            return false;
        }
        String str7 = c2399b.f6497g;
        String str8 = this.f6497g;
        if (str8 == null) {
            return str7 == null;
        }
        return str8.equals(str7);
    }

    public final int hashCode() {
        String str = this.f6491a;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ AbstractC1034g.m1296c(this.f6492b)) * 1000003;
        String str2 = this.f6493c;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f6494d;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j10 = this.f6495e;
        int i10 = (iHashCode3 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f6496f;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        String str4 = this.f6497g;
        return (str4 != null ? str4.hashCode() : 0) ^ i11;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f6491a);
        sb.append(", registrationStatus=");
        int i10 = this.f6492b;
        if (i10 == 1) {
            str = "ATTEMPT_MIGRATION";
        } else if (i10 == 2) {
            str = "NOT_GENERATED";
        } else if (i10 == 3) {
            str = "UNREGISTERED";
        } else if (i10 != 4) {
            str = i10 != 5 ? "null" : "REGISTER_ERROR";
        } else {
            str = "REGISTERED";
        }
        sb.append(str);
        sb.append(", authToken=");
        sb.append(this.f6493c);
        sb.append(", refreshToken=");
        sb.append(this.f6494d);
        sb.append(", expiresInSecs=");
        sb.append(this.f6495e);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f6496f);
        sb.append(", fisError=");
        return AbstractC0074a.m165p(sb, this.f6497g, "}");
    }
}
