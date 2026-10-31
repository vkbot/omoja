package p111k2;

import p039d2.C1253i;
import p039d2.C1254j;

/* JADX INFO: renamed from: k2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2030b {

    /* JADX INFO: renamed from: a */
    public final long f5546a;

    /* JADX INFO: renamed from: b */
    public final C1254j f5547b;

    /* JADX INFO: renamed from: c */
    public final C1253i f5548c;

    public C2030b(long j10, C1254j c1254j, C1253i c1253i) {
        this.f5546a = j10;
        this.f5547b = c1254j;
        this.f5548c = c1253i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2030b)) {
            return false;
        }
        C2030b c2030b = (C2030b) obj;
        return this.f5546a == c2030b.f5546a && this.f5547b.equals(c2030b.f5547b) && this.f5548c.equals(c2030b.f5548c);
    }

    public final int hashCode() {
        long j10 = this.f5546a;
        return ((((((int) ((j10 >>> 32) ^ j10)) ^ 1000003) * 1000003) ^ this.f5547b.hashCode()) * 1000003) ^ this.f5548c.hashCode();
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f5546a + ", transportContext=" + this.f5547b + ", event=" + this.f5548c + "}";
    }
}
