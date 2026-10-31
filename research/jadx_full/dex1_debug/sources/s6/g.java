package s6;

import java.util.Arrays;
import n.p;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f5313a = new p(11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:79:0x00fc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:81:0x0100  */
    /* JADX WARN: Code duplicated, block: B:84:0x010b  */
    /* JADX WARN: Code duplicated, block: B:87:0x0119  */
    /* JADX WARN: Code duplicated, block: B:88:0x011c  */
    /* JADX WARN: Code duplicated, block: B:89:0x011f  */
    public static c a(e eVar) {
        c cVar;
        int[] iArr;
        int i9;
        int i10;
        o oVar;
        o oVar2;
        o oVar3;
        o oVar4;
        o oVar5;
        int i11;
        int i12;
        o oVar6;
        if (eVar == null) {
            return null;
        }
        boolean z8 = eVar.e;
        c cVar2 = (c) eVar.c;
        o oVar7 = cVar2.e;
        o oVar8 = cVar2.c;
        o oVar9 = cVar2.d;
        o oVar10 = cVar2.f5305b;
        a[] aVarArr = (a[]) eVar.d;
        a aVarS = eVar.S();
        if (aVarS == null) {
            iArr = null;
            cVar = null;
        } else {
            int i13 = aVarS.f5302f;
            o oVar11 = z8 ? oVar10 : oVar9;
            o oVar12 = z8 ? oVar8 : oVar7;
            int iX = eVar.x((int) oVar11.f6340b);
            int iX2 = eVar.x((int) oVar12.f6340b);
            int iMax = 1;
            int i14 = -1;
            int i15 = 0;
            cVar = null;
            while (iX < iX2) {
                a aVar = aVarArr[iX];
                if (aVar != null) {
                    aVar.b();
                    int i16 = aVar.f5302f;
                    int i17 = i16 - i14;
                    if (i17 == 0) {
                        i15++;
                        i10 = iX2;
                    } else {
                        i10 = iX2;
                        if (i17 == 1) {
                            iMax = Math.max(iMax, i15);
                            i14 = aVar.f5302f;
                        } else if (i16 >= i13) {
                            aVarArr[iX] = null;
                        } else {
                            i14 = i16;
                        }
                        i15 = 1;
                    }
                } else {
                    i10 = iX2;
                }
                iX++;
                iX2 = i10;
            }
            iArr = new int[i13];
            for (a aVar2 : aVarArr) {
                if (aVar2 != null && (i9 = aVar2.f5302f) < i13) {
                    iArr[i9] = iArr[i9] + 1;
                }
            }
        }
        if (iArr == null) {
            return cVar;
        }
        int iMax2 = -1;
        for (int i18 : iArr) {
            iMax2 = Math.max(iMax2, i18);
        }
        int i19 = 0;
        for (int i20 : iArr) {
            i19 += iMax2 - i20;
            if (i20 > 0) {
                break;
            }
        }
        for (int i21 = 0; i19 > 0 && aVarArr[i21] == null; i21++) {
            i19--;
        }
        int i22 = 0;
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i23 = iArr[length];
            i22 += iMax2 - i23;
            if (i23 > 0) {
                break;
            }
        }
        for (int length2 = aVarArr.length - 1; i22 > 0 && aVarArr[length2] == null; length2--) {
            i22--;
        }
        if (i19 > 0) {
            o oVar13 = z8 ? oVar10 : oVar9;
            int i24 = ((int) oVar13.f6340b) - i19;
            o oVar14 = new o(oVar13.f6339a, i24 < 0 ? 0 : i24);
            if (z8) {
                oVar2 = oVar14;
                oVar = oVar9;
            } else {
                oVar = oVar14;
            }
            if (i22 > 0) {
                if (z8) {
                    oVar5 = oVar8;
                } else {
                    oVar5 = oVar7;
                }
                i11 = ((int) oVar5.f6340b) + i22;
                i12 = cVar2.f5304a.c;
                if (i11 >= i12) {
                    i11 = i12 - 1;
                }
                oVar6 = new o(oVar5.f6339a, i11);
                if (z8) {
                    oVar3 = oVar7;
                    oVar4 = oVar6;
                } else {
                    oVar4 = oVar8;
                    oVar3 = oVar6;
                }
            } else {
                oVar3 = oVar7;
                oVar4 = oVar8;
            }
            return new c(cVar2.f5304a, oVar2, oVar4, oVar, oVar3);
        }
        oVar = oVar9;
        oVar2 = oVar10;
        if (i22 > 0) {
            if (z8) {
                oVar5 = oVar8;
            } else {
                oVar5 = oVar7;
            }
            i11 = ((int) oVar5.f6340b) + i22;
            i12 = cVar2.f5304a.c;
            if (i11 >= i12) {
                i11 = i12 - 1;
            }
            oVar6 = new o(oVar5.f6339a, i11);
            if (z8) {
                oVar3 = oVar7;
                oVar4 = oVar6;
            } else {
                oVar4 = oVar8;
                oVar3 = oVar6;
            }
        } else {
            oVar3 = oVar7;
            oVar4 = oVar8;
        }
        return new c(cVar2.f5304a, oVar2, oVar4, oVar, oVar3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
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
    public static f6.d b(int[] r26, int[] r27, int r28) throws z5.c, z5.e {
        /*
            r0 = r26
            r1 = r27
            int r2 = r0.length
            if (r2 == 0) goto L565
            int r2 = r28 + 1
            r3 = 1
            int r2 = r3 << r2
            int r4 = r1.length
            int r5 = r2 / 2
            int r5 = r5 + 3
            if (r4 > r5) goto L560
            if (r2 < 0) goto L560
            r4 = 512(0x200, float:7.175E-43)
            if (r2 > r4) goto L560
            n.p r4 = s6.g.f5313a
            java.lang.Object r4 = r4.c
            t6.a r4 = (t6.a) r4
            int r5 = r0.length
            if (r5 == 0) goto L55b
            int r5 = r0.length
            r7 = 0
            if (r5 <= r3) goto L43
            r8 = r0[r7]
            if (r8 != 0) goto L43
            r8 = r3
        L2b:
            if (r8 >= r5) goto L34
            r9 = r0[r8]
            if (r9 != 0) goto L34
            int r8 = r8 + 1
            goto L2b
        L34:
            if (r8 != r5) goto L3b
            int[] r5 = new int[]{r7}
            goto L44
        L3b:
            int r5 = r5 - r8
            int[] r9 = new int[r5]
            java.lang.System.arraycopy(r0, r8, r9, r7, r5)
            r5 = r9
            goto L44
        L43:
            r5 = r0
        L44:
            int[] r8 = new int[r2]
            r9 = r2
            r10 = r7
        L48:
            if (r9 <= 0) goto L84
            int[] r11 = r4.f5413a
            r11 = r11[r9]
            if (r11 != 0) goto L55
            int r11 = r5.length
            int r11 = r11 - r3
            r11 = r5[r11]
            goto L7a
        L55:
            if (r11 != r3) goto L67
            int r11 = r5.length
            r12 = r7
            r13 = r12
        L5a:
            if (r13 >= r11) goto L65
            r14 = r5[r13]
            int r12 = r4.a(r12, r14)
            int r13 = r13 + 1
            goto L5a
        L65:
            r11 = r12
            goto L7a
        L67:
            r12 = r5[r7]
            int r13 = r5.length
            r14 = r3
        L6b:
            if (r14 >= r13) goto L65
            int r12 = r4.c(r11, r12)
            r15 = r5[r14]
            int r12 = r4.a(r12, r15)
            int r14 = r14 + 1
            goto L6b
        L7a:
            int r12 = r2 - r9
            r8[r12] = r11
            if (r11 == 0) goto L81
            r10 = r3
        L81:
            int r9 = r9 + (-1)
            goto L48
        L84:
            if (r10 != 0) goto L8a
            r16 = 0
            goto L2af
        L8a:
            l.d r5 = r4.d
            l.d r9 = r4.c
            int r10 = r1.length
            r11 = r7
        L90:
            r12 = 929(0x3a1, float:1.302E-42)
            if (r11 >= r10) goto Lb0
            r13 = r1[r11]
            int r14 = r0.length
            int r14 = r14 - r3
            int r14 = r14 - r13
            int[] r13 = r4.f5413a
            r13 = r13[r14]
            l.d r14 = new l.d
            int r13 = 929 - r13
            int r13 = r13 % r12
            int[] r12 = new int[]{r13, r3}
            r14.<init>(r4, r12)
            l.d r5 = r5.I(r14)
            int r11 = r11 + 1
            goto L90
        Lb0:
            l.d r1 = new l.d
            r1.<init>(r4, r8)
            if (r2 < 0) goto L556
            int r5 = r2 + 1
            int[] r5 = new int[r5]
            r5[r7] = r3
            l.d r8 = new l.d
            r8.<init>(r4, r5)
            int r5 = r8.s()
            int r10 = r1.s()
            if (r5 >= r10) goto Lcd
            goto Ld2
        Lcd:
            r25 = r8
            r8 = r1
            r1 = r25
        Ld2:
            l.d r5 = r4.d
            r10 = r5
            r5 = r1
            r1 = r8
            r8 = r10
            r10 = r9
        Ld9:
            int r11 = r1.s()
            int r13 = r2 / 2
            if (r11 < r13) goto L1b3
            boolean r11 = r1.A()
            if (r11 != 0) goto L1ae
            int r11 = r1.s()
            int r11 = r1.q(r11)
            int r11 = r4.b(r11)
            r13 = r9
        Lf4:
            int r14 = r5.s()
            int r15 = r1.s()
            if (r14 < r15) goto L174
            boolean r14 = r5.A()
            if (r14 != 0) goto L174
            int r14 = r5.s()
            int r15 = r1.s()
            int r14 = r14 - r15
            int r15 = r5.s()
            int r15 = r5.q(r15)
            int r15 = r4.c(r15, r11)
            if (r14 < 0) goto L16e
            if (r15 != 0) goto L123
            r17 = r3
            r3 = r9
            r16 = 0
            goto L132
        L123:
            r16 = 0
            int r6 = r14 + 1
            int[] r6 = new int[r6]
            r6[r7] = r15
            r17 = r3
            l.d r3 = new l.d
            r3.<init>(r4, r6)
        L132:
            l.d r13 = r13.c(r3)
            java.lang.Object r3 = r1.d
            int[] r3 = (int[]) r3
            java.lang.Object r6 = r1.c
            t6.a r6 = (t6.a) r6
            if (r14 < 0) goto L16a
            if (r15 != 0) goto L145
            l.d r3 = r6.c
            goto L160
        L145:
            int r7 = r3.length
            int r14 = r14 + r7
            int[] r14 = new int[r14]
            r12 = 0
        L14a:
            if (r12 >= r7) goto L15b
            r27 = r3
            r3 = r27[r12]
            int r3 = r6.c(r3, r15)
            r14[r12] = r3
            int r12 = r12 + 1
            r3 = r27
            goto L14a
        L15b:
            l.d r3 = new l.d
            r3.<init>(r6, r14)
        L160:
            l.d r5 = r5.P(r3)
            r3 = r17
            r7 = 0
            r12 = 929(0x3a1, float:1.302E-42)
            goto Lf4
        L16a:
            l9.i.a()
            return r16
        L16e:
            r16 = 0
            l9.i.a()
            return r16
        L174:
            r17 = r3
            r16 = 0
            l.d r3 = r13.I(r8)
            l.d r3 = r3.P(r10)
            java.lang.Object r6 = r3.d
            int[] r6 = (int[]) r6
            int r7 = r6.length
            int[] r10 = new int[r7]
            r11 = 0
        L188:
            java.lang.Object r12 = r3.c
            t6.a r12 = (t6.a) r12
            if (r11 >= r7) goto L19d
            r13 = r6[r11]
            r12.getClass()
            r12 = 929(0x3a1, float:1.302E-42)
            int r13 = 929 - r13
            int r13 = r13 % r12
            r10[r11] = r13
            int r11 = r11 + 1
            goto L188
        L19d:
            l.d r3 = new l.d
            r3.<init>(r12, r10)
            r7 = r5
            r5 = r1
            r1 = r7
            r10 = r8
            r7 = 0
            r12 = 929(0x3a1, float:1.302E-42)
            r8 = r3
            r3 = r17
            goto Ld9
        L1ae:
            z5.c r0 = z5.c.a()
            throw r0
        L1b3:
            r17 = r3
            r3 = r7
            r16 = 0
            int r5 = r8.q(r3)
            if (r5 == 0) goto L551
            int r5 = r4.b(r5)
            l.d r6 = r8.H(r5)
            l.d r1 = r1.H(r5)
            l.d[] r1 = new l.d[]{r6, r1}
            r5 = r1[r3]
            r1 = r1[r17]
            int r3 = r5.s()
            int[] r6 = new int[r3]
            r7 = r17
            r8 = 0
        L1db:
            r12 = 929(0x3a1, float:1.302E-42)
            if (r7 >= r12) goto L1f2
            if (r8 >= r3) goto L1f2
            int r9 = r5.n(r7)
            if (r9 != 0) goto L1ef
            int r9 = r4.b(r7)
            r6[r8] = r9
            int r8 = r8 + 1
        L1ef:
            int r7 = r7 + 1
            goto L1db
        L1f2:
            if (r8 != r3) goto L54c
            int r7 = r5.s()
            int[] r8 = new int[r7]
            r9 = r17
        L1fc:
            if (r9 > r7) goto L20d
            int r10 = r7 - r9
            int r11 = r5.q(r9)
            int r11 = r4.c(r9, r11)
            r8[r10] = r11
            int r9 = r9 + 1
            goto L1fc
        L20d:
            if (r7 == 0) goto L546
            r5 = r17
            if (r7 <= r5) goto L233
            r18 = 0
            r5 = r8[r18]
            if (r5 != 0) goto L233
            r5 = 1
        L21a:
            if (r5 >= r7) goto L223
            r9 = r8[r5]
            if (r9 != 0) goto L223
            int r5 = r5 + 1
            goto L21a
        L223:
            if (r5 != r7) goto L22b
            r9 = 0
            int[] r8 = new int[]{r9}
            goto L233
        L22b:
            r9 = 0
            int r7 = r7 - r5
            int[] r10 = new int[r7]
            java.lang.System.arraycopy(r8, r5, r10, r9, r7)
            r8 = r10
        L233:
            int[] r5 = new int[r3]
            r7 = 0
        L236:
            if (r7 >= r3) goto L285
            r9 = r6[r7]
            int r9 = r4.b(r9)
            int r10 = r1.n(r9)
            r12 = 929(0x3a1, float:1.302E-42)
            int r10 = 929 - r10
            int r10 = r10 % r12
            if (r9 != 0) goto L24f
            int r9 = r8.length
            r11 = 1
            int r9 = r9 - r11
            r9 = r8[r9]
            goto L278
        L24f:
            r11 = 1
            if (r9 != r11) goto L262
            int r9 = r8.length
            r11 = 0
            r12 = 0
        L255:
            if (r11 >= r9) goto L260
            r13 = r8[r11]
            int r12 = r4.a(r12, r13)
            int r11 = r11 + 1
            goto L255
        L260:
            r9 = r12
            goto L278
        L262:
            r18 = 0
            r11 = r8[r18]
            int r12 = r8.length
            r13 = 1
        L268:
            if (r13 >= r12) goto L277
            int r11 = r4.c(r9, r11)
            r14 = r8[r13]
            int r11 = r4.a(r11, r14)
            int r13 = r13 + 1
            goto L268
        L277:
            r9 = r11
        L278:
            int r9 = r4.b(r9)
            int r9 = r4.c(r10, r9)
            r5[r7] = r9
            int r7 = r7 + 1
            goto L236
        L285:
            r1 = 0
        L286:
            if (r1 >= r3) goto L2af
            int r7 = r0.length
            r17 = 1
            int r7 = r7 + (-1)
            r8 = r6[r1]
            if (r8 == 0) goto L2ab
            int[] r9 = r4.f5414b
            r8 = r9[r8]
            int r7 = r7 - r8
            if (r7 < 0) goto L2a6
            r8 = r0[r7]
            r9 = r5[r1]
            r12 = 929(0x3a1, float:1.302E-42)
            int r8 = r8 + r12
            int r8 = r8 - r9
            int r8 = r8 % r12
            r0[r7] = r8
            int r1 = r1 + 1
            goto L286
        L2a6:
            z5.c r0 = z5.c.a()
            throw r0
        L2ab:
            l9.i.a()
            return r16
        L2af:
            int r1 = r0.length
            r3 = 4
            if (r1 < r3) goto L541
            r18 = 0
            r1 = r0[r18]
            int r3 = r0.length
            if (r1 > r3) goto L53c
            if (r1 != 0) goto L2c9
            int r1 = r0.length
            if (r2 >= r1) goto L2c4
            int r1 = r0.length
            int r1 = r1 - r2
            r0[r18] = r1
            goto L2c9
        L2c4:
            z5.e r0 = z5.e.a()
            throw r0
        L2c9:
            java.lang.String r1 = java.lang.String.valueOf(r28)
            char[] r2 = s6.d.f5310a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r3 = r0.length
            r17 = 1
            int r3 = r3 << 1
            r2.<init>(r3)
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.ISO_8859_1
            r4 = r0[r17]
            r6.c r5 = new r6.c
            r5.<init>()
            r6 = 2
            r7 = r6
            r18 = 0
        L2e6:
            r8 = r0[r18]
            if (r7 >= r8) goto L523
            r9 = 913(0x391, float:1.28E-42)
            if (r4 == r9) goto L508
            r9 = 900(0x384, float:1.261E-42)
            switch(r4) {
                case 900: goto L501;
                case 901: goto L40c;
                case 902: goto L413;
                default: goto L2f3;
            }
        L2f3:
            switch(r4) {
                case 922: goto L40e;
                case 923: goto L40e;
                case 924: goto L40c;
                case 925: goto L407;
                case 926: goto L402;
                case 927: goto L3dc;
                case 928: goto L300;
                default: goto L2f6;
            }
        L2f6:
            int r7 = r7 + (-1)
            int r4 = s6.d.c(r0, r7, r2)
        L2fc:
            r28 = 0
            goto L512
        L300:
            int r4 = r7 + 2
            if (r4 > r8) goto L3d7
            int[] r4 = new int[r6]
            r8 = 0
        L307:
            if (r8 >= r6) goto L312
            r9 = r0[r7]
            r4[r8] = r9
            int r8 = r8 + 1
            int r7 = r7 + 1
            goto L307
        L312:
            java.lang.String r4 = s6.d.a(r4, r6)
            java.lang.Integer.parseInt(r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r4 = s6.d.c(r0, r7, r4)
            r7 = r0[r4]
            r8 = -1
            r9 = 923(0x39b, float:1.293E-42)
            if (r7 != r9) goto L32e
            int r7 = r4 + 1
        L32b:
            r18 = 0
            goto L330
        L32e:
            r7 = r8
            goto L32b
        L330:
            r10 = r0[r18]
            if (r4 >= r10) goto L3c6
            r10 = r0[r4]
            r11 = 922(0x39a, float:1.292E-42)
            if (r10 == r11) goto L3bf
            if (r10 != r9) goto L3ba
            int r10 = r4 + 1
            r10 = r0[r10]
            switch(r10) {
                case 0: goto L3ad;
                case 1: goto L399;
                case 2: goto L386;
                case 3: goto L37a;
                case 4: goto L36e;
                case 5: goto L35b;
                case 6: goto L348;
                default: goto L343;
            }
        L343:
            z5.e r0 = z5.e.a()
            throw r0
        L348:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.b(r0, r4, r10)
            java.lang.String r10 = r10.toString()
            java.lang.Integer.parseInt(r10)
            goto L32b
        L35b:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.b(r0, r4, r10)
            java.lang.String r10 = r10.toString()
            java.lang.Long.parseLong(r10)
            goto L32b
        L36e:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.c(r0, r4, r10)
            goto L32b
        L37a:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.c(r0, r4, r10)
            goto L32b
        L386:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.b(r0, r4, r10)
            java.lang.String r10 = r10.toString()
            java.lang.Long.parseLong(r10)
            goto L32b
        L399:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.b(r0, r4, r10)
            java.lang.String r10 = r10.toString()
            java.lang.Integer.parseInt(r10)
            goto L32b
        L3ad:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            int r4 = r4 + 2
            int r4 = s6.d.c(r0, r4, r10)
            goto L32b
        L3ba:
            z5.e r0 = z5.e.a()
            throw r0
        L3bf:
            int r4 = r4 + 1
            r11 = 1
            r5.f4991a = r11
            goto L32b
        L3c6:
            r11 = 1
            if (r7 == r8) goto L2fc
            int r8 = r4 - r7
            boolean r9 = r5.f4991a
            if (r9 == 0) goto L3d1
            int r8 = r8 + (-1)
        L3d1:
            int r8 = r8 + r7
            java.util.Arrays.copyOfRange(r0, r7, r8)
            goto L2fc
        L3d7:
            z5.e r0 = z5.e.a()
            throw r0
        L3dc:
            r11 = 1
            int r4 = r7 + 1
            r3 = r0[r7]
            java.util.HashMap r7 = f6.c.d
            if (r3 < 0) goto L3fd
            if (r3 >= r9) goto L3fd
            java.util.HashMap r7 = f6.c.d
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r3 = r7.get(r3)
            f6.c r3 = (f6.c) r3
            java.lang.String r3 = r3.name()
            java.nio.charset.Charset r3 = java.nio.charset.Charset.forName(r3)
            goto L2fc
        L3fd:
            z5.e r0 = z5.e.a()
            throw r0
        L402:
            r11 = 1
            int r4 = r7 + 2
            goto L2fc
        L407:
            r11 = 1
            int r4 = r7 + 1
            goto L2fc
        L40c:
            r11 = 1
            goto L41a
        L40e:
            z5.e r0 = z5.e.a()
            throw r0
        L413:
            r11 = 1
            int r4 = s6.d.b(r0, r7, r2)
            goto L2fc
        L41a:
            java.io.ByteArrayOutputStream r8 = new java.io.ByteArrayOutputStream
            r8.<init>()
            r10 = 901(0x385, float:1.263E-42)
            r12 = 928(0x3a0, float:1.3E-42)
            r13 = 900(0x384, double:4.447E-321)
            r15 = 6
            r19 = 0
            if (r4 == r10) goto L481
            r10 = 924(0x39c, float:1.295E-42)
            if (r4 == r10) goto L432
        L42e:
            r28 = 0
            goto L4f3
        L432:
            r10 = r7
            r21 = r19
            r4 = 0
            r7 = 0
        L437:
            r18 = 0
            r6 = r0[r18]
            if (r10 >= r6) goto L47f
            if (r4 != 0) goto L47f
            int r6 = r10 + 1
            r11 = r0[r10]
            if (r11 >= r9) goto L44e
            int r7 = r7 + 1
            long r21 = r21 * r13
            long r10 = (long) r11
            long r21 = r21 + r10
        L44c:
            r10 = r6
            goto L458
        L44e:
            if (r11 == r12) goto L457
            switch(r11) {
                case 900: goto L457;
                case 901: goto L457;
                case 902: goto L457;
                default: goto L453;
            }
        L453:
            switch(r11) {
                case 922: goto L457;
                case 923: goto L457;
                case 924: goto L457;
                default: goto L456;
            }
        L456:
            goto L44c
        L457:
            r4 = 1
        L458:
            int r6 = r7 % 5
            if (r6 != 0) goto L479
            if (r7 <= 0) goto L479
            r6 = 0
        L45f:
            if (r6 >= r15) goto L473
            int r7 = 5 - r6
            int r7 = r7 * 8
            r23 = r13
            long r13 = r21 >> r7
            int r7 = (int) r13
            byte r7 = (byte) r7
            r8.write(r7)
            int r6 = r6 + 1
            r13 = r23
            goto L45f
        L473:
            r23 = r13
            r21 = r19
            r7 = 0
            goto L47b
        L479:
            r23 = r13
        L47b:
            r13 = r23
            r11 = 1
            goto L437
        L47f:
            r7 = r10
            goto L42e
        L481:
            r23 = r13
            int[] r4 = new int[r15]
            int r6 = r7 + 1
            r7 = r0[r7]
            r11 = r7
            r13 = r19
            r28 = 0
            r18 = 0
            r7 = r6
            r6 = 0
        L492:
            r10 = r0[r28]
            if (r7 >= r10) goto L4db
            if (r18 != 0) goto L4db
            int r10 = r6 + 1
            r4[r6] = r11
            long r13 = r13 * r23
            r22 = r10
            long r9 = (long) r11
            long r13 = r13 + r9
            int r6 = r7 + 1
            r11 = r0[r7]
            if (r11 == r12) goto L4d4
            switch(r11) {
                case 900: goto L4d4;
                case 901: goto L4d4;
                case 902: goto L4d4;
                default: goto L4ab;
            }
        L4ab:
            switch(r11) {
                case 922: goto L4d4;
                case 923: goto L4d4;
                case 924: goto L4d4;
                default: goto L4ae;
            }
        L4ae:
            int r10 = r22 % 5
            if (r10 != 0) goto L4ce
            if (r22 <= 0) goto L4ce
            r7 = r28
        L4b6:
            if (r7 >= r15) goto L4c6
            int r9 = 5 - r7
            int r9 = r9 * 8
            long r9 = r13 >> r9
            int r9 = (int) r9
            byte r9 = (byte) r9
            r8.write(r9)
            int r7 = r7 + 1
            goto L4b6
        L4c6:
            r7 = r6
            r13 = r19
            r9 = 900(0x384, float:1.261E-42)
            r6 = r28
            goto L492
        L4ce:
            r7 = r6
            r6 = r22
            r9 = 900(0x384, float:1.261E-42)
            goto L492
        L4d4:
            r6 = r22
            r9 = 900(0x384, float:1.261E-42)
            r18 = 1
            goto L492
        L4db:
            if (r7 != r10) goto L4e6
            r9 = 900(0x384, float:1.261E-42)
            if (r11 >= r9) goto L4e6
            int r9 = r6 + 1
            r4[r6] = r11
            r6 = r9
        L4e6:
            r9 = r28
        L4e8:
            if (r9 >= r6) goto L4f3
            r10 = r4[r9]
            byte r10 = (byte) r10
            r8.write(r10)
            int r9 = r9 + 1
            goto L4e8
        L4f3:
            java.lang.String r4 = new java.lang.String
            byte[] r6 = r8.toByteArray()
            r4.<init>(r6, r3)
            r2.append(r4)
            r4 = r7
            goto L512
        L501:
            r28 = 0
            int r4 = s6.d.c(r0, r7, r2)
            goto L512
        L508:
            r28 = 0
            int r4 = r7 + 1
            r6 = r0[r7]
            char r6 = (char) r6
            r2.append(r6)
        L512:
            int r6 = r0.length
            if (r4 >= r6) goto L51e
            int r7 = r4 + 1
            r4 = r0[r4]
            r18 = r28
            r6 = 2
            goto L2e6
        L51e:
            z5.e r0 = z5.e.a()
            throw r0
        L523:
            int r0 = r2.length()
            if (r0 == 0) goto L537
            f6.d r0 = new f6.d
            java.lang.String r2 = r2.toString()
            r3 = r16
            r0.<init>(r3, r2, r3, r1)
            r0.f2264g = r5
            return r0
        L537:
            z5.e r0 = z5.e.a()
            throw r0
        L53c:
            z5.e r0 = z5.e.a()
            throw r0
        L541:
            z5.e r0 = z5.e.a()
            throw r0
        L546:
            r3 = r16
            l9.i.a()
            return r3
        L54c:
            z5.c r0 = z5.c.a()
            throw r0
        L551:
            z5.c r0 = z5.c.a()
            throw r0
        L556:
            r3 = 0
            l9.i.a()
            return r3
        L55b:
            r3 = 0
            l9.i.a()
            return r3
        L560:
            z5.c r0 = z5.c.a()
            throw r0
        L565:
            z5.e r0 = z5.e.a()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: s6.g.b(int[], int[], int):f6.d");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static a c(f6.b bVar, int i9, int i10, boolean z8, int i11, int i12, int i13, int i14) {
        int i15;
        a aVar;
        a aVar2;
        int i16 = i9;
        int i17 = z8 ? -1 : 1;
        boolean z9 = z8;
        int i18 = i11;
        loop0: for (int i19 = 0; i19 < 2; i19++) {
            while (true) {
                if (!z9) {
                    if (i18 >= i10) {
                        break;
                    }
                    if (z9 == bVar.b(i18, i12)) {
                        break;
                        break;
                    }
                    if (Math.abs(i11 - i18) > 2) {
                        i18 = i11;
                        break loop0;
                    }
                    i18 += i17;
                } else {
                    if (i18 < i16) {
                        break;
                    }
                    if (z9 == bVar.b(i18, i12)) {
                        break;
                    }
                    if (Math.abs(i11 - i18) > 2) {
                        i18 = i11;
                        break loop0;
                    }
                    i18 += i17;
                }
            }
            i17 = -i17;
            z9 = !z9;
        }
        int[] iArr = new int[8];
        int i20 = z8 ? 1 : -1;
        boolean z10 = z8;
        int i21 = 0;
        int i22 = i18;
        while (true) {
            if (!z8) {
                if (i22 < i16) {
                    break;
                }
                if (i21 < 8) {
                    break;
                    break;
                }
                if (bVar.b(i22, i12) == z10) {
                    iArr[i21] = iArr[i21] + 1;
                    i22 += i20;
                } else {
                    i21++;
                    z10 = !z10;
                }
            } else {
                if (i22 >= i10) {
                    break;
                }
                if (i21 < 8) {
                    break;
                }
                if (bVar.b(i22, i12) == z10) {
                    iArr[i21] = iArr[i21] + 1;
                    i22 += i20;
                } else {
                    i21++;
                    z10 = !z10;
                }
            }
        }
        if (i21 != 8) {
            if (z8) {
                i16 = i10;
            }
            if (i22 != i16 || i21 != 7) {
                iArr = null;
            }
        }
        if (iArr != null) {
            int iX = a.a.x(iArr);
            if (z8) {
                i15 = i18 + iX;
            } else {
                for (int i23 = 0; i23 < iArr.length / 2; i23++) {
                    int i24 = iArr[i23];
                    iArr[i23] = iArr[(iArr.length - 1) - i23];
                    iArr[(iArr.length - 1) - i23] = i24;
                }
                int i25 = i18;
                i18 -= iX;
                i15 = i25;
            }
            if (i13 - 2 <= iX && iX <= i14 + 2) {
                float[][] fArr = f.f5312a;
                float fX = a.a.x(iArr);
                int[] iArr2 = new int[8];
                int i26 = 0;
                int i27 = 0;
                for (int i28 = 0; i28 < 17; i28++) {
                    float f8 = ((i28 * fX) / 17.0f) + (fX / 34.0f);
                    int i29 = iArr[i27] + i26;
                    if (i29 <= f8) {
                        i27++;
                        i26 = i29;
                    }
                    iArr2[i27] = iArr2[i27] + 1;
                }
                long j9 = 0;
                for (int i30 = 0; i30 < 8; i30++) {
                    for (int i31 = 0; i31 < iArr2[i30]; i31++) {
                        j9 = (j9 << 1) | ((long) (i30 % 2 == 0 ? 1 : 0));
                    }
                }
                int i32 = (int) j9;
                int i33 = 262143;
                int[] iArr3 = r6.a.f4989b;
                int iBinarySearch = Arrays.binarySearch(iArr3, i32 & 262143);
                int[] iArr4 = r6.a.c;
                if ((iBinarySearch < 0 ? -1 : (iArr4[iBinarySearch] - 1) % 929) == -1) {
                    i32 = -1;
                }
                if (i32 == -1) {
                    int iX2 = a.a.x(iArr);
                    float[] fArr2 = new float[8];
                    if (iX2 > 1) {
                        for (int i34 = 0; i34 < 8; i34++) {
                            fArr2[i34] = iArr[i34] / iX2;
                        }
                    }
                    float f9 = Float.MAX_VALUE;
                    i32 = -1;
                    int i35 = 0;
                    while (true) {
                        float[][] fArr3 = f.f5312a;
                        if (i35 >= fArr3.length) {
                            break;
                        }
                        float[] fArr4 = fArr3[i35];
                        float f10 = 0.0f;
                        int i36 = i33;
                        for (int i37 = 0; i37 < 8; i37++) {
                            float f11 = fArr4[i37] - fArr2[i37];
                            f10 = (f11 * f11) + f10;
                            if (f10 >= f9) {
                                break;
                            }
                        }
                        if (f10 < f9) {
                            i32 = iArr3[i35];
                            f9 = f10;
                        }
                        i35++;
                        i33 = i36;
                    }
                }
                int iBinarySearch2 = Arrays.binarySearch(iArr3, i32 & i33);
                int i38 = iBinarySearch2 < 0 ? -1 : (iArr4[iBinarySearch2] - 1) % 929;
                if (i38 == -1) {
                    return null;
                }
                int[] iArr5 = new int[8];
                int i39 = 0;
                int i40 = 7;
                while (true) {
                    int i41 = i32 & 1;
                    if (i41 != i39) {
                        i40--;
                        if (i40 < 0) {
                            return new a(i18, i15, ((((iArr5[0] - iArr5[2]) + iArr5[4]) - iArr5[6]) + 9) % 9, i38, 1);
                        }
                        aVar2 = aVar;
                        i39 = i41;
                    } else {
                        aVar2 = aVar;
                    }
                    iArr5[i40] = iArr5[i40] + 1;
                    i32 >>= 1;
                    aVar = aVar2;
                    i38 = i38;
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static e d(f6.b bVar, c cVar, o oVar, boolean z8, int i9, int i10) {
        e eVar = new e(cVar, z8);
        int i11 = 0;
        while (i11 < 2) {
            int i12 = i11 == 0 ? 1 : -1;
            int i13 = (int) oVar.f6339a;
            int i14 = (int) oVar.f6340b;
            while (i14 <= cVar.f5309i && i14 >= cVar.f5308h) {
                a aVarC = c(bVar, 0, bVar.f2258b, z8, i13, i14, i9, i10);
                if (aVarC != null) {
                    ((a[]) eVar.d)[eVar.x(i14)] = aVarC;
                    i13 = z8 ? aVarC.f5301b : aVarC.c;
                }
                i14 += i12;
                z8 = z8;
            }
            i11++;
        }
        return eVar;
    }
}
