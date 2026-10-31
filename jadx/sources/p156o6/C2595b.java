package p156o6;

/* JADX INFO: renamed from: o6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2595b {

    /* JADX INFO: renamed from: a */
    public final int f7235a;

    /* JADX INFO: renamed from: b */
    public final int f7236b;

    public C2595b(int i10, int i11) {
        this.f7235a = i10;
        this.f7236b = i11;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2595b)) {
            return false;
        }
        C2595b c2595b = (C2595b) obj;
        return this.f7235a == c2595b.f7235a && this.f7236b == c2595b.f7236b;
    }

    public final int hashCode() {
        return this.f7235a ^ this.f7236b;
    }

    public final String toString() {
        return this.f7235a + "(" + this.f7236b + ')';
    }
}
