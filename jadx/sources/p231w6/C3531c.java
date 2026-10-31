package p231w6;

import com.bumptech.glide.AbstractC1034g;
import p130l9.C2237i;

/* JADX INFO: renamed from: w6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3531c {

    /* JADX INFO: renamed from: c */
    public static final int[][] f10483c = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* JADX INFO: renamed from: a */
    public final int f10484a;

    /* JADX INFO: renamed from: b */
    public final byte f10485b;

    public C3531c(int i10) {
        int i11 = (i10 >> 3) & 3;
        if (i11 < 0 || i11 >= 4) {
            C2237i.m3594a();
            throw null;
        }
        this.f10484a = AbstractC3530b.f10482a[i11];
        this.f10485b = (byte) (i10 & 7);
    }

    /* JADX INFO: renamed from: a */
    public static C3531c m5635a(int i10, int i11) {
        int iBitCount;
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        for (int i14 = 0; i14 < 32; i14++) {
            int[] iArr = f10483c[i14];
            int i15 = iArr[0];
            if (i15 == i10 || i15 == i11) {
                return new C3531c(iArr[1]);
            }
            int iBitCount2 = Integer.bitCount(i10 ^ i15);
            if (iBitCount2 < i12) {
                i13 = iArr[1];
                i12 = iBitCount2;
            }
            if (i10 != i11 && (iBitCount = Integer.bitCount(i15 ^ i11)) < i12) {
                i13 = iArr[1];
                i12 = iBitCount;
            }
        }
        if (i12 <= 3) {
            return new C3531c(i13);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3531c)) {
            return false;
        }
        C3531c c3531c = (C3531c) obj;
        return this.f10484a == c3531c.f10484a && this.f10485b == c3531c.f10485b;
    }

    public final int hashCode() {
        return (AbstractC1034g.m1296c(this.f10484a) << 3) | this.f10485b;
    }
}
