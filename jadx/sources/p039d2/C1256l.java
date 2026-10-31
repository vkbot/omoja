package p039d2;

import java.util.Arrays;
import p003a2.C0004a;
import p142n0.C2467b;

/* JADX INFO: renamed from: d2.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1256l {

    /* JADX INFO: renamed from: a */
    public final C0004a f2973a;

    /* JADX INFO: renamed from: b */
    public final byte[] f2974b;

    public C1256l(C0004a c0004a, byte[] bArr) {
        if (c0004a == null) {
            C2467b.m3828n("encoding is null");
            throw null;
        }
        if (bArr == null) {
            C2467b.m3828n("bytes is null");
            throw null;
        }
        this.f2973a = c0004a;
        this.f2974b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1256l)) {
            return false;
        }
        C1256l c1256l = (C1256l) obj;
        if (this.f2973a.equals(c1256l.f2973a)) {
            return Arrays.equals(this.f2974b, c1256l.f2974b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f2973a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2974b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f2973a + ", bytes=[...]}";
    }
}
