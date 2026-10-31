package e2;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m2.a f2024b;
    public final m2.a c;
    public final String d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, m2.a aVar, m2.a aVar2, String str) {
        if (context == null) {
            n0.b.n("Null applicationContext");
            throw null;
        }
        this.f2023a = context;
        if (aVar == null) {
            n0.b.n("Null wallClock");
            throw null;
        }
        this.f2024b = aVar;
        if (aVar2 == null) {
            n0.b.n("Null monotonicClock");
            throw null;
        }
        this.c = aVar2;
        if (str != null) {
            this.d = str;
        } else {
            n0.b.n("Null backendName");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            b bVar = (b) ((c) obj);
            if (this.f2023a.equals(bVar.f2023a) && this.f2024b.equals(bVar.f2024b) && this.c.equals(bVar.c) && this.d.equals(bVar.d)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((((((this.f2023a.hashCode() ^ 1000003) * 1000003) ^ this.f2024b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f2023a);
        sb.append(", wallClock=");
        sb.append(this.f2024b);
        sb.append(", monotonicClock=");
        sb.append(this.c);
        sb.append(", backendName=");
        return ai.onnxruntime.a.p(sb, this.d, "}");
    }
}
