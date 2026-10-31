package p100j2;

import java.util.HashMap;
import p003a2.EnumC0005b;
import p133m2.InterfaceC2380a;

/* JADX INFO: renamed from: j2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1945a {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2380a f5299a;

    /* JADX INFO: renamed from: b */
    public final HashMap f5300b;

    public C1945a(InterfaceC2380a interfaceC2380a, HashMap map) {
        this.f5299a = interfaceC2380a;
        this.f5300b = map;
    }

    /* JADX INFO: renamed from: a */
    public final long m3049a(EnumC0005b enumC0005b, long j10, int i10) {
        long jMo1142d = j10 - this.f5299a.mo1142d();
        C1946b c1946b = (C1946b) this.f5300b.get(enumC0005b);
        long j11 = c1946b.f5301a;
        int i11 = i10 - 1;
        return Math.min(Math.max((long) (Math.pow(3.0d, i11) * j11 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j11 > 1 ? j11 : 2L) * ((long) i11)))), jMo1142d), c1946b.f5302b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1945a)) {
            return false;
        }
        C1945a c1945a = (C1945a) obj;
        return this.f5299a.equals(c1945a.f5299a) && this.f5300b.equals(c1945a.f5300b);
    }

    public final int hashCode() {
        return ((this.f5299a.hashCode() ^ 1000003) * 1000003) ^ this.f5300b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f5299a + ", values=" + this.f5300b + "}";
    }
}
