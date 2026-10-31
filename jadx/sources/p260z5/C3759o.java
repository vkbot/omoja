package p260z5;

import p000a.AbstractC0000a;

/* JADX INFO: renamed from: z5.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3759o {

    /* JADX INFO: renamed from: a */
    public final float f11214a;

    /* JADX INFO: renamed from: b */
    public final float f11215b;

    public C3759o(float f8, float f10) {
        this.f11214a = f8;
        this.f11215b = f10;
    }

    /* JADX INFO: renamed from: a */
    public static float m5989a(C3759o c3759o, C3759o c3759o2) {
        return AbstractC0000a.m7g(c3759o.f11214a, c3759o.f11215b, c3759o2.f11214a, c3759o2.f11215b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3759o) {
            C3759o c3759o = (C3759o) obj;
            if (this.f11214a == c3759o.f11214a && this.f11215b == c3759o.f11215b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f11215b) + (Float.floatToIntBits(this.f11214a) * 31);
    }

    public final String toString() {
        return "(" + this.f11214a + ',' + this.f11215b + ')';
    }
}
