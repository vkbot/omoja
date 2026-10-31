package d2;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f1681b;
    public final l c;
    public final long d;
    public final long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f1682f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(String str, Integer num, l lVar, long j9, long j10, HashMap map) {
        this.f1680a = str;
        this.f1681b = num;
        this.c = lVar;
        this.d = j9;
        this.e = j10;
        this.f1682f = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String a(String str) {
        String str2 = (String) this.f1682f.get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(String str) {
        String str2 = (String) this.f1682f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h c() {
        h hVar = new h();
        String str = this.f1680a;
        if (str == null) {
            n0.b.n("Null transportName");
            return null;
        }
        hVar.f1677a = str;
        hVar.f1678b = this.f1681b;
        l lVar = this.c;
        if (lVar == null) {
            n0.b.n("Null encodedPayload");
            return null;
        }
        hVar.c = lVar;
        hVar.d = Long.valueOf(this.d);
        hVar.e = Long.valueOf(this.e);
        hVar.f1679f = new HashMap(this.f1682f);
        return hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f1680a.equals(iVar.f1680a)) {
                Integer num = iVar.f1681b;
                Integer num2 = this.f1681b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.c.equals(iVar.c) && this.d == iVar.d && this.e == iVar.e && this.f1682f.equals(iVar.f1682f)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int iHashCode = (this.f1680a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f1681b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j9 = this.d;
        int i9 = (iHashCode2 ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003;
        long j10 = this.e;
        return ((i9 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ this.f1682f.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "EventInternal{transportName=" + this.f1680a + ", code=" + this.f1681b + ", encodedPayload=" + this.c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f1682f + "}";
    }
}
