package d2;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f1684b;
    public final a2.b c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(String str, byte[] bArr, a2.b bVar) {
        this.f1683a = str;
        this.f1684b = bArr;
        this.c = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            j jVar = (j) qVar;
            if (this.f1683a.equals(jVar.f1683a)) {
                if (Arrays.equals(this.f1684b, qVar instanceof j ? ((j) qVar).f1684b : jVar.f1684b) && this.c.equals(jVar.c)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((((this.f1683a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f1684b)) * 1000003) ^ this.c.hashCode();
    }
}
