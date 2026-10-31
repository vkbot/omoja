package com.google.protobuf;

import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p1 extends r1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1543b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p1(Unsafe unsafe, int i9) {
        super(unsafe);
        this.f1543b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final boolean c(Object obj, long j9) {
        switch (this.f1543b) {
            case 0:
                if (s1.f1553g) {
                    if (s1.h(obj, j9) == 0) {
                        return false;
                    }
                } else if (s1.i(obj, j9) == 0) {
                    return false;
                }
                return true;
            default:
                if (s1.f1553g) {
                    if (s1.h(obj, j9) == 0) {
                        return false;
                    }
                } else if (s1.i(obj, j9) == 0) {
                    return false;
                }
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final byte d(Object obj, long j9) {
        switch (this.f1543b) {
            case 0:
                return s1.f1553g ? s1.h(obj, j9) : s1.i(obj, j9);
            default:
                return s1.f1553g ? s1.h(obj, j9) : s1.i(obj, j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final double e(Object obj, long j9) {
        switch (this.f1543b) {
            case 0:
                break;
        }
        return Double.longBitsToDouble(h(obj, j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final float f(Object obj, long j9) {
        switch (this.f1543b) {
            case 0:
                break;
        }
        return Float.intBitsToFloat(g(obj, j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final void k(Object obj, long j9, boolean z8) {
        switch (this.f1543b) {
            case 0:
                if (!s1.f1553g) {
                    s1.m(obj, j9, z8 ? (byte) 1 : (byte) 0);
                } else {
                    s1.l(obj, j9, z8 ? (byte) 1 : (byte) 0);
                }
                break;
            default:
                if (!s1.f1553g) {
                    s1.m(obj, j9, z8 ? (byte) 1 : (byte) 0);
                } else {
                    s1.l(obj, j9, z8 ? (byte) 1 : (byte) 0);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final void l(Object obj, long j9, byte b9) {
        switch (this.f1543b) {
            case 0:
                if (!s1.f1553g) {
                    s1.m(obj, j9, b9);
                } else {
                    s1.l(obj, j9, b9);
                }
                break;
            default:
                if (!s1.f1553g) {
                    s1.m(obj, j9, b9);
                } else {
                    s1.l(obj, j9, b9);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final void m(Object obj, long j9, double d) {
        switch (this.f1543b) {
            case 0:
                p(obj, j9, Double.doubleToLongBits(d));
                break;
            default:
                p(obj, j9, Double.doubleToLongBits(d));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final void n(Object obj, long j9, float f8) {
        switch (this.f1543b) {
            case 0:
                o(Float.floatToIntBits(f8), j9, obj);
                break;
            default:
                o(Float.floatToIntBits(f8), j9, obj);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.google.protobuf.r1
    public final boolean s() {
        switch (this.f1543b) {
        }
        return false;
    }
}
