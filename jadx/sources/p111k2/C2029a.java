package p111k2;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: k2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2029a {

    /* JADX INFO: renamed from: f */
    public static final C2029a f5540f = new C2029a(10485760, 200, 10000, 604800000, 81920);

    /* JADX INFO: renamed from: a */
    public final long f5541a;

    /* JADX INFO: renamed from: b */
    public final int f5542b;

    /* JADX INFO: renamed from: c */
    public final int f5543c;

    /* JADX INFO: renamed from: d */
    public final long f5544d;

    /* JADX INFO: renamed from: e */
    public final int f5545e;

    public C2029a(long j10, int i10, int i11, long j11, int i12) {
        this.f5541a = j10;
        this.f5542b = i10;
        this.f5543c = i11;
        this.f5544d = j11;
        this.f5545e = i12;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2029a) {
            C2029a c2029a = (C2029a) obj;
            if (this.f5541a == c2029a.f5541a && this.f5542b == c2029a.f5542b && this.f5543c == c2029a.f5543c && this.f5544d == c2029a.f5544d && this.f5545e == c2029a.f5545e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f5541a;
        int i10 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f5542b) * 1000003) ^ this.f5543c) * 1000003;
        long j11 = this.f5544d;
        return ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f5545e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f5541a);
        sb.append(", loadBatchSize=");
        sb.append(this.f5542b);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f5543c);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f5544d);
        sb.append(", maxBlobByteSizePerRow=");
        return AbstractC0074a.m164o(sb, "}", this.f5545e);
    }
}
