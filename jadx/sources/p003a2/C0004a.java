package p003a2;

import ai.onnxruntime.AbstractC0074a;
import p142n0.C2467b;

/* JADX INFO: renamed from: a2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0004a {

    /* JADX INFO: renamed from: a */
    public final String f4a;

    public C0004a(String str) {
        if (str != null) {
            this.f4a = str;
        } else {
            C2467b.m3828n("name is null");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0004a)) {
            return false;
        }
        return this.f4a.equals(((C0004a) obj).f4a);
    }

    public final int hashCode() {
        return this.f4a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return AbstractC0074a.m165p(new StringBuilder("Encoding{name=\""), this.f4a, "\"}");
    }
}
