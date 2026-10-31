package p194s6;

import java.util.Arrays;
import p000a.AbstractC0000a;
import p063f6.C1578b;
import p141n.C2455p;
import p185r6.AbstractC3106a;
import p260z5.C3759o;

/* JADX INFO: renamed from: s6.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3215g {

    /* JADX INFO: renamed from: a */
    public static final C2455p f9397a = new C2455p(11);

    /* JADX WARN: Code duplicated, block: B:79:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:81:0x0100  */
    /* JADX WARN: Code duplicated, block: B:84:0x010b  */
    /* JADX WARN: Code duplicated, block: B:87:0x0119  */
    /* JADX WARN: Code duplicated, block: B:88:0x011c  */
    /* JADX WARN: Code duplicated, block: B:89:0x011f  */
    /* JADX INFO: renamed from: a */
    public static C3211c m5150a(C3213e c3213e) {
        C3211c c3211c;
        int[] iArr;
        int i10;
        int i11;
        C3759o c3759o;
        C3759o c3759o2;
        C3759o c3759o3;
        C3759o c3759o4;
        C3759o c3759o5;
        int i12;
        int i13;
        C3759o c3759o6;
        if (c3213e == null) {
            return null;
        }
        boolean z9 = c3213e.f9395e;
        C3211c c3211c2 = (C3211c) c3213e.f5705c;
        C3759o c3759o7 = c3211c2.f9387e;
        C3759o c3759o8 = c3211c2.f9385c;
        C3759o c3759o9 = c3211c2.f9386d;
        C3759o c3759o10 = c3211c2.f9384b;
        C3209a[] c3209aArr = (C3209a[]) c3213e.f5706d;
        C3209a c3209aM5148S = c3213e.m5148S();
        if (c3209aM5148S == null) {
            iArr = null;
            c3211c = null;
        } else {
            int i14 = c3209aM5148S.f9381f;
            C3759o c3759o11 = z9 ? c3759o10 : c3759o9;
            C3759o c3759o12 = z9 ? c3759o8 : c3759o7;
            int iM3495x = c3213e.m3495x((int) c3759o11.f11215b);
            int iM3495x2 = c3213e.m3495x((int) c3759o12.f11215b);
            int iMax = 1;
            int i15 = -1;
            int i16 = 0;
            c3211c = null;
            while (iM3495x < iM3495x2) {
                C3209a c3209a = c3209aArr[iM3495x];
                if (c3209a != null) {
                    c3209a.m5142b();
                    int i17 = c3209a.f9381f;
                    int i18 = i17 - i15;
                    if (i18 == 0) {
                        i16++;
                        i11 = iM3495x2;
                    } else {
                        i11 = iM3495x2;
                        if (i18 == 1) {
                            iMax = Math.max(iMax, i16);
                            i15 = c3209a.f9381f;
                        } else if (i17 >= i14) {
                            c3209aArr[iM3495x] = null;
                        } else {
                            i15 = i17;
                        }
                        i16 = 1;
                    }
                } else {
                    i11 = iM3495x2;
                }
                iM3495x++;
                iM3495x2 = i11;
            }
            iArr = new int[i14];
            for (C3209a c3209a2 : c3209aArr) {
                if (c3209a2 != null && (i10 = c3209a2.f9381f) < i14) {
                    iArr[i10] = iArr[i10] + 1;
                }
            }
        }
        if (iArr == null) {
            return c3211c;
        }
        int iMax2 = -1;
        for (int i19 : iArr) {
            iMax2 = Math.max(iMax2, i19);
        }
        int i20 = 0;
        for (int i21 : iArr) {
            i20 += iMax2 - i21;
            if (i21 > 0) {
                break;
            }
        }
        for (int i22 = 0; i20 > 0 && c3209aArr[i22] == null; i22++) {
            i20--;
        }
        int i23 = 0;
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i24 = iArr[length];
            i23 += iMax2 - i24;
            if (i24 > 0) {
                break;
            }
        }
        for (int length2 = c3209aArr.length - 1; i23 > 0 && c3209aArr[length2] == null; length2--) {
            i23--;
        }
        if (i20 > 0) {
            C3759o c3759o13 = z9 ? c3759o10 : c3759o9;
            int i25 = ((int) c3759o13.f11215b) - i20;
            C3759o c3759o14 = new C3759o(c3759o13.f11214a, i25 < 0 ? 0 : i25);
            if (z9) {
                c3759o2 = c3759o14;
                c3759o = c3759o9;
            } else {
                c3759o = c3759o14;
            }
            if (i23 > 0) {
                if (z9) {
                    c3759o5 = c3759o8;
                } else {
                    c3759o5 = c3759o7;
                }
                i12 = ((int) c3759o5.f11215b) + i23;
                i13 = c3211c2.f9383a.f3901c;
                if (i12 >= i13) {
                    i12 = i13 - 1;
                }
                c3759o6 = new C3759o(c3759o5.f11214a, i12);
                if (z9) {
                    c3759o3 = c3759o7;
                    c3759o4 = c3759o6;
                } else {
                    c3759o4 = c3759o8;
                    c3759o3 = c3759o6;
                }
            } else {
                c3759o3 = c3759o7;
                c3759o4 = c3759o8;
            }
            return new C3211c(c3211c2.f9383a, c3759o2, c3759o4, c3759o, c3759o3);
        }
        c3759o = c3759o9;
        c3759o2 = c3759o10;
        if (i23 > 0) {
            if (z9) {
                c3759o5 = c3759o8;
            } else {
                c3759o5 = c3759o7;
            }
            i12 = ((int) c3759o5.f11215b) + i23;
            i13 = c3211c2.f9383a.f3901c;
            if (i12 >= i13) {
                i12 = i13 - 1;
            }
            c3759o6 = new C3759o(c3759o5.f11214a, i12);
            if (z9) {
                c3759o3 = c3759o7;
                c3759o4 = c3759o6;
            } else {
                c3759o4 = c3759o8;
                c3759o3 = c3759o6;
            }
        } else {
            c3759o3 = c3759o7;
            c3759o4 = c3759o8;
        }
        return new C3211c(c3211c2.f9383a, c3759o2, c3759o4, c3759o, c3759o3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:207:0x040c  */
    /* JADX WARN: Code duplicated, block: B:213:0x042a  */
    /* JADX WARN: Code duplicated, block: B:216:0x0432  */
    /* JADX WARN: Code duplicated, block: B:222:0x0445  */
    /* JADX WARN: Code duplicated, block: B:224:0x044e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:225:0x0450  */
    /* JADX WARN: Code duplicated, block: B:226:0x0453  */
    /* JADX WARN: Code duplicated, block: B:228:0x0457 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:231:0x045c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:236:0x0479  */
    /* JADX WARN: Code duplicated, block: B:239:0x0481  */
    /* JADX WARN: Code duplicated, block: B:262:0x04ea A[LOOP:11: B:261:0x04e8->B:262:0x04ea, LOOP_END] */
    /* JADX WARN: Type inference failed for: r3v31, types: [byte[], java.util.ArrayList] */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Unknown Source)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    /* JADX INFO: renamed from: b */
    public static p063f6.C1580d m5151b(int[] r26, int[] r27, int r28) throws p260z5.C3747c, p260z5.C3749e {
        /*
            Method dump skipped, instruction units count: 1472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p194s6.AbstractC3215g.m5151b(int[], int[], int):f6.d");
    }

    /* JADX WARN: Code duplicated, block: B:116:0x002d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0032 A[EDGE_INSN: B:120:0x0032->B:19:0x0032 BREAK  A[LOOP:1: B:9:0x0018->B:18:0x0030], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x0060 A[EDGE_INSN: B:123:0x0060->B:34:0x0060 BREAK  A[LOOP:2: B:25:0x0045->B:126:0x0045], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x005b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0054 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:18:0x0030 A[LOOP:1: B:9:0x0018->B:18:0x0030, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x004e  */
    /* JADX INFO: renamed from: c */
    public static C3209a m5152c(C1578b c1578b, int i10, int i11, boolean z9, int i12, int i13, int i14, int i15) {
        int i16;
        C3209a c3209a;
        C3209a c3209a2;
        int i17 = i10;
        int i18 = z9 ? -1 : 1;
        boolean z10 = z9;
        int i19 = i12;
        loop0: for (int i20 = 0; i20 < 2; i20++) {
            while (true) {
                if (!z10) {
                    if (i19 >= i11) {
                        break;
                    }
                    if (z10 == c1578b.m2658b(i19, i13)) {
                        break;
                        break;
                    }
                    if (Math.abs(i12 - i19) > 2) {
                        i19 = i12;
                        break loop0;
                    }
                    i19 += i18;
                } else {
                    if (i19 < i17) {
                        break;
                    }
                    if (z10 == c1578b.m2658b(i19, i13)) {
                        break;
                    }
                    if (Math.abs(i12 - i19) > 2) {
                        i19 = i12;
                        break loop0;
                    }
                    i19 += i18;
                }
            }
            i18 = -i18;
            z10 = !z10;
        }
        int[] iArr = new int[8];
        int i21 = z9 ? 1 : -1;
        boolean z11 = z9;
        int i22 = 0;
        int i23 = i19;
        while (true) {
            if (!z9) {
                if (i23 < i17) {
                    break;
                }
                if (i22 < 8) {
                    break;
                    break;
                }
                if (c1578b.m2658b(i23, i13) == z11) {
                    iArr[i22] = iArr[i22] + 1;
                    i23 += i21;
                } else {
                    i22++;
                    z11 = !z11;
                }
            } else {
                if (i23 >= i11) {
                    break;
                }
                if (i22 < 8) {
                    break;
                }
                if (c1578b.m2658b(i23, i13) == z11) {
                    iArr[i22] = iArr[i22] + 1;
                    i23 += i21;
                } else {
                    i22++;
                    z11 = !z11;
                }
            }
        }
        if (i22 != 8) {
            if (z9) {
                i17 = i11;
            }
            if (i23 != i17 || i22 != 7) {
                iArr = null;
            }
        }
        if (iArr != null) {
            int iM23x = AbstractC0000a.m23x(iArr);
            if (z9) {
                i16 = i19 + iM23x;
            } else {
                for (int i24 = 0; i24 < iArr.length / 2; i24++) {
                    int i25 = iArr[i24];
                    iArr[i24] = iArr[(iArr.length - 1) - i24];
                    iArr[(iArr.length - 1) - i24] = i25;
                }
                int i26 = i19;
                i19 -= iM23x;
                i16 = i26;
            }
            if (i14 - 2 <= iM23x && iM23x <= i15 + 2) {
                float[][] fArr = AbstractC3214f.f9396a;
                float fM23x = AbstractC0000a.m23x(iArr);
                int[] iArr2 = new int[8];
                int i27 = 0;
                int i28 = 0;
                for (int i29 = 0; i29 < 17; i29++) {
                    float f8 = ((i29 * fM23x) / 17.0f) + (fM23x / 34.0f);
                    int i30 = iArr[i28] + i27;
                    if (i30 <= f8) {
                        i28++;
                        i27 = i30;
                    }
                    iArr2[i28] = iArr2[i28] + 1;
                }
                long j10 = 0;
                for (int i31 = 0; i31 < 8; i31++) {
                    for (int i32 = 0; i32 < iArr2[i31]; i32++) {
                        j10 = (j10 << 1) | ((long) (i31 % 2 == 0 ? 1 : 0));
                    }
                }
                int i33 = (int) j10;
                int i34 = 262143;
                int[] iArr3 = AbstractC3106a.f8869b;
                int iBinarySearch = Arrays.binarySearch(iArr3, i33 & 262143);
                int[] iArr4 = AbstractC3106a.f8870c;
                if ((iBinarySearch < 0 ? -1 : (iArr4[iBinarySearch] - 1) % 929) == -1) {
                    i33 = -1;
                }
                if (i33 == -1) {
                    int iM23x2 = AbstractC0000a.m23x(iArr);
                    float[] fArr2 = new float[8];
                    if (iM23x2 > 1) {
                        for (int i35 = 0; i35 < 8; i35++) {
                            fArr2[i35] = iArr[i35] / iM23x2;
                        }
                    }
                    float f10 = Float.MAX_VALUE;
                    i33 = -1;
                    int i36 = 0;
                    while (true) {
                        float[][] fArr3 = AbstractC3214f.f9396a;
                        if (i36 >= fArr3.length) {
                            break;
                        }
                        float[] fArr4 = fArr3[i36];
                        float f11 = 0.0f;
                        int i37 = i34;
                        for (int i38 = 0; i38 < 8; i38++) {
                            float f12 = fArr4[i38] - fArr2[i38];
                            f11 = (f12 * f12) + f11;
                            if (f11 >= f10) {
                                break;
                            }
                        }
                        if (f11 < f10) {
                            i33 = iArr3[i36];
                            f10 = f11;
                        }
                        i36++;
                        i34 = i37;
                    }
                }
                int iBinarySearch2 = Arrays.binarySearch(iArr3, i33 & i34);
                int i39 = iBinarySearch2 < 0 ? -1 : (iArr4[iBinarySearch2] - 1) % 929;
                if (i39 == -1) {
                    return null;
                }
                int[] iArr5 = new int[8];
                int i40 = 0;
                int i41 = 7;
                while (true) {
                    int i42 = i33 & 1;
                    if (i42 != i40) {
                        i41--;
                        if (i41 < 0) {
                            return new C3209a(i19, i16, ((((iArr5[0] - iArr5[2]) + iArr5[4]) - iArr5[6]) + 9) % 9, i39, 1);
                        }
                        c3209a2 = c3209a;
                        i40 = i42;
                    } else {
                        c3209a2 = c3209a;
                    }
                    iArr5[i41] = iArr5[i41] + 1;
                    i33 >>= 1;
                    c3209a = c3209a2;
                    i39 = i39;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    public static C3213e m5153d(C1578b c1578b, C3211c c3211c, C3759o c3759o, boolean z9, int i10, int i11) {
        C3213e c3213e = new C3213e(c3211c, z9);
        int i12 = 0;
        while (i12 < 2) {
            int i13 = i12 == 0 ? 1 : -1;
            int i14 = (int) c3759o.f11214a;
            int i15 = (int) c3759o.f11215b;
            while (i15 <= c3211c.f9391i && i15 >= c3211c.f9390h) {
                C3209a c3209aM5152c = m5152c(c1578b, 0, c1578b.f3900b, z9, i14, i15, i10, i11);
                if (c3209aM5152c != null) {
                    ((C3209a[]) c3213e.f5706d)[c3213e.m3495x(i15)] = c3209aM5152c;
                    i14 = z9 ? c3209aM5152c.f9377b : c3209aM5152c.f9378c;
                }
                i15 += i13;
                z9 = z9;
            }
            i12++;
        }
        return c3213e;
    }
}
