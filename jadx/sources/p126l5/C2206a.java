package p126l5;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: renamed from: l5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2206a {

    /* JADX INFO: renamed from: a */
    public final String f5796a;

    /* JADX INFO: renamed from: b */
    public final long f5797b;

    /* JADX INFO: renamed from: c */
    public final long f5798c;

    public C2206a(String str, long j10, long j11) {
        this.f5796a = str;
        this.f5797b = j10;
        this.f5798c = j11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2206a) {
            C2206a c2206a = (C2206a) obj;
            if (this.f5796a.equals(c2206a.f5796a) && this.f5797b == c2206a.f5797b && this.f5798c == c2206a.f5798c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f5796a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f5797b;
        long j11 = this.f5798c;
        return ((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.f5796a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f5797b);
        sb.append(", tokenCreationTimestamp=");
        return AbstractC0074a.m163n(sb, this.f5798c, "}");
    }
}
