package h;

import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {
    public static final c5.e e = new c5.e(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f2411b;
    public final String c;
    public volatile byte[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(String str, Object obj, f fVar) {
        if (TextUtils.isEmpty(str)) {
            j1.i.k("Must not be null or empty");
            throw null;
        }
        this.c = str;
        this.f2410a = obj;
        this.f2411b = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g a(Object obj, String str) {
        return new g(str, obj, e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.c.equals(((g) obj).c);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.c.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return ai.onnxruntime.a.p(new StringBuilder("Option{key='"), this.c, "'}");
    }
}
