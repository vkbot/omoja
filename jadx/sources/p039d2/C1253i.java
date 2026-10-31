package p039d2;

import java.util.HashMap;
import java.util.Map;
import p142n0.C2467b;

/* JADX INFO: renamed from: d2.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1253i {

    /* JADX INFO: renamed from: a */
    public final String f2958a;

    /* JADX INFO: renamed from: b */
    public final Integer f2959b;

    /* JADX INFO: renamed from: c */
    public final C1256l f2960c;

    /* JADX INFO: renamed from: d */
    public final long f2961d;

    /* JADX INFO: renamed from: e */
    public final long f2962e;

    /* JADX INFO: renamed from: f */
    public final Map f2963f;

    public C1253i(String str, Integer num, C1256l c1256l, long j10, long j11, HashMap map) {
        this.f2958a = str;
        this.f2959b = num;
        this.f2960c = c1256l;
        this.f2961d = j10;
        this.f2962e = j11;
        this.f2963f = map;
    }

    /* JADX INFO: renamed from: a */
    public final String m2256a(String str) {
        String str2 = (String) this.f2963f.get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX INFO: renamed from: b */
    public final int m2257b(String str) {
        String str2 = (String) this.f2963f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* JADX INFO: renamed from: c */
    public final C1252h m2258c() {
        C1252h c1252h = new C1252h();
        String str = this.f2958a;
        if (str == null) {
            C2467b.m3828n("Null transportName");
            return null;
        }
        c1252h.f2952a = str;
        c1252h.f2953b = this.f2959b;
        C1256l c1256l = this.f2960c;
        if (c1256l == null) {
            C2467b.m3828n("Null encodedPayload");
            return null;
        }
        c1252h.f2954c = c1256l;
        c1252h.f2955d = Long.valueOf(this.f2961d);
        c1252h.f2956e = Long.valueOf(this.f2962e);
        c1252h.f2957f = new HashMap(this.f2963f);
        return c1252h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1253i) {
            C1253i c1253i = (C1253i) obj;
            if (this.f2958a.equals(c1253i.f2958a)) {
                Integer num = c1253i.f2959b;
                Integer num2 = this.f2959b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.f2960c.equals(c1253i.f2960c) && this.f2961d == c1253i.f2961d && this.f2962e == c1253i.f2962e && this.f2963f.equals(c1253i.f2963f)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f2958a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f2959b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f2960c.hashCode()) * 1000003;
        long j10 = this.f2961d;
        int i10 = (iHashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f2962e;
        return ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f2963f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f2958a + ", code=" + this.f2959b + ", encodedPayload=" + this.f2960c + ", eventMillis=" + this.f2961d + ", uptimeMillis=" + this.f2962e + ", autoMetadata=" + this.f2963f + "}";
    }
}
