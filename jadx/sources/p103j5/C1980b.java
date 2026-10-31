package p103j5;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: j5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1980b {

    /* JADX INFO: renamed from: a */
    public final long f5391a;

    /* JADX INFO: renamed from: b */
    public final long f5392b;

    public C1980b(long j10, long j11) {
        this.f5391a = j10;
        this.f5392b = j11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1980b)) {
            return false;
        }
        C1980b c1980b = (C1980b) obj;
        return this.f5391a == c1980b.f5391a && this.f5392b == c1980b.f5392b;
    }

    public final int hashCode() {
        long j10 = this.f5391a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 430065837) * 1000003;
        long j11 = this.f5392b;
        return i10 ^ ((int) ((j11 >>> 32) ^ j11));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RateLimit{limiterKey=APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY, limit=");
        sb.append(this.f5391a);
        sb.append(", timeToLiveMillis=");
        return AbstractC0074a.m163n(sb, this.f5392b, "}");
    }
}
