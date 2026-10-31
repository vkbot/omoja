package m5;

import com.bumptech.glide.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3671b;
    public final String c;
    public final String d;
    public final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f3672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f3673g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(String str, int i9, String str2, String str3, long j9, long j10, String str4) {
        this.f3670a = str;
        this.f3671b = i9;
        this.c = str2;
        this.d = str3;
        this.e = j9;
        this.f3672f = j10;
        this.f3673g = str4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a a() {
        a aVar = new a();
        aVar.c = this.f3670a;
        aVar.f3666b = this.f3671b;
        aVar.d = this.c;
        aVar.e = this.d;
        aVar.f3668g = Long.valueOf(this.e);
        aVar.f3669h = Long.valueOf(this.f3672f);
        aVar.f3667f = this.f3673g;
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        String str = bVar.f3670a;
        String str2 = this.f3670a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (!g.a(this.f3671b, bVar.f3671b)) {
            return false;
        }
        String str3 = bVar.c;
        String str4 = this.c;
        if (str4 == null) {
            if (str3 != null) {
                return false;
            }
        } else if (!str4.equals(str3)) {
            return false;
        }
        String str5 = bVar.d;
        String str6 = this.d;
        if (str6 == null) {
            if (str5 != null) {
                return false;
            }
        } else if (!str6.equals(str5)) {
            return false;
        }
        if (this.e != bVar.e || this.f3672f != bVar.f3672f) {
            return false;
        }
        String str7 = bVar.f3673g;
        String str8 = this.f3673g;
        if (str8 == null) {
            return str7 == null;
        }
        return str8.equals(str7);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        String str = this.f3670a;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ g.c(this.f3671b)) * 1000003;
        String str2 = this.c;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.d;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j9 = this.e;
        int i9 = (iHashCode3 ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003;
        long j10 = this.f3672f;
        int i10 = (i9 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        String str4 = this.f3673g;
        return (str4 != null ? str4.hashCode() : 0) ^ i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f3670a);
        sb.append(", registrationStatus=");
        int i9 = this.f3671b;
        if (i9 == 1) {
            str = "ATTEMPT_MIGRATION";
        } else if (i9 == 2) {
            str = "NOT_GENERATED";
        } else if (i9 == 3) {
            str = "UNREGISTERED";
        } else if (i9 != 4) {
            str = i9 != 5 ? "null" : "REGISTER_ERROR";
        } else {
            str = "REGISTERED";
        }
        sb.append(str);
        sb.append(", authToken=");
        sb.append(this.c);
        sb.append(", refreshToken=");
        sb.append(this.d);
        sb.append(", expiresInSecs=");
        sb.append(this.e);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f3672f);
        sb.append(", fisError=");
        return ai.onnxruntime.a.p(sb, this.f3673g, "}");
    }
}
