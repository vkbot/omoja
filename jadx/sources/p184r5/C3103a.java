package p184r5;

import ai.onnxruntime.AbstractC0074a;
import p142n0.C2467b;

/* JADX INFO: renamed from: r5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3103a {

    /* JADX INFO: renamed from: a */
    public final String f8861a;

    /* JADX INFO: renamed from: b */
    public final String f8862b;

    public C3103a(String str, String str2) {
        this.f8861a = str;
        if (str2 != null) {
            this.f8862b = str2;
        } else {
            C2467b.m3828n("Null version");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3103a)) {
            return false;
        }
        C3103a c3103a = (C3103a) obj;
        return this.f8861a.equals(c3103a.f8861a) && this.f8862b.equals(c3103a.f8862b);
    }

    public final int hashCode() {
        return ((this.f8861a.hashCode() ^ 1000003) * 1000003) ^ this.f8862b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f8861a);
        sb.append(", version=");
        return AbstractC0074a.m165p(sb, this.f8862b, "}");
    }
}
