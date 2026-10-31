package r7;

import l9.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {
    public static final o d;
    public static final o e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final o f5003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final o f5004g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final o f5005h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f5006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f5007b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        o oVar = o.e;
        d = w7.c.k(":status");
        e = w7.c.k(":method");
        f5003f = w7.c.k(":path");
        f5004g = w7.c.k(":scheme");
        f5005h = w7.c.k(":authority");
        w7.c.k(":host");
        w7.c.k(":version");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(o oVar, o oVar2) {
        this.f5006a = oVar;
        this.f5007b = oVar2;
        this.c = oVar2.c() + oVar.c() + 32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f5006a.equals(bVar.f5006a) && this.f5007b.equals(bVar.f5007b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f5007b.hashCode() + ((this.f5006a.hashCode() + 527) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return ai.onnxruntime.a.D(this.f5006a.l(), ": ", this.f5007b.l());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(o oVar, String str) {
        this(oVar, w7.c.k(str));
        o oVar2 = o.e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(String str, String str2) {
        this(w7.c.k(str), w7.c.k(str2));
        o oVar = o.e;
    }
}
