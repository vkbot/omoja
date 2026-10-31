package p100j2;

import java.util.Set;

/* JADX INFO: renamed from: j2.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1946b {

    /* JADX INFO: renamed from: a */
    public final long f5301a;

    /* JADX INFO: renamed from: b */
    public final long f5302b;

    /* JADX INFO: renamed from: c */
    public final Set f5303c;

    public C1946b(long j10, long j11, Set set) {
        this.f5301a = j10;
        this.f5302b = j11;
        this.f5303c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1946b) {
            C1946b c1946b = (C1946b) obj;
            if (this.f5301a == c1946b.f5301a && this.f5302b == c1946b.f5302b && this.f5303c.equals(c1946b.f5303c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f5301a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f5302b;
        return ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f5303c.hashCode();
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f5301a + ", maxAllowedDelay=" + this.f5302b + ", flags=" + this.f5303c + "}";
    }
}
