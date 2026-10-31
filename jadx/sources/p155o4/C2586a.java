package p155o4;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: o4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2586a {

    /* JADX INFO: renamed from: a */
    public final long f7199a;

    /* JADX INFO: renamed from: b */
    public final long f7200b;

    /* JADX INFO: renamed from: c */
    public final long f7201c;

    public C2586a(long j10, long j11, long j12) {
        this.f7199a = j10;
        this.f7200b = j11;
        this.f7201c = j12;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2586a) {
            C2586a c2586a = (C2586a) obj;
            if (this.f7199a == c2586a.f7199a && this.f7200b == c2586a.f7200b && this.f7201c == c2586a.f7201c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f7199a;
        long j11 = this.f7200b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f7201c;
        return i10 ^ ((int) ((j12 >>> 32) ^ j12));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StartupTime{epochMillis=");
        sb.append(this.f7199a);
        sb.append(", elapsedRealtime=");
        sb.append(this.f7200b);
        sb.append(", uptimeMillis=");
        return AbstractC0074a.m163n(sb, this.f7201c, "}");
    }
}
