package d2;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a2.a f1688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f1689b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(a2.a aVar, byte[] bArr) {
        if (aVar == null) {
            n0.b.n("encoding is null");
            throw null;
        }
        if (bArr == null) {
            n0.b.n("bytes is null");
            throw null;
        }
        this.f1688a = aVar;
        this.f1689b = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f1688a.equals(lVar.f1688a)) {
            return Arrays.equals(this.f1689b, lVar.f1689b);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f1688a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f1689b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "EncodedPayload{encoding=" + this.f1688a + ", bytes=[...]}";
    }
}
