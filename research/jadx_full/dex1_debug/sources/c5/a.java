package c5;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f492b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, ArrayList arrayList) {
        if (str == null) {
            n0.b.n("Null userAgent");
            throw null;
        }
        this.f491a = str;
        this.f492b = arrayList;
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
        return this.f491a.equals(aVar.f491a) && this.f492b.equals(aVar.f492b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f491a.hashCode() ^ 1000003) * 1000003) ^ this.f492b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f491a + ", usedDates=" + this.f492b + "}";
    }
}
