package z5;

import java.lang.reflect.Array;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f6.e f6313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f6.b f6314b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(f6.e eVar) {
        this.f6313a = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f6.b a() throws i {
        int[] iArr;
        if (this.f6314b == null) {
            f6.e eVar = this.f6313a;
            f6.b bVar = eVar.d;
            if (bVar == null) {
                g gVar = eVar.f2265a;
                int i9 = gVar.f6324a;
                int i10 = gVar.f6325b;
                boolean z8 = true;
                int i11 = 0;
                if (i9 < 40 || i10 < 40) {
                    f6.b bVar2 = new f6.b(i9, i10);
                    if (eVar.f2266b.length < i9) {
                        eVar.f2266b = new byte[i9];
                    }
                    int i12 = 0;
                    while (true) {
                        iArr = eVar.c;
                        if (i12 >= 32) {
                            break;
                        }
                        iArr[i12] = 0;
                        i12++;
                    }
                    for (int i13 = 1; i13 < 5; i13++) {
                        byte[] bArrB = gVar.b((i10 * i13) / 5, eVar.f2266b);
                        int i14 = (i9 << 2) / 5;
                        for (int i15 = i9 / 5; i15 < i14; i15++) {
                            int i16 = (bArrB[i15] & UByte.MAX_VALUE) >> 3;
                            iArr[i16] = iArr[i16] + 1;
                        }
                    }
                    int iA = f6.e.a(iArr);
                    byte[] bArrA = gVar.a();
                    for (int i17 = 0; i17 < i10; i17++) {
                        int i18 = i17 * i9;
                        for (int i19 = 0; i19 < i9; i19++) {
                            if ((bArrA[i18 + i19] & UByte.MAX_VALUE) < iA) {
                                bVar2.f(i19, i17);
                            }
                        }
                    }
                    eVar.d = bVar2;
                } else {
                    byte[] bArrA2 = gVar.a();
                    int i20 = i9 >> 3;
                    if ((i9 & 7) != 0) {
                        i20++;
                    }
                    int i21 = i10 >> 3;
                    if ((i10 & 7) != 0) {
                        i21++;
                    }
                    int i22 = i10 - 8;
                    int i23 = i9 - 8;
                    int i24 = 2;
                    int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i21, i20);
                    int i25 = 0;
                    while (true) {
                        int i26 = 8;
                        if (i25 >= i21) {
                            break;
                        }
                        boolean z9 = z8;
                        int i27 = i25 << 3;
                        if (i27 > i22) {
                            i27 = i22;
                        }
                        int i28 = i11;
                        while (i11 < i20) {
                            int i29 = i24;
                            int i30 = i11 << 3;
                            if (i30 > i23) {
                                i30 = i23;
                            }
                            int i31 = (i27 * i9) + i30;
                            int i32 = i28;
                            int i33 = i32;
                            int i34 = i33;
                            int i35 = 255;
                            while (i32 < i26) {
                                byte[] bArr = bArrA2;
                                int i36 = i27;
                                int i37 = i28;
                                int i38 = i34;
                                int i39 = i35;
                                while (i37 < i26) {
                                    int i40 = i37;
                                    int i41 = bArr[i31 + i37] & UByte.MAX_VALUE;
                                    i33 += i41;
                                    if (i41 < i39) {
                                        i39 = i41;
                                    }
                                    if (i41 > i38) {
                                        i38 = i41;
                                    }
                                    i37 = i40 + 1;
                                    i26 = 8;
                                }
                                if (i38 - i39 > 24) {
                                    while (true) {
                                        i32++;
                                        i31 += i9;
                                        if (i32 < 8) {
                                            int i42 = i28;
                                            for (int i43 = 8; i42 < i43; i43 = 8) {
                                                i33 += bArr[i31 + i42] & UByte.MAX_VALUE;
                                                i42++;
                                                i39 = i39;
                                            }
                                        }
                                    }
                                }
                                i32++;
                                i31 += i9;
                                i35 = i39;
                                bArrA2 = bArr;
                                i27 = i36;
                                i26 = 8;
                                i34 = i38;
                            }
                            byte[] bArr2 = bArrA2;
                            int i44 = i27;
                            int i45 = i33 >> 6;
                            int i46 = i35;
                            if (i34 - i46 <= 24) {
                                i45 = i46 / 2;
                                if (i25 > 0 && i11 > 0) {
                                    int[] iArr3 = iArr2[i25 - 1];
                                    int i47 = i11 - 1;
                                    int i48 = (((iArr2[i25][i47] * 2) + iArr3[i11]) + iArr3[i47]) / 4;
                                    if (i46 < i48) {
                                        i45 = i48;
                                    }
                                }
                            }
                            iArr2[i25][i11] = i45;
                            i11++;
                            i24 = i29;
                            bArrA2 = bArr2;
                            i27 = i44;
                            i26 = 8;
                        }
                        i25++;
                        z8 = z9;
                        i11 = i28;
                    }
                    byte[] bArr3 = bArrA2;
                    int i49 = i11;
                    int i50 = i24;
                    f6.b bVar3 = new f6.b(i9, i10);
                    int i51 = i49;
                    while (i51 < i21) {
                        int i52 = i51 << 3;
                        if (i52 > i22) {
                            i52 = i22;
                        }
                        int iMin = i51 < i50 ? 2 : Math.min(i51, i21 - 3);
                        int i53 = i49;
                        while (i53 < i20) {
                            int i54 = i53 << 3;
                            if (i54 > i23) {
                                i54 = i23;
                            }
                            int iMin2 = i53 < 2 ? 2 : Math.min(i53, i20 - 3);
                            int i55 = i51;
                            int i56 = -2;
                            int i57 = i49;
                            for (int i58 = 2; i56 <= i58; i58 = 2) {
                                int[] iArr4 = iArr2[iMin + i56];
                                i57 = iArr4[iMin2 - 2] + iArr4[iMin2 - 1] + iArr4[iMin2] + iArr4[iMin2 + 1] + iArr4[iMin2 + 2] + i57;
                                i56++;
                            }
                            int i59 = i57 / 25;
                            int i60 = (i52 * i9) + i54;
                            int i61 = i52;
                            int i62 = i49;
                            while (true) {
                                if (i62 < 8) {
                                    int i63 = i53;
                                    int i64 = i49;
                                    for (int i65 = 8; i64 < i65; i65 = 8) {
                                        int i66 = i64;
                                        if ((bArr3[i60 + i64] & UByte.MAX_VALUE) <= i59) {
                                            bVar3.f(i54 + i66, i61 + i62);
                                        }
                                        i64 = i66 + 1;
                                    }
                                    i62++;
                                    i60 += i9;
                                    i53 = i63;
                                }
                            }
                            i53++;
                            i52 = i61;
                            i51 = i55;
                        }
                        i50 = 2;
                        i51++;
                    }
                    eVar.d = bVar3;
                }
                bVar = eVar.d;
            }
            this.f6314b = bVar;
        }
        return this.f6314b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f6.a b(f6.a aVar, int i9) throws i {
        f6.e eVar = this.f6313a;
        int[] iArr = eVar.c;
        g gVar = eVar.f2265a;
        int i10 = gVar.f6324a;
        if (aVar.c < i10) {
            aVar = new f6.a(i10);
        } else {
            int length = aVar.f2257b.length;
            for (int i11 = 0; i11 < length; i11++) {
                aVar.f2257b[i11] = 0;
            }
        }
        if (eVar.f2266b.length < i10) {
            eVar.f2266b = new byte[i10];
        }
        for (int i12 = 0; i12 < 32; i12++) {
            iArr[i12] = 0;
        }
        byte[] bArrB = gVar.b(i9, eVar.f2266b);
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = (bArrB[i13] & UByte.MAX_VALUE) >> 3;
            iArr[i14] = iArr[i14] + 1;
        }
        int iA = f6.e.a(iArr);
        if (i10 < 3) {
            for (int i15 = 0; i15 < i10; i15++) {
                if ((bArrB[i15] & UByte.MAX_VALUE) < iA) {
                    aVar.j(i15);
                }
            }
        } else {
            int i16 = bArrB[0] & UByte.MAX_VALUE;
            int i17 = bArrB[1] & UByte.MAX_VALUE;
            int i18 = 1;
            while (i18 < i10 - 1) {
                int i19 = i18 + 1;
                int i20 = bArrB[i19] & UByte.MAX_VALUE;
                if ((((i17 << 2) - i16) - i20) / 2 < iA) {
                    aVar.j(i18);
                }
                i16 = i17;
                i18 = i19;
                i17 = i20;
            }
        }
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        try {
            return a().toString();
        } catch (i unused) {
            return "";
        }
    }
}
