package p260z5;

import java.lang.reflect.Array;
import kotlin.UByte;
import p063f6.C1577a;
import p063f6.C1578b;
import p063f6.C1581e;

/* JADX INFO: renamed from: z5.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3746b {

    /* JADX INFO: renamed from: a */
    public final C1581e f11170a;

    /* JADX INFO: renamed from: b */
    public C1578b f11171b;

    public C3746b(C1581e c1581e) {
        this.f11170a = c1581e;
    }

    /* JADX INFO: renamed from: a */
    public final C1578b m5977a() throws C3753i {
        int[] iArr;
        if (this.f11171b == null) {
            C1581e c1581e = this.f11170a;
            C1578b c1578b = c1581e.f3920d;
            if (c1578b == null) {
                AbstractC3751g abstractC3751g = c1581e.f3917a;
                int i10 = abstractC3751g.f11187a;
                int i11 = abstractC3751g.f11188b;
                boolean z9 = true;
                int i12 = 0;
                if (i10 < 40 || i11 < 40) {
                    C1578b c1578b2 = new C1578b(i10, i11);
                    if (c1581e.f3918b.length < i10) {
                        c1581e.f3918b = new byte[i10];
                    }
                    int i13 = 0;
                    while (true) {
                        iArr = c1581e.f3919c;
                        if (i13 >= 32) {
                            break;
                        }
                        iArr[i13] = 0;
                        i13++;
                    }
                    for (int i14 = 1; i14 < 5; i14++) {
                        byte[] bArrMo5982b = abstractC3751g.mo5982b((i11 * i14) / 5, c1581e.f3918b);
                        int i15 = (i10 << 2) / 5;
                        for (int i16 = i10 / 5; i16 < i15; i16++) {
                            int i17 = (bArrMo5982b[i16] & UByte.MAX_VALUE) >> 3;
                            iArr[i17] = iArr[i17] + 1;
                        }
                    }
                    int iM2666a = C1581e.m2666a(iArr);
                    byte[] bArrMo5981a = abstractC3751g.mo5981a();
                    for (int i18 = 0; i18 < i11; i18++) {
                        int i19 = i18 * i10;
                        for (int i20 = 0; i20 < i10; i20++) {
                            if ((bArrMo5981a[i19 + i20] & UByte.MAX_VALUE) < iM2666a) {
                                c1578b2.m2662f(i20, i18);
                            }
                        }
                    }
                    c1581e.f3920d = c1578b2;
                } else {
                    byte[] bArrMo5981a2 = abstractC3751g.mo5981a();
                    int i21 = i10 >> 3;
                    if ((i10 & 7) != 0) {
                        i21++;
                    }
                    int i22 = i11 >> 3;
                    if ((i11 & 7) != 0) {
                        i22++;
                    }
                    int i23 = i11 - 8;
                    int i24 = i10 - 8;
                    int i25 = 2;
                    int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i22, i21);
                    int i26 = 0;
                    while (true) {
                        int i27 = 8;
                        if (i26 >= i22) {
                            break;
                        }
                        boolean z10 = z9;
                        int i28 = i26 << 3;
                        if (i28 > i23) {
                            i28 = i23;
                        }
                        int i29 = i12;
                        while (i12 < i21) {
                            int i30 = i25;
                            int i31 = i12 << 3;
                            if (i31 > i24) {
                                i31 = i24;
                            }
                            int i32 = (i28 * i10) + i31;
                            int i33 = i29;
                            int i34 = i33;
                            int i35 = i34;
                            int i36 = 255;
                            while (i33 < i27) {
                                byte[] bArr = bArrMo5981a2;
                                int i37 = i28;
                                int i38 = i29;
                                int i39 = i35;
                                int i40 = i36;
                                while (i38 < i27) {
                                    int i41 = i38;
                                    int i42 = bArr[i32 + i38] & UByte.MAX_VALUE;
                                    i34 += i42;
                                    if (i42 < i40) {
                                        i40 = i42;
                                    }
                                    if (i42 > i39) {
                                        i39 = i42;
                                    }
                                    i38 = i41 + 1;
                                    i27 = 8;
                                }
                                if (i39 - i40 > 24) {
                                    while (true) {
                                        i33++;
                                        i32 += i10;
                                        if (i33 < 8) {
                                            int i43 = i29;
                                            for (int i44 = 8; i43 < i44; i44 = 8) {
                                                i34 += bArr[i32 + i43] & UByte.MAX_VALUE;
                                                i43++;
                                                i40 = i40;
                                            }
                                        }
                                    }
                                }
                                i33++;
                                i32 += i10;
                                i36 = i40;
                                bArrMo5981a2 = bArr;
                                i28 = i37;
                                i27 = 8;
                                i35 = i39;
                            }
                            byte[] bArr2 = bArrMo5981a2;
                            int i45 = i28;
                            int i46 = i34 >> 6;
                            int i47 = i36;
                            if (i35 - i47 <= 24) {
                                i46 = i47 / 2;
                                if (i26 > 0 && i12 > 0) {
                                    int[] iArr3 = iArr2[i26 - 1];
                                    int i48 = i12 - 1;
                                    int i49 = (((iArr2[i26][i48] * 2) + iArr3[i12]) + iArr3[i48]) / 4;
                                    if (i47 < i49) {
                                        i46 = i49;
                                    }
                                }
                            }
                            iArr2[i26][i12] = i46;
                            i12++;
                            i25 = i30;
                            bArrMo5981a2 = bArr2;
                            i28 = i45;
                            i27 = 8;
                        }
                        i26++;
                        z9 = z10;
                        i12 = i29;
                    }
                    byte[] bArr3 = bArrMo5981a2;
                    int i50 = i12;
                    int i51 = i25;
                    C1578b c1578b3 = new C1578b(i10, i11);
                    int i52 = i50;
                    while (i52 < i22) {
                        int i53 = i52 << 3;
                        if (i53 > i23) {
                            i53 = i23;
                        }
                        int iMin = i52 < i51 ? 2 : Math.min(i52, i22 - 3);
                        int i54 = i50;
                        while (i54 < i21) {
                            int i55 = i54 << 3;
                            if (i55 > i24) {
                                i55 = i24;
                            }
                            int iMin2 = i54 < 2 ? 2 : Math.min(i54, i21 - 3);
                            int i56 = i52;
                            int i57 = -2;
                            int i58 = i50;
                            for (int i59 = 2; i57 <= i59; i59 = 2) {
                                int[] iArr4 = iArr2[iMin + i57];
                                i58 = iArr4[iMin2 - 2] + iArr4[iMin2 - 1] + iArr4[iMin2] + iArr4[iMin2 + 1] + iArr4[iMin2 + 2] + i58;
                                i57++;
                            }
                            int i60 = i58 / 25;
                            int i61 = (i53 * i10) + i55;
                            int i62 = i53;
                            int i63 = i50;
                            while (true) {
                                if (i63 < 8) {
                                    int i64 = i54;
                                    int i65 = i50;
                                    for (int i66 = 8; i65 < i66; i66 = 8) {
                                        int i67 = i65;
                                        if ((bArr3[i61 + i65] & UByte.MAX_VALUE) <= i60) {
                                            c1578b3.m2662f(i55 + i67, i62 + i63);
                                        }
                                        i65 = i67 + 1;
                                    }
                                    i63++;
                                    i61 += i10;
                                    i54 = i64;
                                }
                            }
                            i54++;
                            i53 = i62;
                            i52 = i56;
                        }
                        i51 = 2;
                        i52++;
                    }
                    c1581e.f3920d = c1578b3;
                }
                c1578b = c1581e.f3920d;
            }
            this.f11171b = c1578b;
        }
        return this.f11171b;
    }

    /* JADX INFO: renamed from: b */
    public final C1577a m5978b(C1577a c1577a, int i10) throws C3753i {
        C1581e c1581e = this.f11170a;
        int[] iArr = c1581e.f3919c;
        AbstractC3751g abstractC3751g = c1581e.f3917a;
        int i11 = abstractC3751g.f11187a;
        if (c1577a.f3899c < i11) {
            c1577a = new C1577a(i11);
        } else {
            int length = c1577a.f3898b.length;
            for (int i12 = 0; i12 < length; i12++) {
                c1577a.f3898b[i12] = 0;
            }
        }
        if (c1581e.f3918b.length < i11) {
            c1581e.f3918b = new byte[i11];
        }
        for (int i13 = 0; i13 < 32; i13++) {
            iArr[i13] = 0;
        }
        byte[] bArrMo5982b = abstractC3751g.mo5982b(i10, c1581e.f3918b);
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = (bArrMo5982b[i14] & UByte.MAX_VALUE) >> 3;
            iArr[i15] = iArr[i15] + 1;
        }
        int iM2666a = C1581e.m2666a(iArr);
        if (i11 < 3) {
            for (int i16 = 0; i16 < i11; i16++) {
                if ((bArrMo5982b[i16] & UByte.MAX_VALUE) < iM2666a) {
                    c1577a.m2656j(i16);
                }
            }
        } else {
            int i17 = bArrMo5982b[0] & UByte.MAX_VALUE;
            int i18 = bArrMo5982b[1] & UByte.MAX_VALUE;
            int i19 = 1;
            while (i19 < i11 - 1) {
                int i20 = i19 + 1;
                int i21 = bArrMo5982b[i20] & UByte.MAX_VALUE;
                if ((((i18 << 2) - i17) - i21) / 2 < iM2666a) {
                    c1577a.m2656j(i19);
                }
                i17 = i18;
                i19 = i20;
                i18 = i21;
            }
        }
        return c1577a;
    }

    public final String toString() {
        try {
            return m5977a().toString();
        } catch (C3753i unused) {
            return "";
        }
    }
}
