package p169p6;

import java.util.Objects;
import p156o6.C2595b;
import p156o6.C2596c;

/* JADX INFO: renamed from: p6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2973a {

    /* JADX INFO: renamed from: a */
    public final C2595b f8269a;

    /* JADX INFO: renamed from: b */
    public final C2595b f8270b;

    /* JADX INFO: renamed from: c */
    public final C2596c f8271c;

    public C2973a(C2595b c2595b, C2595b c2595b2, C2596c c2596c) {
        this.f8269a = c2595b;
        this.f8270b = c2595b2;
        this.f8271c = c2596c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2973a)) {
            return false;
        }
        C2973a c2973a = (C2973a) obj;
        return this.f8269a.equals(c2973a.f8269a) && Objects.equals(this.f8270b, c2973a.f8270b) && this.f8271c.equals(c2973a.f8271c);
    }

    public final int hashCode() {
        return (this.f8269a.hashCode() ^ Objects.hashCode(this.f8270b)) ^ this.f8271c.hashCode();
    }

    public final String toString() {
        return "[ " + this.f8269a + " , " + this.f8270b + " : " + Integer.valueOf(this.f8271c.f7237a) + " ]";
    }
}
