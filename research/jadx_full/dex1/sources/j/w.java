package j;

import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w implements h.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2852b;
    public final int c;
    public final int d;
    public final Class e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f2853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h.e f2854g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f2855h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h.h f2856i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2857j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(Object obj, h.e eVar, int i9, int i10, Map map, Class cls, Class cls2, h.h hVar) {
        c0.g.c(obj, "Argument must not be null");
        this.f2852b = obj;
        this.f2854g = eVar;
        this.c = i9;
        this.d = i10;
        c0.g.c(map, "Argument must not be null");
        this.f2855h = map;
        c0.g.c(cls, "Resource class must not be null");
        this.e = cls;
        c0.g.c(cls2, "Transcode class must not be null");
        this.f2853f = cls2;
        c0.g.c(hVar, "Argument must not be null");
        this.f2856i = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final boolean equals(Object obj) {
        if (obj instanceof w) {
            w wVar = (w) obj;
            if (this.f2852b.equals(wVar.f2852b) && this.f2854g.equals(wVar.f2854g) && this.d == wVar.d && this.c == wVar.c && this.f2855h.equals(wVar.f2855h) && this.e.equals(wVar.e) && this.f2853f.equals(wVar.f2853f) && this.f2856i.equals(wVar.f2856i)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h.e
    public final int hashCode() {
        if (this.f2857j == 0) {
            int iHashCode = this.f2852b.hashCode();
            this.f2857j = iHashCode;
            int iHashCode2 = ((((this.f2854g.hashCode() + (iHashCode * 31)) * 31) + this.c) * 31) + this.d;
            this.f2857j = iHashCode2;
            int iHashCode3 = this.f2855h.hashCode() + (iHashCode2 * 31);
            this.f2857j = iHashCode3;
            int iHashCode4 = this.e.hashCode() + (iHashCode3 * 31);
            this.f2857j = iHashCode4;
            int iHashCode5 = this.f2853f.hashCode() + (iHashCode4 * 31);
            this.f2857j = iHashCode5;
            this.f2857j = this.f2856i.f2412b.hashCode() + (iHashCode5 * 31);
        }
        return this.f2857j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "EngineKey{model=" + this.f2852b + ", width=" + this.c + ", height=" + this.d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f2853f + ", signature=" + this.f2854g + ", hashCode=" + this.f2857j + ", transformations=" + this.f2855h + ", options=" + this.f2856i + '}';
    }
}
