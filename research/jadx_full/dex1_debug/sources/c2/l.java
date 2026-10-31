package c2;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f460b;
    public final long c;
    public final byte[] d;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f461f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f462g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(long j9, Integer num, long j10, byte[] bArr, String str, long j11, w wVar) {
        this.f459a = j9;
        this.f460b = num;
        this.c = j10;
        this.d = bArr;
        this.e = str;
        this.f461f = j11;
        this.f462g = wVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s) {
            s sVar = (s) obj;
            l lVar = (l) sVar;
            if (this.f459a == lVar.f459a) {
                Integer num = lVar.f460b;
                Integer num2 = this.f460b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.c == lVar.c) {
                        if (Arrays.equals(this.d, sVar instanceof l ? ((l) sVar).d : lVar.d)) {
                            String str = lVar.e;
                            String str2 = this.e;
                            if (str2 != null ? str2.equals(str) : str == null) {
                                if (this.f461f == lVar.f461f) {
                                    w wVar = lVar.f462g;
                                    w wVar2 = this.f462g;
                                    if (wVar2 != null ? wVar2.equals(wVar) : wVar == null) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f459a;
        int i9 = (((int) (j9 ^ (j9 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f460b;
        int iHashCode = (i9 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j10 = this.c;
        int iHashCode2 = (((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j11 = this.f461f;
        int i10 = (iHashCode3 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        w wVar = this.f462g;
        return i10 ^ (wVar != null ? wVar.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f459a + ", eventCode=" + this.f460b + ", eventUptimeMs=" + this.c + ", sourceExtension=" + Arrays.toString(this.d) + ", sourceExtensionJsonProto3=" + this.e + ", timezoneOffsetSeconds=" + this.f461f + ", networkConnectionInfo=" + this.f462g + "}";
    }
}
