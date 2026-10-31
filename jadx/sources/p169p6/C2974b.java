package p169p6;

import java.util.ArrayList;

/* JADX INFO: renamed from: p6.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2974b {

    /* JADX INFO: renamed from: a */
    public final ArrayList f8272a;

    /* JADX INFO: renamed from: b */
    public final int f8273b;

    public C2974b(ArrayList arrayList, int i10) {
        this.f8272a = new ArrayList(arrayList);
        this.f8273b = i10;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C2974b) && this.f8272a.equals(((C2974b) obj).f8272a);
    }

    public final int hashCode() {
        return this.f8272a.hashCode() ^ Boolean.FALSE.hashCode();
    }

    public final String toString() {
        return "{ " + this.f8272a + " }";
    }
}
