package p148n7;

import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2521k {

    /* JADX INFO: renamed from: a */
    public final EnumC2518j f6982a;

    /* JADX INFO: renamed from: b */
    public final C2508f1 f6983b;

    public C2521k(EnumC2518j enumC2518j, C2508f1 c2508f1) {
        this.f6982a = enumC2518j;
        AbstractC2587b.m4042i(c2508f1, "status is null");
        this.f6983b = c2508f1;
    }

    /* JADX INFO: renamed from: a */
    public static C2521k m3950a(EnumC2518j enumC2518j) {
        AbstractC2587b.m4037d("state is TRANSIENT_ERROR. Use forError() instead", enumC2518j != EnumC2518j.f6970d);
        return new C2521k(enumC2518j, C2508f1.f6937e);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2521k)) {
            return false;
        }
        C2521k c2521k = (C2521k) obj;
        return this.f6982a.equals(c2521k.f6982a) && this.f6983b.equals(c2521k.f6983b);
    }

    public final int hashCode() {
        return this.f6982a.hashCode() ^ this.f6983b.hashCode();
    }

    public final String toString() {
        C2508f1 c2508f1 = this.f6983b;
        boolean zM3932f = c2508f1.m3932f();
        EnumC2518j enumC2518j = this.f6982a;
        if (zM3932f) {
            return enumC2518j.toString();
        }
        return enumC2518j + "(" + c2508f1 + ")";
    }
}
