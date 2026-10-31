package j6;

import a5.h;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import com.bumptech.glide.g;
import com.bumptech.glide.manager.s;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.UByte;
import l9.i;
import w6.f;
import z5.e;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r5.c f3091a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(int i9) {
        switch (i9) {
            case 1:
                this.f3091a = new r5.c(19, h6.a.f2481o);
                break;
            case 2:
                this.f3091a = new r5.c(19, h6.a.f2478l);
                break;
            default:
                this.f3091a = new r5.c(19, h6.a.f2479m);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(int i9, int i10, int i11, int i12, byte[] bArr) throws z5.c {
        int i13 = i10 + i11;
        int i14 = i12 == 0 ? 1 : 2;
        int[] iArr = new int[i13 / i14];
        for (int i15 = 0; i15 < i13; i15++) {
            if (i12 == 0 || i15 % 2 == i12 - 1) {
                iArr[i15 / i14] = bArr[i15 + i9] & UByte.MAX_VALUE;
            }
        }
        try {
            this.f3091a.f(iArr, i11 / i14);
            for (int i16 = 0; i16 < i10; i16++) {
                if (i12 == 0 || i16 % 2 == i12 - 1) {
                    bArr[i16 + i9] = (byte) iArr[i16 / i14];
                }
            }
        } catch (h6.c unused) {
            throw z5.c.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f6.d b(s sVar, Map map) throws z5.c, e {
        w6.d dVar;
        w6.d dVar2;
        int i9;
        String str;
        int iB;
        f fVarI = sVar.i();
        int i10 = sVar.h().f5930a;
        w6.c cVarH = sVar.h();
        f fVarI2 = sVar.i();
        int i11 = g.d(8)[cVarH.f5931b];
        f6.b bVar = (f6.b) sVar.c;
        int i12 = bVar.c;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            for (int i15 = 0; i15 < i12; i15++) {
                if (w6.b.a(i11, i14, i15)) {
                    bVar.a(i15, i14);
                }
            }
        }
        int i16 = fVarI2.f5943a * 4;
        int i17 = i16 + 17;
        int i18 = fVarI2.d;
        f6.b bVar2 = new f6.b(i17, i17);
        bVar2.g(0, 0, 9, 9);
        int i19 = i16 + 9;
        bVar2.g(i19, 0, 8, 9);
        bVar2.g(0, i19, 9, 8);
        int[] iArr = fVarI2.f5944b;
        int length = iArr.length;
        int i20 = 0;
        while (i20 < length) {
            int i21 = iArr[i20] - 2;
            for (int i22 = i13; i22 < length; i22++) {
                if ((i20 != 0 || (i22 != 0 && i22 != length - 1)) && (i20 != length - 1 || i22 != 0)) {
                    bVar2.g(iArr[i22] - 2, i21, 5, 5);
                }
            }
            i20++;
            i13 = 0;
        }
        int i23 = 2;
        int i24 = 6;
        int i25 = 1;
        bVar2.g(6, 9, 1, i16);
        bVar2.g(9, 6, i16, 1);
        if (fVarI2.f5943a > 6) {
            int i26 = i16 + 6;
            bVar2.g(i26, 0, 3, 6);
            bVar2.g(0, i26, 6, 3);
        }
        byte[] bArr = new byte[i18];
        int i27 = i12 - 1;
        int i28 = i27;
        boolean z8 = true;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        while (i28 > 0) {
            if (i28 == i24) {
                i28--;
            }
            int i32 = 0;
            while (i32 < i12) {
                int i33 = z8 ? i27 - i32 : i32;
                int i34 = i25;
                int i35 = 0;
                for (int i36 = i23; i35 < i36; i36 = 2) {
                    int i37 = i28 - i35;
                    if (!bVar2.b(i37, i33)) {
                        i30++;
                        i31 <<= 1;
                        if (bVar.b(i37, i33)) {
                            i31 |= 1;
                        }
                        if (i30 == 8) {
                            bArr[i29] = (byte) i31;
                            i29++;
                            i30 = 0;
                            i31 = 0;
                        }
                    }
                    i35++;
                }
                i32++;
                i25 = i34;
                i23 = 2;
            }
            z8 = !z8;
            i28 -= 2;
            i24 = 6;
            i23 = 2;
        }
        int i38 = i25;
        if (i29 != i18) {
            throw e.a();
        }
        if (i18 != fVarI.d) {
            i.a();
            return null;
        }
        j.i iVar = fVarI.c[g.c(i10)];
        c6.a[] aVarArr = (c6.a[]) iVar.c;
        int i39 = iVar.f2793b;
        int i40 = 0;
        for (c6.a aVar : aVarArr) {
            i40 += aVar.f501b;
        }
        a[] aVarArr2 = new a[i40];
        int i41 = 0;
        for (c6.a aVar2 : aVarArr) {
            int i42 = 0;
            while (i42 < aVar2.f501b) {
                int i43 = aVar2.c;
                aVarArr2[i41] = new a(i43, new byte[i39 + i43]);
                i42++;
                i41++;
            }
        }
        int length2 = aVarArr2[0].f3087a.length;
        int i44 = i40 - 1;
        while (i44 >= 0 && aVarArr2[i44].f3087a.length != length2) {
            i44--;
        }
        int i45 = i44 + 1;
        int i46 = length2 - i39;
        int i47 = 0;
        int i48 = 0;
        while (i47 < i46) {
            int i49 = i48;
            int i50 = 0;
            while (i50 < i41) {
                aVarArr2[i50].f3087a[i47] = bArr[i49];
                i50++;
                i49++;
            }
            i47++;
            i48 = i49;
        }
        int i51 = i45;
        while (i51 < i41) {
            aVarArr2[i51].f3087a[i46] = bArr[i48];
            i51++;
            i48++;
        }
        int length3 = aVarArr2[0].f3087a.length;
        while (i46 < length3) {
            int i52 = i48;
            int i53 = 0;
            while (i53 < i41) {
                aVarArr2[i53].f3087a[i53 < i45 ? i46 : i46 + 1] = bArr[i52];
                i53++;
                i52++;
            }
            i46++;
            i48 = i52;
        }
        int i54 = 0;
        for (int i55 = 0; i55 < i40; i55++) {
            i54 += aVarArr2[i55].f3088b;
        }
        byte[] bArr2 = new byte[i54];
        int i56 = 0;
        for (int i57 = 0; i57 < i40; i57++) {
            a aVar3 = aVarArr2[i57];
            byte[] bArr3 = aVar3.f3087a;
            int i58 = aVar3.f3088b;
            int length4 = bArr3.length;
            int[] iArr2 = new int[length4];
            for (int i59 = 0; i59 < length4; i59++) {
                iArr2[i59] = bArr3[i59] & UByte.MAX_VALUE;
            }
            try {
                this.f3091a.f(iArr2, bArr3.length - i58);
                for (int i60 = 0; i60 < i58; i60++) {
                    bArr3[i60] = (byte) iArr2[i60];
                }
                int i61 = 0;
                while (i61 < i58) {
                    bArr2[i56] = bArr3[i61];
                    i61++;
                    i56++;
                }
            } catch (h6.c unused) {
                throw z5.c.a();
            }
        }
        char[] cArr = w6.a.f5928a;
        b7.s sVar2 = new b7.s(bArr2);
        StringBuilder sb = new StringBuilder(50);
        ArrayList arrayList = new ArrayList(i38);
        int iB2 = -1;
        int iB3 = -1;
        boolean z9 = false;
        f6.c cVar = null;
        while (true) {
            try {
                int iA = sVar2.a();
                w6.d dVar3 = w6.d.TERMINATOR;
                if (iA < 4) {
                    dVar2 = dVar3;
                } else {
                    int iB4 = sVar2.b(4);
                    if (iB4 == 0) {
                        dVar = dVar3;
                    } else if (iB4 == 1) {
                        dVar = w6.d.NUMERIC;
                    } else if (iB4 == 2) {
                        dVar = w6.d.ALPHANUMERIC;
                    } else if (iB4 == 3) {
                        dVar = w6.d.STRUCTURED_APPEND;
                    } else if (iB4 == 4) {
                        dVar = w6.d.BYTE;
                    } else if (iB4 == 5) {
                        dVar = w6.d.FNC1_FIRST_POSITION;
                    } else if (iB4 == 7) {
                        dVar = w6.d.ECI;
                    } else if (iB4 == 8) {
                        dVar = w6.d.KANJI;
                    } else if (iB4 == 9) {
                        dVar = w6.d.FNC1_SECOND_POSITION;
                    } else {
                        if (iB4 != 13) {
                            throw new IllegalArgumentException();
                        }
                        dVar = w6.d.HANZI;
                    }
                    dVar2 = dVar;
                }
                int iOrdinal = dVar2.ordinal();
                if (iOrdinal == 0) {
                    i9 = iB3;
                } else {
                    if (iOrdinal == 3) {
                        if (sVar2.a() < 16) {
                            throw e.a();
                        }
                        iB2 = sVar2.b(8);
                        iB3 = sVar2.b(8);
                    } else if (iOrdinal == 5) {
                        int iB5 = sVar2.b(8);
                        if ((iB5 & 128) == 0) {
                            iB = iB5 & 127;
                        } else if ((iB5 & 192) == 128) {
                            iB = ((iB5 & 63) << 8) | sVar2.b(8);
                        } else {
                            if ((iB5 & 224) != 192) {
                                throw e.a();
                            }
                            iB = ((iB5 & 31) << 16) | sVar2.b(16);
                        }
                        HashMap map2 = f6.c.d;
                        if (iB < 0 || iB >= 900) {
                            throw e.a();
                        }
                        cVar = (f6.c) f6.c.d.get(Integer.valueOf(iB));
                        if (cVar == null) {
                            throw e.a();
                        }
                        i9 = iB3;
                    } else if (iOrdinal == 7 || iOrdinal == 8) {
                        i9 = iB3;
                        z9 = true;
                    } else if (iOrdinal != 9) {
                        int iB6 = sVar2.b(dVar2.a(fVarI));
                        int iOrdinal2 = dVar2.ordinal();
                        if (iOrdinal2 == 1) {
                            w6.a.e(sVar2, sb, iB6);
                        } else if (iOrdinal2 == 2) {
                            w6.a.a(sVar2, sb, iB6, z9);
                        } else if (iOrdinal2 == 4) {
                            w6.a.b(sVar2, sb, iB6, cVar, arrayList, map);
                        } else {
                            if (iOrdinal2 != 6) {
                                throw e.a();
                            }
                            w6.a.d(sVar2, sb, iB6);
                        }
                    } else {
                        int iB7 = sVar2.b(4);
                        int iB8 = sVar2.b(dVar2.a(fVarI));
                        if (iB7 == 1) {
                            w6.a.c(sVar2, sb, iB8);
                        }
                    }
                    i9 = iB3;
                }
                if (dVar2 == dVar3) {
                    String string = sb.toString();
                    ArrayList arrayList2 = arrayList.isEmpty() ? null : arrayList;
                    if (i10 == 1) {
                        str = "L";
                    } else if (i10 == 2) {
                        str = "M";
                    } else if (i10 == 3) {
                        str = "Q";
                    } else {
                        if (i10 != 4) {
                            throw null;
                        }
                        str = "H";
                    }
                    return new f6.d(bArr2, string, arrayList2, str, iB2, i9);
                }
                iB3 = i9;
            } catch (IllegalArgumentException unused2) {
                throw e.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:493:0x03c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:? A[LOOP:15: B:204:0x0359->B:501:?, LOOP_END, SYNTHETIC] */
    public f6.d c(f6.b bVar) throws z5.c, e {
        byte[] bArr;
        int i9;
        int iB;
        int i10;
        int iB2;
        int iB3;
        h hVar = new h(bVar);
        d dVar = (d) hVar.e;
        f6.b bVar2 = (f6.b) hVar.d;
        int i11 = dVar.f3096g;
        byte[] bArr2 = new byte[i11];
        f6.b bVar3 = (f6.b) hVar.c;
        int i12 = bVar3.c;
        int i13 = bVar3.f2258b;
        int i14 = 0;
        int i15 = 0;
        boolean z8 = false;
        int i16 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        int i17 = 4;
        while (true) {
            if (i17 == i12 && i15 == 0 && !z8) {
                int i18 = i16 + 1;
                int i19 = i12 - 1;
                int i20 = (hVar.t(i19, i14, i12, i13) ? 1 : 0) << 1;
                if (hVar.t(i19, 1, i12, i13)) {
                    i20 |= 1;
                }
                int i21 = i20 << 1;
                if (hVar.t(i19, 2, i12, i13)) {
                    i21 |= 1;
                }
                int i22 = i21 << 1;
                bArr = bArr2;
                if (hVar.t(0, i13 - 2, i12, i13)) {
                    i22 |= 1;
                }
                int i23 = i22 << 1;
                int i24 = i13 - 1;
                if (hVar.t(0, i24, i12, i13)) {
                    i23 |= 1;
                }
                int i25 = i23 << 1;
                if (hVar.t(1, i24, i12, i13)) {
                    i25 |= 1;
                }
                int i26 = i25 << 1;
                if (hVar.t(2, i24, i12, i13)) {
                    i26 |= 1;
                }
                int i27 = i26 << 1;
                if (hVar.t(3, i24, i12, i13)) {
                    i27 |= 1;
                }
                bArr[i16] = (byte) i27;
                i17 -= 2;
                i15 += 2;
                i16 = i18;
                z8 = true;
            } else {
                bArr = bArr2;
                int i28 = i12 - 2;
                if (i17 == i28 && i15 == 0 && (i13 & 3) != 0 && !z9) {
                    int i29 = i16 + 1;
                    int i30 = (hVar.t(i12 + (-3), 0, i12, i13) ? 1 : 0) << 1;
                    if (hVar.t(i28, 0, i12, i13)) {
                        i30 |= 1;
                    }
                    int i31 = i30 << 1;
                    if (hVar.t(i12 - 1, 0, i12, i13)) {
                        i31 |= 1;
                    }
                    int i32 = i31 << 1;
                    if (hVar.t(0, i13 - 4, i12, i13)) {
                        i32 |= 1;
                    }
                    int i33 = i32 << 1;
                    if (hVar.t(0, i13 - 3, i12, i13)) {
                        i33 |= 1;
                    }
                    int i34 = i33 << 1;
                    if (hVar.t(0, i13 - 2, i12, i13)) {
                        i34 |= 1;
                    }
                    int i35 = i34 << 1;
                    int i36 = i13 - 1;
                    if (hVar.t(0, i36, i12, i13)) {
                        i35 |= 1;
                    }
                    int i37 = i35 << 1;
                    if (hVar.t(1, i36, i12, i13)) {
                        i37 |= 1;
                    }
                    bArr[i16] = (byte) i37;
                    i17 -= 2;
                    i15 += 2;
                    i16 = i29;
                    z9 = true;
                } else if (i17 == i12 + 4 && i15 == 2 && (i13 & 7) == 0 && !z10) {
                    int i38 = i16 + 1;
                    int i39 = i12 - 1;
                    int i40 = (hVar.t(i39, 0, i12, i13) ? 1 : 0) << 1;
                    int i41 = i13 - 1;
                    if (hVar.t(i39, i41, i12, i13)) {
                        i40 |= 1;
                    }
                    int i42 = i40 << 1;
                    int i43 = i13 - 3;
                    if (hVar.t(0, i43, i12, i13)) {
                        i42 |= 1;
                    }
                    int i44 = i42 << 1;
                    int i45 = i13 - 2;
                    if (hVar.t(0, i45, i12, i13)) {
                        i44 |= 1;
                    }
                    int i46 = i44 << 1;
                    if (hVar.t(0, i41, i12, i13)) {
                        i46 |= 1;
                    }
                    int i47 = i46 << 1;
                    int i48 = (hVar.t(1, i43, i12, i13) ? i47 | 1 : i47) << 1;
                    if (hVar.t(1, i45, i12, i13)) {
                        i48 |= 1;
                    }
                    int i49 = i48 << 1;
                    if (hVar.t(1, i41, i12, i13)) {
                        i49 |= 1;
                    }
                    bArr[i16] = (byte) i49;
                    i17 -= 2;
                    i15 += 2;
                    i16 = i38;
                    z10 = true;
                } else if (i17 == i28 && i15 == 0 && (i13 & 7) == 4 && !z11) {
                    int i50 = i16 + 1;
                    int i51 = (hVar.t(i12 + (-3), 0, i12, i13) ? 1 : 0) << 1;
                    if (hVar.t(i28, 0, i12, i13)) {
                        i51 |= 1;
                    }
                    int i52 = i51 << 1;
                    if (hVar.t(i12 - 1, 0, i12, i13)) {
                        i52 |= 1;
                    }
                    int i53 = i52 << 1;
                    if (hVar.t(0, i13 - 2, i12, i13)) {
                        i53 |= 1;
                    }
                    int i54 = i53 << 1;
                    int i55 = i13 - 1;
                    if (hVar.t(0, i55, i12, i13)) {
                        i54 |= 1;
                    }
                    int i56 = i54 << 1;
                    if (hVar.t(1, i55, i12, i13)) {
                        i56 |= 1;
                    }
                    int i57 = i56 << 1;
                    if (hVar.t(2, i55, i12, i13)) {
                        i57 |= 1;
                    }
                    int i58 = i57 << 1;
                    if (hVar.t(3, i55, i12, i13)) {
                        i58 |= 1;
                    }
                    bArr[i16] = (byte) i58;
                    i17 -= 2;
                    i15 += 2;
                    i16 = i50;
                    z11 = true;
                } else {
                    while (true) {
                        if (i17 < i12 && i15 >= 0 && !bVar2.b(i15, i17)) {
                            bArr[i16] = (byte) hVar.u(i17, i15, i12, i13);
                            i16++;
                        }
                        int i59 = i17 - 2;
                        int i60 = i15 + 2;
                        if (i59 < 0 || i60 >= i13) {
                            break;
                        }
                        i17 = i59;
                        i15 = i60;
                    }
                    int i61 = i17 - 1;
                    int i62 = i15 + 5;
                    while (true) {
                        if (i61 >= 0 && i62 < i13 && !bVar2.b(i62, i61)) {
                            bArr[i16] = (byte) hVar.u(i61, i62, i12, i13);
                            i16++;
                        }
                        int i63 = i61 + 2;
                        int i64 = i62 - 2;
                        if (i63 >= i12 || i64 < 0) {
                            break;
                        }
                        i61 = i63;
                        i62 = i64;
                    }
                    i17 = i61 + 5;
                    i15 = i62 - 1;
                }
            }
            if (i17 >= i12 && i15 >= i13) {
                break;
            }
            i14 = 0;
            bArr2 = bArr;
        }
        if (i16 != dVar.f3096g) {
            throw e.a();
        }
        j.i iVar = dVar.f3095f;
        c6.a[] aVarArr = (c6.a[]) iVar.c;
        int i65 = iVar.f2793b;
        int i66 = 0;
        for (c6.a aVar : aVarArr) {
            i66 += aVar.f501b;
        }
        a[] aVarArr2 = new a[i66];
        int i67 = 0;
        for (c6.a aVar2 : aVarArr) {
            int i68 = 0;
            while (i68 < aVar2.f501b) {
                int i69 = aVar2.c;
                aVarArr2[i67] = new a(i69, new byte[i65 + i69]);
                i68++;
                i67++;
            }
        }
        int length = aVarArr2[0].f3087a.length - i65;
        int i70 = length - 1;
        int i71 = 0;
        for (int i72 = 0; i72 < i70; i72++) {
            int i73 = 0;
            while (i73 < i67) {
                aVarArr2[i73].f3087a[i72] = bArr[i71];
                i73++;
                i71++;
            }
        }
        boolean z12 = dVar.f3093a == 24;
        int i74 = 8;
        int i75 = z12 ? 8 : i67;
        int i76 = 0;
        while (i76 < i75) {
            aVarArr2[i76].f3087a[i70] = bArr[i71];
            i76++;
            i71++;
        }
        int length2 = aVarArr2[0].f3087a.length;
        while (true) {
            i9 = 7;
            if (length >= length2) {
                break;
            }
            int i77 = 0;
            while (i77 < i67) {
                int i78 = z12 ? (i77 + 8) % i67 : i77;
                aVarArr2[i78].f3087a[(!z12 || i78 <= 7) ? length : length - 1] = bArr[i71];
                i77++;
                i71++;
            }
            length++;
        }
        if (i71 != i11) {
            i.a();
            return null;
        }
        int i79 = 0;
        for (int i80 = 0; i80 < i66; i80++) {
            i79 += aVarArr2[i80].f3088b;
        }
        byte[] bArr3 = new byte[i79];
        for (int i81 = 0; i81 < i66; i81++) {
            a aVar3 = aVarArr2[i81];
            byte[] bArr4 = aVar3.f3087a;
            int i82 = aVar3.f3088b;
            int length3 = bArr4.length;
            int[] iArr = new int[length3];
            for (int i83 = 0; i83 < length3; i83++) {
                iArr[i83] = bArr4[i83] & UByte.MAX_VALUE;
            }
            try {
                this.f3091a.f(iArr, bArr4.length - i82);
                for (int i84 = 0; i84 < i82; i84++) {
                    bArr4[i84] = (byte) iArr[i84];
                }
                for (int i85 = 0; i85 < i82; i85++) {
                    bArr3[(i85 * i66) + i81] = bArr4[i85];
                }
            } catch (h6.c unused) {
                throw z5.c.a();
            }
        }
        b7.s sVar = new b7.s(bArr3);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        int i86 = 2;
        while (true) {
            int i87 = 6;
            if (i86 == 2) {
                boolean z13 = false;
                while (true) {
                    int iB4 = sVar.b(i74);
                    if (iB4 == 0) {
                        throw e.a();
                    }
                    if (iB4 <= 128) {
                        if (z13) {
                            iB4 += 128;
                        }
                        sb.append((char) (iB4 - 1));
                        i87 = 2;
                    } else if (iB4 == 129) {
                        i87 = 1;
                    } else {
                        if (iB4 > 229) {
                            switch (iB4) {
                                case 230:
                                    i87 = 3;
                                    break;
                                case 231:
                                    i87 = i9;
                                    break;
                                case 232:
                                    sb.append((char) 29);
                                    if (sVar.a() <= 0) {
                                        i87 = 2;
                                    }
                                    break;
                                case 233:
                                case 234:
                                case 241:
                                    break;
                                case 235:
                                    z13 = true;
                                    if (sVar.a() <= 0) {
                                        i87 = 2;
                                    }
                                    break;
                                case 236:
                                    sb.append("[)>\u001e05\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (sVar.a() <= 0) {
                                        i87 = 2;
                                    }
                                    break;
                                case 237:
                                    sb.append("[)>\u001e06\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (sVar.a() <= 0) {
                                        i87 = 2;
                                    }
                                    break;
                                case 238:
                                    i87 = 5;
                                    break;
                                case 239:
                                    i87 = 4;
                                    break;
                                case 240:
                                    break;
                                default:
                                    if (iB4 != 254 || sVar.a() != 0) {
                                        throw e.a();
                                    }
                                    break;
                            }
                        } else {
                            int i88 = iB4 - 130;
                            if (i88 < 10) {
                                sb.append('0');
                            }
                            sb.append(i88);
                        }
                        if (sVar.a() <= 0) {
                            i87 = 2;
                        }
                    }
                }
                i86 = i87;
            } else {
                int iC = g.c(i86);
                if (iC == 2) {
                    int i89 = 3;
                    int[] iArr2 = new int[3];
                    boolean z14 = false;
                    int i90 = 0;
                    while (true) {
                        if (sVar.a() != 8 && (iB = sVar.b(8)) != 254) {
                            b.a(iB, sVar.b(8), iArr2);
                            int i91 = i90;
                            boolean z15 = z14;
                            int i92 = 0;
                            while (i92 < i89) {
                                int i93 = iArr2[i92];
                                if (i91 != 0) {
                                    if (i91 != 1) {
                                        if (i91 != 2) {
                                            if (i91 != i89) {
                                                throw e.a();
                                            }
                                            if (z15) {
                                                sb.append((char) (i93 + 224));
                                                z15 = false;
                                            } else {
                                                sb.append((char) (i93 + 96));
                                            }
                                        } else if (i93 < 27) {
                                            char c = b.f3090b[i93];
                                            if (z15) {
                                                sb.append((char) (c + 128));
                                                z15 = false;
                                            } else {
                                                sb.append(c);
                                            }
                                        } else if (i93 == 27) {
                                            sb.append((char) 29);
                                        } else {
                                            if (i93 != 30) {
                                                throw e.a();
                                            }
                                            z15 = true;
                                        }
                                    } else if (z15) {
                                        sb.append((char) (i93 + 128));
                                        z15 = false;
                                    } else {
                                        sb.append((char) i93);
                                    }
                                    i91 = 0;
                                } else if (i93 < i89) {
                                    i91 = i93 + 1;
                                } else {
                                    if (i93 >= 40) {
                                        throw e.a();
                                    }
                                    char c9 = b.f3089a[i93];
                                    if (z15) {
                                        sb.append((char) (c9 + 128));
                                        z15 = false;
                                    } else {
                                        sb.append(c9);
                                    }
                                }
                                i92++;
                                i89 = 3;
                            }
                            i10 = 2;
                            if (sVar.a() > 0) {
                                z14 = z15;
                                i90 = i91;
                                i89 = 3;
                            }
                        }
                    }
                    i86 = i10;
                } else if (iC == 3) {
                    int i94 = 3;
                    int[] iArr3 = new int[3];
                    boolean z16 = false;
                    int i95 = 0;
                    for (int i96 = 254; sVar.a() != i74 && (iB2 = sVar.b(i74)) != i96; i96 = 254) {
                        b.a(iB2, sVar.b(i74), iArr3);
                        int i97 = i95;
                        int i98 = 0;
                        while (i98 < i94) {
                            int i99 = iArr3[i98];
                            if (i97 != 0) {
                                if (i97 != 1) {
                                    if (i97 != 2) {
                                        if (i97 != i94) {
                                            throw e.a();
                                        }
                                        if (i99 >= 32) {
                                            throw e.a();
                                        }
                                        char c10 = b.e[i99];
                                        if (z16) {
                                            sb.append((char) (c10 + 128));
                                            z16 = false;
                                        } else {
                                            sb.append(c10);
                                        }
                                    } else if (i99 < 27) {
                                        char c11 = b.d[i99];
                                        if (z16) {
                                            sb.append((char) (c11 + 128));
                                            z16 = false;
                                        } else {
                                            sb.append(c11);
                                        }
                                    } else if (i99 == 27) {
                                        sb.append((char) 29);
                                    } else {
                                        if (i99 != 30) {
                                            throw e.a();
                                        }
                                        z16 = true;
                                    }
                                } else if (z16) {
                                    sb.append((char) (i99 + 128));
                                    z16 = false;
                                } else {
                                    sb.append((char) i99);
                                }
                                i97 = 0;
                            } else if (i99 < i94) {
                                i97 = i99 + 1;
                            } else {
                                if (i99 >= 40) {
                                    throw e.a();
                                }
                                char c12 = b.c[i99];
                                if (z16) {
                                    sb.append((char) (c12 + 128));
                                    z16 = false;
                                } else {
                                    sb.append(c12);
                                }
                            }
                            i98++;
                            i94 = 3;
                        }
                        if (sVar.a() > 0) {
                            i95 = i97;
                            i74 = 8;
                            i94 = 3;
                        }
                    }
                } else if (iC == 4) {
                    int i100 = 3;
                    int[] iArr4 = new int[3];
                    while (sVar.a() != i74 && (iB3 = sVar.b(i74)) != 254) {
                        b.a(iB3, sVar.b(i74), iArr4);
                        int i101 = 0;
                        while (i101 < i100) {
                            int i102 = iArr4[i101];
                            if (i102 == 0) {
                                sb.append('\r');
                            } else if (i102 == 1) {
                                sb.append('*');
                            } else if (i102 == 2) {
                                sb.append('>');
                            } else if (i102 == i100) {
                                sb.append(' ');
                            } else if (i102 < 14) {
                                sb.append((char) (i102 + 44));
                            } else {
                                if (i102 >= 40) {
                                    throw e.a();
                                }
                                sb.append((char) (i102 + 51));
                            }
                            i101++;
                            i100 = 3;
                        }
                        if (sVar.a() > 0) {
                            i100 = 3;
                        }
                    }
                } else if (iC == 5) {
                    while (sVar.a() > 16) {
                        int i103 = 0;
                        while (true) {
                            if (i103 < 4) {
                                int iB5 = sVar.b(6);
                                if (iB5 == 31) {
                                    int i104 = 8 - sVar.f387b;
                                    if (i104 != i74) {
                                        sVar.b(i104);
                                    }
                                } else {
                                    if ((iB5 & 32) == 0) {
                                        iB5 |= 64;
                                    }
                                    sb.append((char) iB5);
                                    i103++;
                                }
                            } else if (sVar.a() <= 0) {
                            }
                        }
                    }
                } else {
                    if (iC != 6) {
                        throw e.a();
                    }
                    int i105 = sVar.f386a;
                    int i106 = i105 + 2;
                    int iB6 = b.b(sVar.b(i74), i105 + 1);
                    if (iB6 == 0) {
                        iB6 = sVar.a() / 8;
                    } else if (iB6 >= 250) {
                        iB6 = ((iB6 - 249) * ItemTouchHelper$Callback.DEFAULT_SWIPE_ANIMATION_DURATION) + b.b(sVar.b(i74), i106);
                        i106 = i105 + 3;
                    }
                    if (iB6 < 0) {
                        throw e.a();
                    }
                    byte[] bArr5 = new byte[iB6];
                    int i107 = 0;
                    while (i107 < iB6) {
                        if (sVar.a() < i74) {
                            throw e.a();
                        }
                        bArr5[i107] = (byte) b.b(sVar.b(i74), i106);
                        i107++;
                        i106++;
                    }
                    arrayList.add(bArr5);
                    try {
                        sb.append(new String(bArr5, "ISO8859_1"));
                    } catch (UnsupportedEncodingException e) {
                        j1.i.l("Platform does not support required encoding: ".concat(String.valueOf(e)));
                        return null;
                    }
                }
                i10 = 2;
                i86 = i10;
            }
            if (i86 == 1 || sVar.a() <= 0) {
                if (sb2.length() > 0) {
                    sb.append((CharSequence) sb2);
                }
                String string = sb.toString();
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new f6.d(bArr3, string, arrayList, null);
            }
            i74 = 8;
            i9 = 7;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x002a A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0031 A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003b A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0041 A[SYNTHETIC] */
    public f6.d d(f6.b bVar, Map map) throws z5.c, e {
        z5.c cVar;
        f6.b bVar2;
        int i9;
        int i10;
        s sVar = new s(bVar);
        try {
            return b(sVar, map);
        } catch (z5.c e) {
            cVar = e;
            e = null;
            try {
                sVar.j();
                sVar.d = null;
                sVar.e = null;
                sVar.f613b = true;
                sVar.i();
                sVar.h();
                bVar2 = (f6.b) sVar.c;
                i9 = 0;
                while (i9 < bVar2.f2258b) {
                    int i11 = i9 + 1;
                    for (i10 = i11; i10 < bVar2.c; i10++) {
                        if (bVar2.b(i9, i10) != bVar2.b(i10, i9)) {
                            bVar2.a(i10, i9);
                            bVar2.a(i9, i10);
                        }
                    }
                    i9 = i11;
                }
                f6.d dVarB = b(sVar, map);
                dVarB.f2264g = new w6.e();
                return dVarB;
            } catch (z5.c | e unused) {
                if (e != null) {
                    throw e;
                }
                throw cVar;
            }
        } catch (e e6) {
            e = e6;
            cVar = null;
            sVar.j();
            sVar.d = null;
            sVar.e = null;
            sVar.f613b = true;
            sVar.i();
            sVar.h();
            bVar2 = (f6.b) sVar.c;
            i9 = 0;
            while (i9 < bVar2.f2258b) {
                int i12 = i9 + 1;
                while (i10 < bVar2.c) {
                    if (bVar2.b(i9, i10) != bVar2.b(i10, i9)) {
                        bVar2.a(i10, i9);
                        bVar2.a(i9, i10);
                    }
                }
                i9 = i12;
            }
            f6.d dVarB2 = b(sVar, map);
            dVarB2.f2264g = new w6.e();
            return dVarB2;
        }
    }
}
