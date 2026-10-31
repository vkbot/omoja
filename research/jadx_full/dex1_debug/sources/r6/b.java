package r6;

import b7.p;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Map;
import l.d;
import s6.g;
import z5.e;
import z5.i;
import z5.k;
import z5.m;
import z5.n;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m[] f4990a = new m[0];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(o oVar, o oVar2) {
        if (oVar == null || oVar2 == null) {
            return 0;
        }
        return (int) Math.abs(oVar.f6339a - oVar2.f6339a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(o oVar, o oVar2) {
        if (oVar == null || oVar2 == null) {
            return Integer.MAX_VALUE;
        }
        return (int) Math.abs(oVar.f6339a - oVar2.f6339a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:383:0x033f */
    /* JADX WARN: Code duplicated, block: B:100:0x025c  */
    /* JADX WARN: Code duplicated, block: B:105:0x026a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x026c  */
    /* JADX WARN: Code duplicated, block: B:107:0x026f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0272  */
    /* JADX WARN: Code duplicated, block: B:126:0x02b3 A[EDGE_INSN: B:126:0x02b3->B:128:0x02b8 BREAK  A[LOOP:5: B:109:0x0276->B:123:0x02a8]] */
    /* JADX WARN: Code duplicated, block: B:127:0x02b6 A[EDGE_INSN: B:127:0x02b6->B:128:0x02b8 BREAK  A[LOOP:5: B:109:0x0276->B:123:0x02a8]] */
    /* JADX WARN: Code duplicated, block: B:131:0x02be  */
    /* JADX WARN: Code duplicated, block: B:134:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:137:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:138:0x0304  */
    /* JADX WARN: Code duplicated, block: B:139:0x0307  */
    /* JADX WARN: Code duplicated, block: B:21:0x0135  */
    /* JADX WARN: Code duplicated, block: B:36:0x015e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0240 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0242  */
    /* JADX WARN: Code duplicated, block: B:94:0x0246  */
    /* JADX WARN: Code duplicated, block: B:95:0x024a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0252 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0254  */
    /* JADX WARN: Code duplicated, block: B:99:0x0258  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v48 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r10v51, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v47 */
    /* JADX WARN: Type inference failed for: r13v54 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v19 */
    @Override // z5.k
    public final m a(z5.b bVar, Map map) throws z5.c, e, i {
        f6.b bVar2;
        m mVar;
        int i9;
        int i10;
        int i11;
        int i12;
        s6.c cVar;
        f6.b bVar3;
        s6.e eVar;
        s6.a aVarS;
        p pVar;
        s6.a aVarS2;
        int i13;
        d[] dVarArr;
        int i14;
        s6.a[] aVarArr;
        f6.b bVar4;
        f6.b bVar5;
        int i15;
        s6.a[] aVarArr2;
        int i16;
        int i17;
        int i18;
        f6.d dVarB;
        int i19;
        d dVar;
        s6.a aVar;
        int i20;
        int i21;
        int i22;
        ?? r10;
        s6.c cVar2;
        d[] dVarArr2;
        int i23;
        int i24;
        d eVar2;
        int i25;
        s6.a aVar2;
        s6.a aVarP;
        int i26;
        int i27;
        int i28;
        s6.c cVar3;
        int i29;
        d[] dVarArr3;
        int i30;
        int i31;
        s6.c cVar4;
        int i32;
        s6.a aVarC;
        ArrayList arrayList = new ArrayList();
        f6.b bVarA = bVar.a();
        ArrayList arrayListA = u6.a.a(bVarA);
        int i33 = 0;
        char c = 2;
        int i34 = 1;
        if (arrayListA.isEmpty()) {
            int i35 = bVarA.f2258b;
            int i36 = bVarA.c;
            f6.b bVar6 = new f6.b(i35, i36, bVarA.d, (int[]) bVarA.e.clone());
            f6.a aVar3 = new f6.a(i35);
            f6.a aVar4 = new f6.a(i35);
            int i37 = (i36 + 1) / 2;
            for (int i38 = 0; i38 < i37; i38++) {
                aVar3 = bVar6.d(aVar3, i38);
                int i39 = (i36 - 1) - i38;
                aVar4 = bVar6.d(aVar4, i39);
                aVar3.i();
                aVar4.i();
                int[] iArr = aVar4.f2257b;
                int i40 = bVar6.d;
                int[] iArr2 = bVar6.e;
                System.arraycopy(iArr, 0, iArr2, i38 * i40, i40);
                System.arraycopy(aVar3.f2257b, 0, iArr2, i39 * i40, i40);
            }
            bVar2 = bVar6;
            arrayListA = u6.a.a(bVar6);
        } else {
            bVar2 = bVarA;
        }
        int size = arrayListA.size();
        int i41 = 0;
        while (i41 < size) {
            Object obj = arrayListA.get(i41);
            int i42 = i41 + 1;
            o[] oVarArr = (o[]) obj;
            o oVar = oVarArr[4];
            o oVar2 = oVarArr[5];
            o oVar3 = oVarArr[6];
            o oVar4 = oVarArr[7];
            int i43 = i33;
            int iMin = Math.min(Math.min(c(oVarArr[i33], oVar), (c(oVarArr[6], oVarArr[c]) * 17) / 18), Math.min(c(oVarArr[i34], oVarArr[5]), (c(oVarArr[7], oVarArr[3]) * 17) / 18));
            int i44 = i34;
            int iMax = Math.max(Math.max(b(oVarArr[i43], oVarArr[4]), (b(oVarArr[6], oVarArr[c]) * 17) / 18), Math.max(b(oVarArr[i34], oVarArr[5]), (b(oVarArr[7], oVarArr[3]) * 17) / 18));
            n.p pVar2 = g.f5313a;
            f6.b bVar7 = bVar2;
            s6.c cVar5 = new s6.c(bVar7, oVar, oVar2, oVar3, oVar4);
            int i45 = i44;
            s6.e eVarD = null;
            s6.e eVarD2 = null;
            while (true) {
                int i46 = cVar5.f5309i;
                i9 = cVar5.f5308h;
                if (oVar != null) {
                    i10 = iMin;
                    i11 = iMax;
                    i12 = i46;
                    f6.b bVar8 = bVar7;
                    cVar = cVar5;
                    bVar3 = bVar8;
                    eVarD = g.d(bVar3, cVar, oVar, true, i10, i11);
                } else {
                    i10 = iMin;
                    i11 = iMax;
                    i12 = i46;
                    f6.b bVar9 = bVar7;
                    cVar = cVar5;
                    bVar3 = bVar9;
                }
                o oVar5 = oVar;
                eVar = eVarD;
                if (oVar3 != null) {
                    eVarD2 = g.d(bVar3, cVar, oVar3, false, i10, i11);
                }
                if (eVar == null && eVarD2 == null) {
                    size = size;
                    pVar = null;
                } else {
                    if (eVar == null || (aVarS = eVar.S()) == null) {
                        if (eVarD2 == null) {
                            aVarS = null;
                        } else {
                            aVarS = eVarD2.S();
                        }
                    } else if (eVarD2 != null && (aVarS2 = eVarD2.S()) != null && aVarS.f5301b != aVarS2.f5301b && aVarS.c != aVarS2.c && aVarS.f5302f != aVarS2.f5302f) {
                        aVarS = null;
                    }
                    if (aVarS == null) {
                        size = size;
                        pVar = null;
                    } else {
                        s6.c cVarA = g.a(eVar);
                        s6.c cVarA2 = g.a(eVarD2);
                        if (cVarA == null) {
                            cVarA = cVarA2;
                        } else if (cVarA2 != null) {
                            cVarA = new s6.c(cVarA.f5304a, cVarA.f5305b, cVarA.c, cVarA2.d, cVarA2.e);
                        }
                        pVar = new p(aVarS, cVarA);
                    }
                }
                if (pVar == null) {
                    throw i.d;
                }
                i13 = pVar.f385b;
                dVarArr = (d[]) pVar.d;
                s6.c cVar6 = (s6.c) pVar.e;
                if (i45 == 0 || cVar6 == null || (cVar6.f5308h >= i9 && cVar6.f5309i <= i12)) {
                    break;
                }
                i45 = i43;
                bVar7 = bVar3;
                cVar5 = cVar6;
                iMin = i10;
                iMax = i11;
                oVar = oVar5;
                eVarD = eVar;
                size = size;
            }
            pVar.e = cVar;
            int i47 = i13 + 1;
            dVarArr[i43] = eVar;
            dVarArr[i47] = eVarD2;
            int iMax2 = i11;
            int i48 = i10;
            int i49 = i44;
            ?? r13 = eVar != null ? i44 : i43;
            while (i49 <= i47) {
                int i50 = r13 != 0 ? i49 : i47 - i49;
                if (dVarArr[i50] == null) {
                    if (i50 == 0 || i50 == i47) {
                        i24 = i50;
                        eVar2 = new s6.e(cVar, i24 == 0 ? i44 : i43);
                    } else {
                        i24 = i50;
                        eVar2 = new d(cVar);
                    }
                    dVarArr[i24] = eVar2;
                    i20 = i9;
                    int i51 = i47;
                    r10 = r13;
                    int iMin2 = i48;
                    int i52 = -1;
                    int i53 = i20;
                    while (i53 <= i12) {
                        int i54 = r10 != 0 ? i44 : -1;
                        int i55 = i24 - i54;
                        if (i55 >= 0) {
                            i25 = i12;
                            if (i55 <= i13 + 1) {
                                d dVar2 = dVarArr[i55];
                                aVar2 = ((s6.a[]) dVar2.d)[dVar2.x(i53)];
                            }
                            if (aVar2 != null) {
                                aVarP = dVarArr[i24].p(i53);
                                if (aVarP != null) {
                                    if (i55 >= 0 && i55 <= i13 + 1) {
                                        aVarP = dVarArr[i55].p(i53);
                                    }
                                    if (aVarP != null) {
                                        i26 = i43;
                                        i27 = i24;
                                        while (true) {
                                            i28 = i27 - i54;
                                            if (i28 >= 0 || i28 > i13 + 1) {
                                                cVar3 = (s6.c) pVar.e;
                                                if (r10 != 0) {
                                                    i29 = cVar3.f5307g;
                                                    break;
                                                }
                                                i29 = cVar3.f5306f;
                                                break;
                                            }
                                            s6.a[] aVarArr3 = (s6.a[]) dVarArr[i28].d;
                                            int length = aVarArr3.length;
                                            int i56 = i26;
                                            int i57 = i43;
                                            while (i57 < length) {
                                                int i58 = length;
                                                s6.a aVar5 = aVarArr3[i57];
                                                if (aVar5 != null) {
                                                    int i59 = aVar5.f5301b;
                                                    int i60 = aVar5.c;
                                                    i29 = ((i60 - i59) * i54 * i56) + (r10 != 0 ? i60 : i59);
                                                    break;
                                                }
                                                i57++;
                                                length = i58;
                                            }
                                            i26 = i56 + 1;
                                            i27 = i28;
                                        }
                                    } else if (r10 != 0) {
                                        i29 = aVarP.c;
                                    } else {
                                        i29 = aVarP.f5301b;
                                    }
                                } else if (r10 != 0) {
                                    i29 = aVarP.f5301b;
                                } else {
                                    i29 = aVarP.c;
                                }
                            } else if (r10 != 0) {
                                i29 = aVar2.c;
                            } else {
                                i29 = aVar2.f5301b;
                            }
                            if (i29 >= 0 || i29 > cVar.f5307g) {
                                if (i52 != -1) {
                                    i32 = i52;
                                } else {
                                    dVarArr3 = dVarArr;
                                    i30 = i49;
                                    i31 = i51;
                                    bVar3 = bVar3;
                                    cVar4 = cVar;
                                }
                                i52 = i52;
                                i53++;
                                dVarArr = dVarArr3;
                                cVar = cVar4;
                                i49 = i30;
                                i51 = i31;
                                i12 = i25;
                            } else {
                                i32 = i29;
                            }
                            i30 = i49;
                            i31 = i51;
                            dVarArr3 = dVarArr;
                            cVar4 = cVar;
                            bVar3 = bVar3;
                            aVarC = g.c(bVar3, cVar.f5306f, cVar.f5307g, r10, i32, i53, iMin2, iMax2);
                            if (aVarC != null) {
                                int i61 = aVarC.f5301b;
                                int i62 = aVarC.c;
                                ((s6.a[]) eVar2.d)[eVar2.x(i53)] = aVarC;
                                iMin2 = Math.min(iMin2, i62 - i61);
                                iMax2 = Math.max(iMax2, i62 - i61);
                                i52 = i32;
                            } else {
                                i52 = i52;
                            }
                            i53++;
                            dVarArr = dVarArr3;
                            cVar = cVar4;
                            i49 = i30;
                            i51 = i31;
                            i12 = i25;
                        } else {
                            i25 = i12;
                        }
                        aVar2 = null;
                        if (aVar2 != null) {
                            aVarP = dVarArr[i24].p(i53);
                            if (aVarP != null) {
                                if (i55 >= 0) {
                                    aVarP = dVarArr[i55].p(i53);
                                }
                                if (aVarP != null) {
                                    i26 = i43;
                                    i27 = i24;
                                    while (true) {
                                        i28 = i27 - i54;
                                        if (i28 >= 0) {
                                        }
                                        cVar3 = (s6.c) pVar.e;
                                        if (r10 != 0) {
                                            i29 = cVar3.f5307g;
                                            break;
                                        }
                                        i29 = cVar3.f5306f;
                                        break;
                                        i26 = i56 + 1;
                                        i27 = i28;
                                    }
                                } else if (r10 != 0) {
                                    i29 = aVarP.c;
                                } else {
                                    i29 = aVarP.f5301b;
                                }
                            } else if (r10 != 0) {
                                i29 = aVarP.f5301b;
                            } else {
                                i29 = aVarP.c;
                            }
                        } else if (r10 != 0) {
                            i29 = aVar2.c;
                        } else {
                            i29 = aVar2.f5301b;
                        }
                        if (i29 >= 0) {
                            if (i52 != -1) {
                                i32 = i52;
                                i30 = i49;
                                i31 = i51;
                                dVarArr3 = dVarArr;
                                cVar4 = cVar;
                                bVar3 = bVar3;
                                aVarC = g.c(bVar3, cVar.f5306f, cVar.f5307g, r10, i32, i53, iMin2, iMax2);
                                if (aVarC != null) {
                                    int i63 = aVarC.f5301b;
                                    int i64 = aVarC.c;
                                    ((s6.a[]) eVar2.d)[eVar2.x(i53)] = aVarC;
                                    iMin2 = Math.min(iMin2, i64 - i63);
                                    iMax2 = Math.max(iMax2, i64 - i63);
                                    i52 = i32;
                                }
                                i53++;
                                dVarArr = dVarArr3;
                                cVar = cVar4;
                                i49 = i30;
                                i51 = i31;
                                i12 = i25;
                            } else {
                                dVarArr3 = dVarArr;
                                i30 = i49;
                                i31 = i51;
                                bVar3 = bVar3;
                                cVar4 = cVar;
                            }
                        } else if (i52 != -1) {
                            i32 = i52;
                            i30 = i49;
                            i31 = i51;
                            dVarArr3 = dVarArr;
                            cVar4 = cVar;
                            bVar3 = bVar3;
                            aVarC = g.c(bVar3, cVar.f5306f, cVar.f5307g, r10, i32, i53, iMin2, iMax2);
                            if (aVarC != null) {
                                int i65 = aVarC.f5301b;
                                int i66 = aVarC.c;
                                ((s6.a[]) eVar2.d)[eVar2.x(i53)] = aVarC;
                                iMin2 = Math.min(iMin2, i66 - i65);
                                iMax2 = Math.max(iMax2, i66 - i65);
                                i52 = i32;
                            }
                            i53++;
                            dVarArr = dVarArr3;
                            cVar = cVar4;
                            i49 = i30;
                            i51 = i31;
                            i12 = i25;
                        } else {
                            dVarArr3 = dVarArr;
                            i30 = i49;
                            i31 = i51;
                            bVar3 = bVar3;
                            cVar4 = cVar;
                        }
                        i52 = i52;
                        i53++;
                        dVarArr = dVarArr3;
                        cVar = cVar4;
                        i49 = i30;
                        i51 = i31;
                        i12 = i25;
                    }
                    i21 = i12;
                    i22 = i51;
                    i48 = iMin2;
                    dVarArr2 = dVarArr;
                    i23 = i49;
                    cVar2 = cVar;
                } else {
                    i42 = i42;
                    i20 = i9;
                    i21 = i12;
                    i22 = i47;
                    r10 = r13;
                    cVar2 = cVar;
                    dVarArr2 = dVarArr;
                    i23 = i49;
                }
                i49 = i23 + 1;
                dVarArr = dVarArr2;
                r13 = r10;
                arrayListA = arrayListA;
                i42 = i42;
                cVar = cVar2;
                i9 = i20;
                i47 = i22;
                i12 = i21;
            }
            ArrayList arrayList2 = arrayListA;
            int i67 = i42;
            d[] dVarArr4 = dVarArr;
            int i68 = i47;
            byte[] bArr = null;
            s6.a aVar6 = (s6.a) pVar.c;
            int i69 = aVar6.f5302f;
            int[] iArr3 = new int[2];
            iArr3[i44] = i13 + 2;
            iArr3[i43] = i69;
            s6.b[][] bVarArr = (s6.b[][]) Array.newInstance((Class<?>) s6.b.class, iArr3);
            for (int i70 = i43; i70 < bVarArr.length; i70++) {
                int i71 = i43;
                while (true) {
                    s6.b[] bVarArr2 = bVarArr[i70];
                    if (i71 < bVarArr2.length) {
                        bVarArr2[i71] = new s6.b();
                        i71++;
                    }
                }
            }
            pVar.a(dVarArr4[i43]);
            pVar.a(dVarArr4[i68]);
            int i72 = 928;
            while (true) {
                d dVar3 = dVarArr4[i43];
                if (dVar3 != null && (dVar = dVarArr4[i68]) != null) {
                    s6.a[] aVarArr4 = (s6.a[]) dVar3.d;
                    s6.a[] aVarArr5 = (s6.a[]) dVar.d;
                    for (int i73 = i43; i73 < aVarArr4.length; i73++) {
                        s6.a aVar7 = aVarArr4[i73];
                        if (aVar7 != null && (aVar = aVarArr5[i73]) != null && aVar7.f5302f == aVar.f5302f) {
                            for (int i74 = i44; i74 <= i13; i74++) {
                                s6.a aVar8 = ((s6.a[]) dVarArr4[i74].d)[i73];
                                if (aVar8 != null) {
                                    int i75 = aVarArr4[i73].f5302f;
                                    aVar8.f5302f = i75;
                                    if (!aVar8.a(i75)) {
                                        ((s6.a[]) dVarArr4[i74].d)[i73] = null;
                                    }
                                }
                            }
                        }
                    }
                }
                d dVar4 = dVarArr4[i43];
                if (dVar4 == null) {
                    i14 = i43;
                } else {
                    s6.a[] aVarArr6 = (s6.a[]) dVar4.d;
                    int i76 = i43;
                    i14 = i76;
                    while (i76 < aVarArr6.length) {
                        s6.a aVar9 = aVarArr6[i76];
                        if (aVar9 != null) {
                            int i77 = aVar9.f5302f;
                            int i78 = i43;
                            int i79 = i14;
                            int i80 = i44;
                            while (true) {
                                aVarArr = aVarArr6;
                                if (i80 >= i68 || i78 >= 2) {
                                    break;
                                }
                                s6.a aVar10 = ((s6.a[]) dVarArr4[i80].d)[i76];
                                f6.b bVar10 = bVar3;
                                if (aVar10 != null) {
                                    if (!aVar10.a(aVar10.f5302f)) {
                                        if (aVar10.a(i77)) {
                                            aVar10.f5302f = i77;
                                            i78 = i43;
                                        } else {
                                            i78++;
                                        }
                                    }
                                    if (!aVar10.a(aVar10.f5302f)) {
                                        i79++;
                                    }
                                }
                                i80++;
                                aVarArr6 = aVarArr;
                                bVar3 = bVar10;
                            }
                            bVar4 = bVar3;
                            i14 = i79;
                        } else {
                            aVarArr = aVarArr6;
                            bVar4 = bVar3;
                        }
                        i76++;
                        aVarArr6 = aVarArr;
                        bVar3 = bVar4;
                    }
                }
                bVar5 = bVar3;
                d dVar5 = dVarArr4[i68];
                if (dVar5 == null) {
                    i15 = i43;
                } else {
                    s6.a[] aVarArr7 = (s6.a[]) dVar5.d;
                    int i81 = i43;
                    i15 = i81;
                    while (i81 < aVarArr7.length) {
                        s6.a aVar11 = aVarArr7[i81];
                        if (aVar11 != null) {
                            int i82 = aVar11.f5302f;
                            int i83 = i43;
                            int i84 = i15;
                            int i85 = i68;
                            while (true) {
                                aVarArr2 = aVarArr7;
                                if (i85 <= 0 || i83 >= 2) {
                                    break;
                                }
                                s6.a aVar12 = ((s6.a[]) dVarArr4[i85].d)[i81];
                                int i86 = i81;
                                if (aVar12 != null) {
                                    if (!aVar12.a(aVar12.f5302f)) {
                                        if (aVar12.a(i82)) {
                                            aVar12.f5302f = i82;
                                            i83 = i43;
                                        } else {
                                            i83++;
                                        }
                                    }
                                    if (!aVar12.a(aVar12.f5302f)) {
                                        i84++;
                                    }
                                }
                                i85--;
                                aVarArr7 = aVarArr2;
                                i81 = i86;
                            }
                            i16 = i81;
                            i15 = i84;
                        } else {
                            aVarArr2 = aVarArr7;
                            i16 = i81;
                        }
                        i81 = i16 + 1;
                        aVarArr7 = aVarArr2;
                    }
                }
                int i87 = i14 + i15;
                if (i87 == 0) {
                    i87 = i43;
                } else {
                    int i88 = i44;
                    while (i88 < i68) {
                        s6.a[] aVarArr8 = (s6.a[]) dVarArr4[i88].d;
                        int i89 = i43;
                        while (i89 < aVarArr8.length) {
                            s6.a aVar13 = aVarArr8[i89];
                            if (aVar13 == null || aVar13.a(aVar13.f5302f)) {
                                i17 = i88;
                                i18 = i68;
                            } else {
                                s6.a aVar14 = aVarArr8[i89];
                                s6.a[] aVarArr9 = (s6.a[]) dVarArr4[i88 - 1].d;
                                d dVar6 = dVarArr4[i88 + 1];
                                s6.a[] aVarArr10 = dVar6 != null ? (s6.a[]) dVar6.d : aVarArr9;
                                i17 = i88;
                                i18 = i68;
                                s6.a[] aVarArr11 = new s6.a[14];
                                aVarArr11[2] = aVarArr9[i89];
                                aVarArr11[3] = aVarArr10[i89];
                                if (i89 > 0) {
                                    int i90 = i89 - 1;
                                    aVarArr11[i43] = aVarArr8[i90];
                                    aVarArr11[4] = aVarArr9[i90];
                                    aVarArr11[5] = aVarArr10[i90];
                                }
                                if (i89 > i44) {
                                    int i91 = i89 - 2;
                                    aVarArr11[8] = aVarArr8[i91];
                                    aVarArr11[10] = aVarArr9[i91];
                                    aVarArr11[11] = aVarArr10[i91];
                                }
                                if (i89 < aVarArr8.length - 1) {
                                    int i92 = i89 + 1;
                                    aVarArr11[1] = aVarArr8[i92];
                                    aVarArr11[6] = aVarArr9[i92];
                                    aVarArr11[7] = aVarArr10[i92];
                                }
                                if (i89 < aVarArr8.length - 2) {
                                    int i93 = i89 + 2;
                                    aVarArr11[9] = aVarArr8[i93];
                                    aVarArr11[12] = aVarArr9[i93];
                                    aVarArr11[13] = aVarArr10[i93];
                                }
                                for (int i94 = i43; i94 < 14; i94++) {
                                    s6.a aVar15 = aVarArr11[i94];
                                    if (aVar15 != null && aVar15.a(aVar15.f5302f)) {
                                        if (aVar15.d == aVar14.d) {
                                            aVar14.f5302f = aVar15.f5302f;
                                            break;
                                        }
                                    }
                                }
                            }
                            i89++;
                            i88 = i17;
                            i68 = i18;
                            i44 = 1;
                        }
                        i88++;
                        i44 = 1;
                    }
                }
                int i95 = i68;
                if (i87 <= 0 || i87 >= i72) {
                    break;
                }
                i72 = i87;
                bVar3 = bVar5;
                i68 = i95;
                i44 = 1;
            }
            int length2 = dVarArr4.length;
            int i96 = i43;
            int i97 = i96;
            while (i96 < length2) {
                d dVar7 = dVarArr4[i96];
                if (dVar7 != null) {
                    s6.a[] aVarArr12 = (s6.a[]) dVar7.d;
                    int length3 = aVarArr12.length;
                    for (int i98 = i43; i98 < length3; i98++) {
                        s6.a aVar16 = aVarArr12[i98];
                        if (aVar16 != null && (i19 = aVar16.f5302f) >= 0 && i19 < bVarArr.length) {
                            bVarArr[i19][i97].b(aVar16.e);
                        }
                    }
                }
                i97++;
                i96++;
            }
            s6.b bVar11 = bVarArr[i43][1];
            int[] iArrA = bVar11.a();
            int i99 = aVar6.c;
            int i100 = i13 * i69;
            int i101 = i100 - (2 << i99);
            if (iArrA.length == 0) {
                if (i101 <= 0 || i101 > 928) {
                    throw i.d;
                }
                bVar11.b(i101);
            } else if (iArrA[i43] != i101 && i101 > 0 && i101 <= 928) {
                bVar11.b(i101);
            }
            ArrayList arrayList3 = new ArrayList();
            int[] iArr4 = new int[i100];
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            for (int i102 = i43; i102 < i69; i102++) {
                int i103 = i43;
                while (i103 < i13) {
                    int i104 = i103 + 1;
                    int[] iArrA2 = bVarArr[i102][i104].a();
                    int i105 = (i102 * i13) + i103;
                    if (iArrA2.length == 0) {
                        arrayList3.add(Integer.valueOf(i105));
                    } else if (iArrA2.length == 1) {
                        iArr4[i105] = iArrA2[i43];
                    } else {
                        arrayList5.add(Integer.valueOf(i105));
                        arrayList4.add(iArrA2);
                    }
                    i103 = i104;
                }
            }
            int size2 = arrayList4.size();
            int[][] iArr5 = new int[size2][];
            for (int i106 = i43; i106 < size2; i106++) {
                iArr5[i106] = (int[]) arrayList4.get(i106);
            }
            int[] iArrA3 = a.a(arrayList3);
            int[] iArrA4 = a.a(arrayList5);
            int length4 = iArrA4.length;
            int[] iArr6 = new int[length4];
            int i107 = 100;
            while (true) {
                int i108 = i107 - 1;
                if (i107 <= 0) {
                    throw z5.c.a();
                }
                for (int i109 = i43; i109 < length4; i109++) {
                    iArr4[iArrA4[i109]] = iArr5[i109][iArr6[i109]];
                }
                try {
                    dVarB = g.b(iArr4, iArrA3, i99);
                } catch (z5.c unused) {
                    byte[] bArr2 = bArr;
                    if (length4 == 0) {
                        throw z5.c.a();
                    }
                    for (int i110 = i43; i110 < length4; i110++) {
                        int i111 = iArr6[i110];
                        if (i111 < iArr5[i110].length - 1) {
                            iArr6[i110] = i111 + 1;
                            break;
                        }
                        iArr6[i110] = i43;
                        if (i110 == length4 - 1) {
                            throw z5.c.a();
                        }
                    }
                    bArr = bArr2;
                    i107 = i108;
                }
            }
            m mVar2 = new m(dVarB.f2261a, bArr, oVarArr, z5.a.f6306l);
            mVar2.b(n.d, (String) dVarB.e);
            c cVar7 = (c) dVarB.f2264g;
            if (cVar7 != null) {
                mVar2.b(n.f6335i, cVar7);
            }
            arrayList.add(mVar2);
            i33 = i43;
            arrayListA = arrayList2;
            i41 = i67;
            bVar2 = bVar5;
            c = 2;
            size = size;
            i34 = 1;
        }
        int i112 = i33;
        m[] mVarArr = (m[]) arrayList.toArray(f4990a);
        if (mVarArr.length == 0 || (mVar = mVarArr[i112]) == null) {
            throw i.d;
        }
        return mVar;
    }

    @Override // z5.k
    public final void reset() {
    }
}
