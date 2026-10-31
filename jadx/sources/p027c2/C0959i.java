package p027c2;

import java.util.ArrayList;

/* JADX INFO: renamed from: c2.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0959i extends AbstractC0966p {

    /* JADX INFO: renamed from: a */
    public final ArrayList f869a;

    public C0959i(ArrayList arrayList) {
        this.f869a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0966p)) {
            return false;
        }
        return this.f869a.equals(((C0959i) ((AbstractC0966p) obj)).f869a);
    }

    public final int hashCode() {
        return this.f869a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f869a + "}";
    }
}
