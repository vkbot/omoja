package com.google.protobuf;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.protobuf.p1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1177p1 extends AbstractC1183r1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f2742b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1177p1(Unsafe unsafe, int i10) {
        super(unsafe);
        this.f2742b = i10;
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: c */
    public final boolean mo2058c(Object obj, long j10) {
        switch (this.f2742b) {
            case 0:
                if (AbstractC1186s1.f2755g) {
                    if (AbstractC1186s1.m2113h(obj, j10) == 0) {
                        return false;
                    }
                } else if (AbstractC1186s1.m2114i(obj, j10) == 0) {
                    return false;
                }
                return true;
            default:
                if (AbstractC1186s1.f2755g) {
                    if (AbstractC1186s1.m2113h(obj, j10) == 0) {
                        return false;
                    }
                } else if (AbstractC1186s1.m2114i(obj, j10) == 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: d */
    public final byte mo2059d(Object obj, long j10) {
        switch (this.f2742b) {
            case 0:
                return AbstractC1186s1.f2755g ? AbstractC1186s1.m2113h(obj, j10) : AbstractC1186s1.m2114i(obj, j10);
            default:
                return AbstractC1186s1.f2755g ? AbstractC1186s1.m2113h(obj, j10) : AbstractC1186s1.m2114i(obj, j10);
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: e */
    public final double mo2060e(Object obj, long j10) {
        switch (this.f2742b) {
            case 0:
                break;
        }
        return Double.longBitsToDouble(m2097h(obj, j10));
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: f */
    public final float mo2061f(Object obj, long j10) {
        switch (this.f2742b) {
            case 0:
                break;
        }
        return Float.intBitsToFloat(m2096g(obj, j10));
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: k */
    public final void mo2062k(Object obj, long j10, boolean z9) {
        switch (this.f2742b) {
            case 0:
                if (!AbstractC1186s1.f2755g) {
                    AbstractC1186s1.m2118m(obj, j10, z9 ? (byte) 1 : (byte) 0);
                } else {
                    AbstractC1186s1.m2117l(obj, j10, z9 ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!AbstractC1186s1.f2755g) {
                    AbstractC1186s1.m2118m(obj, j10, z9 ? (byte) 1 : (byte) 0);
                } else {
                    AbstractC1186s1.m2117l(obj, j10, z9 ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: l */
    public final void mo2063l(Object obj, long j10, byte b10) {
        switch (this.f2742b) {
            case 0:
                if (!AbstractC1186s1.f2755g) {
                    AbstractC1186s1.m2118m(obj, j10, b10);
                } else {
                    AbstractC1186s1.m2117l(obj, j10, b10);
                }
                break;
            default:
                if (!AbstractC1186s1.f2755g) {
                    AbstractC1186s1.m2118m(obj, j10, b10);
                } else {
                    AbstractC1186s1.m2117l(obj, j10, b10);
                }
                break;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: m */
    public final void mo2064m(Object obj, long j10, double d) {
        switch (this.f2742b) {
            case 0:
                m2101p(obj, j10, Double.doubleToLongBits(d));
                break;
            default:
                m2101p(obj, j10, Double.doubleToLongBits(d));
                break;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: n */
    public final void mo2065n(Object obj, long j10, float f8) {
        switch (this.f2742b) {
            case 0:
                m2100o(Float.floatToIntBits(f8), j10, obj);
                break;
            default:
                m2100o(Float.floatToIntBits(f8), j10, obj);
                break;
        }
    }

    @Override // com.google.protobuf.AbstractC1183r1
    /* JADX INFO: renamed from: s */
    public final boolean mo2066s() {
        switch (this.f2742b) {
        }
        return false;
    }
}
