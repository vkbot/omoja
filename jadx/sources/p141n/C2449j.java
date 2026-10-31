package p141n;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: n.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2449j {

    /* JADX INFO: renamed from: a */
    public final String f6636a;

    public C2449j(String str) {
        this.f6636a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2449j) {
            return this.f6636a.equals(((C2449j) obj).f6636a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6636a.hashCode();
    }

    public final String toString() {
        return AbstractC0074a.m165p(new StringBuilder("StringHeaderFactory{value='"), this.f6636a, "'}");
    }
}
