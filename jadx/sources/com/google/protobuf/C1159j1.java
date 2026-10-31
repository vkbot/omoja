package com.google.protobuf;

import androidx.navigation.C0674b;
import java.util.Arrays;
import p142n0.C2467b;

/* JADX INFO: renamed from: com.google.protobuf.j1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1159j1 {

    /* JADX INFO: renamed from: f */
    public static final C1159j1 f2709f = new C1159j1(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a */
    public int f2710a;

    /* JADX INFO: renamed from: b */
    public int[] f2711b;

    /* JADX INFO: renamed from: c */
    public Object[] f2712c;

    /* JADX INFO: renamed from: d */
    public int f2713d = -1;

    /* JADX INFO: renamed from: e */
    public boolean f2714e;

    public C1159j1(int i10, int[] iArr, Object[] objArr, boolean z9) {
        this.f2710a = i10;
        this.f2711b = iArr;
        this.f2712c = objArr;
        this.f2714e = z9;
    }

    /* JADX INFO: renamed from: a */
    public final void m2006a(int i10) {
        int[] iArr = this.f2711b;
        if (i10 > iArr.length) {
            int i11 = this.f2710a;
            int i12 = (i11 / 2) + i11;
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f2711b = Arrays.copyOf(iArr, i10);
            this.f2712c = Arrays.copyOf(this.f2712c, i10);
        }
    }

    /* JADX INFO: renamed from: b */
    public final int m2007b() {
        int iM2048c;
        int iM2050e;
        int iM2048c2;
        int i10 = this.f2713d;
        if (i10 != -1) {
            return i10;
        }
        int iM2067a = 0;
        for (int i11 = 0; i11 < this.f2710a; i11++) {
            int i12 = this.f2711b[i11];
            int i13 = i12 >>> 3;
            int i14 = i12 & 7;
            if (i14 != 0) {
                if (i14 != 1) {
                    if (i14 == 2) {
                        C1148g c1148g = (C1148g) this.f2712c[i11];
                        int iM2048c3 = AbstractC1169n.m2048c(i13);
                        int size = c1148g.size();
                        iM2067a = AbstractC1178q.m2067a(size, size, iM2048c3, iM2067a);
                    } else if (i14 == 3) {
                        iM2048c = AbstractC1169n.m2048c(i13) * 2;
                        iM2050e = ((C1159j1) this.f2712c[i11]).m2007b();
                    } else {
                        if (i14 != 5) {
                            throw new IllegalStateException(C1140d0.m1937b());
                        }
                        ((Integer) this.f2712c[i11]).getClass();
                        iM2048c2 = AbstractC1169n.m2048c(i13) + 4;
                    }
                } else {
                    ((Long) this.f2712c[i11]).getClass();
                    iM2048c2 = AbstractC1169n.m2048c(i13) + 8;
                }
                iM2067a = iM2048c2 + iM2067a;
            } else {
                long jLongValue = ((Long) this.f2712c[i11]).longValue();
                iM2048c = AbstractC1169n.m2048c(i13);
                iM2050e = AbstractC1169n.m2050e(jLongValue);
            }
            iM2067a = iM2050e + iM2048c + iM2067a;
        }
        this.f2713d = iM2067a;
        return iM2067a;
    }

    /* JADX INFO: renamed from: c */
    public final void m2008c(int i10, Object obj) {
        if (!this.f2714e) {
            C0674b.m835a();
            return;
        }
        m2006a(this.f2710a + 1);
        int[] iArr = this.f2711b;
        int i11 = this.f2710a;
        iArr[i11] = i10;
        this.f2712c[i11] = obj;
        this.f2710a = i11 + 1;
    }

    /* JADX INFO: renamed from: d */
    public final void m2009d(C1164l0 c1164l0) {
        if (this.f2710a == 0) {
            return;
        }
        c1164l0.getClass();
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        for (int i10 = 0; i10 < this.f2710a; i10++) {
            int i11 = this.f2711b[i10];
            Object obj = this.f2712c[i10];
            int i12 = i11 >>> 3;
            int i13 = i11 & 7;
            if (i13 == 0) {
                abstractC1169n.mo2032z(i12, ((Long) obj).longValue());
            } else if (i13 == 1) {
                abstractC1169n.mo2020n(i12, ((Long) obj).longValue());
            } else if (i13 == 2) {
                abstractC1169n.mo2016j(i12, (C1148g) obj);
            } else if (i13 == 3) {
                abstractC1169n.mo2029w(i12, 3);
                ((C1159j1) obj).m2009d(c1164l0);
                abstractC1169n.mo2029w(i12, 4);
            } else {
                if (i13 != 5) {
                    C2467b.m3833w(C1140d0.m1937b());
                    return;
                }
                abstractC1169n.mo2018l(i12, ((Integer) obj).intValue());
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1159j1)) {
            return false;
        }
        C1159j1 c1159j1 = (C1159j1) obj;
        int i10 = this.f2710a;
        if (i10 == c1159j1.f2710a) {
            int[] iArr = this.f2711b;
            int[] iArr2 = c1159j1.f2711b;
            for (int i11 = 0; i11 < i10; i11++) {
                if (iArr[i11] == iArr2[i11]) {
                }
            }
            Object[] objArr = this.f2712c;
            Object[] objArr2 = c1159j1.f2712c;
            int i12 = this.f2710a;
            for (int i13 = 0; i13 < i12; i13++) {
                if (objArr[i13].equals(objArr2[i13])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.f2710a;
        int i11 = (527 + i10) * 31;
        int[] iArr = this.f2711b;
        int iHashCode = 17;
        int i12 = 17;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 = (i12 * 31) + iArr[i13];
        }
        int i14 = (i11 + i12) * 31;
        Object[] objArr = this.f2712c;
        int i15 = this.f2710a;
        for (int i16 = 0; i16 < i15; i16++) {
            iHashCode = (iHashCode * 31) + objArr[i16].hashCode();
        }
        return i14 + iHashCode;
    }
}
