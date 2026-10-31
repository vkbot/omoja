package p6;

import a5.h;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import androidx.recyclerview.widget.ItemTouchHelper$Callback;
import j1.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import q6.f;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends o6.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f4597k = {7, 5, 4, 3, 1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f4598l = {4, 20, 52, LocationRequestCompat.QUALITY_LOW_POWER, 204};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f4599m = {0, 348, 1388, 2948, 3988};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[][] f4600n = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[][] f4601o = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 116, 137, ItemTouchHelper$Callback.DEFAULT_DRAG_ANIMATION_DURATION, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int[][] f4602p = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f4603g = new ArrayList(11);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f4604h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f4605i = new int[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f4606j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static m m(List list) {
        o.b aVar;
        int size = list.size() << 1;
        int i9 = size - 1;
        if (((a) list.get(list.size() - 1)).f4594b == null) {
            i9 = size - 2;
        }
        f6.a aVar2 = new f6.a(i9 * 12);
        int i10 = ((a) list.get(0)).f4594b.f4103a;
        int i11 = 0;
        for (int i12 = 11; i12 >= 0; i12--) {
            if (((1 << i12) & i10) != 0) {
                aVar2.j(i11);
            }
            i11++;
        }
        for (int i13 = 1; i13 < list.size(); i13++) {
            a aVar3 = (a) list.get(i13);
            int i14 = aVar3.f4593a.f4103a;
            for (int i15 = 11; i15 >= 0; i15--) {
                if (((1 << i15) & i14) != 0) {
                    aVar2.j(i11);
                }
                i11++;
            }
            o6.b bVar = aVar3.f4594b;
            if (bVar != null) {
                int i16 = bVar.f4103a;
                for (int i17 = 11; i17 >= 0; i17--) {
                    if (((1 << i17) & i16) != 0) {
                        aVar2.j(i11);
                    }
                    i11++;
                }
            }
        }
        if (aVar2.d(1)) {
            aVar = new q6.b(aVar2, 2);
        } else if (aVar2.d(2)) {
            int iH = h.h(1, 4, aVar2);
            if (iH == 4) {
                aVar = new q6.a(aVar2, 0);
            } else if (iH != 5) {
                int iH2 = h.h(1, 5, aVar2);
                if (iH2 == 12) {
                    aVar = new q6.b(aVar2, 0);
                } else if (iH2 != 13) {
                    switch (h.h(1, 7, aVar2)) {
                        case 56:
                            aVar = new q6.c(aVar2, "310", "11");
                            break;
                        case 57:
                            aVar = new q6.c(aVar2, "320", "11");
                            break;
                        case 58:
                            aVar = new q6.c(aVar2, "310", "13");
                            break;
                        case 59:
                            aVar = new q6.c(aVar2, "320", "13");
                            break;
                        case 60:
                            aVar = new q6.c(aVar2, "310", "15");
                            break;
                        case 61:
                            aVar = new q6.c(aVar2, "320", "15");
                            break;
                        case 62:
                            aVar = new q6.c(aVar2, "310", "17");
                            break;
                        case 63:
                            aVar = new q6.c(aVar2, "320", "17");
                            break;
                        default:
                            i.l("unknown decoder: ".concat(String.valueOf(aVar2)));
                            return null;
                    }
                } else {
                    aVar = new q6.b(aVar2, 1);
                }
            } else {
                aVar = new q6.a(aVar2, 1);
            }
        } else {
            aVar = new f(aVar2);
        }
        String strA = aVar.a();
        o[] oVarArr = ((a) list.get(0)).c.c;
        o[] oVarArr2 = ((a) list.get(list.size() - 1)).c.c;
        return new m(strA, null, new o[]{oVarArr[0], oVarArr[1], oVarArr2[0], oVarArr2[1]}, z5.a.f6309o);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) {
        ArrayList arrayList = this.f4603g;
        arrayList.clear();
        this.f4606j = false;
        try {
            return m(o(aVar, i9));
        } catch (z5.i unused) {
            arrayList.clear();
            this.f4606j = true;
            return m(o(aVar, i9));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j() {
        ArrayList arrayList = this.f4603g;
        a aVar = (a) arrayList.get(0);
        o6.b bVar = aVar.f4593a;
        o6.b bVar2 = aVar.f4594b;
        if (bVar2 != null) {
            int i9 = bVar2.f4104b;
            int i10 = 2;
            for (int i11 = 1; i11 < arrayList.size(); i11++) {
                a aVar2 = (a) arrayList.get(i11);
                i9 += aVar2.f4593a.f4104b;
                int i12 = i10 + 1;
                o6.b bVar3 = aVar2.f4594b;
                if (bVar3 != null) {
                    i9 += bVar3.f4104b;
                    i10 += 2;
                } else {
                    i10 = i12;
                }
            }
            if (((i10 - 4) * 211) + (i9 % 211) == bVar.f4103a) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List k(ArrayList arrayList, int i9) throws z5.i {
        while (true) {
            ArrayList arrayList2 = this.f4604h;
            if (i9 >= arrayList2.size()) {
                throw z5.i.d;
            }
            b bVar = (b) arrayList2.get(i9);
            ArrayList arrayList3 = this.f4603g;
            arrayList3.clear();
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                arrayList3.addAll(((b) obj).f4595a);
            }
            arrayList3.addAll(bVar.f4595a);
            for (int i11 = 0; i11 < 10; i11++) {
                int[] iArr = f4602p[i11];
                if (arrayList3.size() <= iArr.length) {
                    int i12 = 0;
                    while (true) {
                        if (i12 >= arrayList3.size()) {
                            if (!j()) {
                                ArrayList arrayList4 = new ArrayList(arrayList);
                                arrayList4.add(bVar);
                                try {
                                    return k(arrayList4, i9 + 1);
                                } catch (z5.i unused) {
                                    break;
                                }
                            }
                            return arrayList3;
                        }
                        if (((a) arrayList3.get(i12)).c.f4105a != iArr[i12]) {
                            break;
                        }
                        i12++;
                    }
                }
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List l(boolean z8) {
        ArrayList arrayList = this.f4604h;
        List listK = null;
        if (arrayList.size() > 25) {
            arrayList.clear();
            return null;
        }
        this.f4603g.clear();
        if (z8) {
            Collections.reverse(arrayList);
        }
        try {
            listK = k(new ArrayList(), 0);
        } catch (z5.i unused) {
        }
        if (z8) {
            Collections.reverse(arrayList);
        }
        return listK;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final o6.b n(f6.a aVar, o6.c cVar, boolean z8, boolean z9) throws z5.i {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int[][] iArr;
        int[] iArr2 = this.f4101b;
        Arrays.fill(iArr2, 0);
        if (z9) {
            n6.h.f(cVar.f4106b[0], aVar, iArr2);
        } else {
            n6.h.e(cVar.f4106b[1], aVar, iArr2);
            int i9 = 0;
            for (int length = iArr2.length - 1; i9 < length; length--) {
                int i10 = iArr2[i9];
                iArr2[i9] = iArr2[length];
                iArr2[length] = i10;
                i9++;
            }
        }
        float fX = a.a.x(iArr2) / 17.0f;
        int[] iArr3 = cVar.f4106b;
        int i11 = cVar.f4105a;
        float f8 = (iArr3[1] - iArr3[0]) / 15.0f;
        if (Math.abs(fX - f8) / f8 > 0.3f) {
            throw z5.i.d;
        }
        int i12 = 0;
        while (true) {
            int length2 = iArr2.length;
            float[] fArr = this.d;
            float[] fArr2 = this.c;
            int[] iArr4 = this.f4102f;
            int[] iArr5 = this.e;
            if (i12 >= length2) {
                int iX = a.a.x(iArr5);
                int iX2 = a.a.x(iArr4);
                if (iX > 13) {
                    z10 = false;
                    z11 = true;
                } else if (iX < 4) {
                    z11 = false;
                    z10 = true;
                } else {
                    z10 = false;
                    z11 = false;
                }
                if (iX2 > 13) {
                    z12 = false;
                    z13 = true;
                } else if (iX2 < 4) {
                    z13 = false;
                    z12 = true;
                } else {
                    z12 = false;
                    z13 = false;
                }
                int i13 = (iX + iX2) - 17;
                boolean z14 = (iX & 1) == 1;
                boolean z15 = (iX2 & 1) == 0;
                boolean z16 = z10;
                boolean z17 = z11;
                boolean z18 = z12;
                boolean z19 = z13;
                if (i13 != -1) {
                    if (i13 != 0) {
                        if (i13 != 1) {
                            throw z5.i.d;
                        }
                        if (z14) {
                            if (z15) {
                                throw z5.i.d;
                            }
                            z17 = true;
                        } else {
                            if (!z15) {
                                throw z5.i.d;
                            }
                            z19 = true;
                        }
                    } else if (z14) {
                        if (!z15) {
                            throw z5.i.d;
                        }
                        if (iX < iX2) {
                            z16 = true;
                            z19 = true;
                        } else {
                            z17 = true;
                            z18 = true;
                        }
                    } else if (z15) {
                        throw z5.i.d;
                    }
                } else if (z14) {
                    if (z15) {
                        throw z5.i.d;
                    }
                    z16 = true;
                } else {
                    if (!z15) {
                        throw z5.i.d;
                    }
                    z18 = true;
                }
                if (z16) {
                    if (z17) {
                        throw z5.i.d;
                    }
                    o6.a.h(iArr5, fArr2);
                }
                if (z17) {
                    o6.a.g(iArr5, fArr2);
                }
                if (z18) {
                    if (z19) {
                        throw z5.i.d;
                    }
                    o6.a.h(iArr4, fArr2);
                }
                if (z19) {
                    o6.a.g(iArr4, fArr);
                }
                int i14 = (((i11 * 4) + (z8 ? 0 : 2)) + (!z9 ? 1 : 0)) - 1;
                int length3 = iArr5.length - 1;
                int i15 = 0;
                int i16 = 0;
                while (true) {
                    iArr = f4601o;
                    if (length3 < 0) {
                        break;
                    }
                    if (i11 != 0 || !z8 || !z9) {
                        i15 += iArr5[length3] * iArr[i14][length3 * 2];
                    }
                    i16 += iArr5[length3];
                    length3--;
                }
                int i17 = 0;
                for (int length4 = iArr4.length - 1; length4 >= 0; length4--) {
                    if (i11 != 0 || !z8 || !z9) {
                        i17 += iArr4[length4] * iArr[i14][(length4 * 2) + 1];
                    }
                }
                int i18 = i15 + i17;
                if ((i16 & 1) != 0 || i16 > 13 || i16 < 4) {
                    throw z5.i.d;
                }
                int i19 = (13 - i16) / 2;
                int i20 = f4597k[i19];
                return new o6.b((o4.b.u(iArr5, i20, true) * f4598l[i19]) + o4.b.u(iArr4, 9 - i20, false) + f4599m[i19], i18);
            }
            float f9 = (iArr2[i12] * 1.0f) / fX;
            int i21 = (int) (0.5f + f9);
            if (i21 <= 0) {
                if (f9 < 0.3f) {
                    throw z5.i.d;
                }
                i21 = 1;
            } else if (i21 > 8) {
                if (f9 > 8.7f) {
                    throw z5.i.d;
                }
                i21 = 8;
            }
            int i22 = i12 / 2;
            if ((i12 & 1) == 0) {
                iArr5[i22] = i21;
                fArr2[i22] = f9 - i21;
            } else {
                iArr4[i22] = i21;
                fArr[i22] = f9 - i21;
            }
            i12++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List o(f6.a aVar, int i9) throws z5.i {
        boolean zEquals;
        boolean z8;
        Object obj;
        boolean z9 = false;
        while (true) {
            ArrayList arrayList = this.f4603g;
            if (z9) {
                if (j()) {
                    return arrayList;
                }
                ArrayList arrayList2 = this.f4604h;
                boolean zIsEmpty = arrayList2.isEmpty();
                int i10 = 0;
                boolean zEquals2 = false;
                while (true) {
                    if (i10 >= arrayList2.size()) {
                        zEquals = false;
                        break;
                    }
                    b bVar = (b) arrayList2.get(i10);
                    int i11 = bVar.f4596b;
                    ArrayList arrayList3 = bVar.f4595a;
                    if (i11 > i9) {
                        zEquals = arrayList3.equals(arrayList);
                        break;
                    }
                    zEquals2 = arrayList3.equals(arrayList);
                    i10++;
                }
                if (!zEquals && !zEquals2) {
                    int size = arrayList2.size();
                    int i12 = 0;
                    loop2: while (true) {
                        if (i12 >= size) {
                            z8 = false;
                            break;
                        }
                        Object obj2 = arrayList2.get(i12);
                        i12++;
                        b bVar2 = (b) obj2;
                        int size2 = arrayList.size();
                        int i13 = 0;
                        while (true) {
                            if (i13 >= size2) {
                                z8 = true;
                                break loop2;
                            }
                            Object obj3 = arrayList.get(i13);
                            i13++;
                            a aVar2 = (a) obj3;
                            ArrayList arrayList4 = bVar2.f4595a;
                            int size3 = arrayList4.size();
                            int i14 = 0;
                            while (true) {
                                if (i14 < size3) {
                                    Object obj4 = arrayList4.get(i14);
                                    i14++;
                                    if (aVar2.equals((a) obj4)) {
                                    }
                                }
                            }
                        }
                    }
                    if (!z8) {
                        arrayList2.add(i10, new b(arrayList, i9));
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            b bVar3 = (b) it.next();
                            if (bVar3.f4595a.size() != arrayList.size()) {
                                ArrayList arrayList5 = bVar3.f4595a;
                                int size4 = arrayList5.size();
                                int i15 = 0;
                                do {
                                    if (i15 >= size4) {
                                        it.remove();
                                        break;
                                    }
                                    obj = arrayList5.get(i15);
                                    i15++;
                                } while (arrayList.contains((a) obj));
                            }
                        }
                    }
                }
                if (!zIsEmpty) {
                    List listL = l(false);
                    if (listL != null) {
                        return listL;
                    }
                    List listL2 = l(true);
                    if (listL2 != null) {
                        return listL2;
                    }
                }
                throw z5.i.d;
            }
            try {
                arrayList.add(p(aVar, arrayList, i9));
            } catch (z5.i e) {
                if (arrayList.isEmpty()) {
                    throw e;
                }
                z9 = true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final a p(f6.a aVar, ArrayList arrayList, int i9) throws z5.i {
        int i10;
        int i11;
        int i12;
        int iF;
        int i13;
        o6.c cVar;
        int i14 = 2;
        int i15 = 0;
        int i16 = 1;
        boolean z8 = arrayList.size() % 2 == 0;
        if (this.f4606j) {
            z8 = !z8;
        }
        int iE = -1;
        boolean z9 = true;
        while (true) {
            int[] iArr = this.f4100a;
            iArr[i15] = i15;
            iArr[i16] = i15;
            iArr[i14] = i15;
            int i17 = 3;
            iArr[3] = i15;
            int i18 = aVar.c;
            int i19 = iE >= 0 ? iE : arrayList.isEmpty() ? i15 : ((a) arrayList.get(arrayList.size() - i16)).c.f4106b[i16];
            int i20 = arrayList.size() % i14 != 0 ? i16 : i15;
            if (this.f4606j) {
                i20 ^= 1;
            }
            int i21 = i15;
            while (i19 < i18) {
                boolean zD = aVar.d(i19);
                int i22 = !zD;
                if (zD) {
                    i21 = i22;
                    break;
                }
                i19++;
                i21 = i22;
            }
            int i23 = i14;
            int i24 = i15;
            int i25 = i21;
            int i26 = i19;
            while (true) {
                if (i19 >= i18) {
                    throw z5.i.d;
                }
                i10 = i15;
                if (aVar.d(i19) != i25) {
                    iArr[i24] = iArr[i24] + i16;
                    i11 = i16;
                    i17 = i17;
                } else {
                    if (i24 == i17) {
                        if (i20 != 0) {
                            int length = iArr.length;
                            int i27 = i10;
                            while (true) {
                                i12 = i16;
                                if (i27 >= length / 2) {
                                    break;
                                }
                                int i28 = iArr[i27];
                                int i29 = (length - i27) - 1;
                                iArr[i27] = iArr[i29];
                                iArr[i29] = i28;
                                i27++;
                                i16 = i12;
                            }
                        } else {
                            i12 = i16;
                        }
                        if (o6.a.i(iArr)) {
                            break;
                        }
                        if (i20 != 0) {
                            int length2 = iArr.length;
                            for (int i30 = 0; i30 < length2 / 2; i30++) {
                                int i31 = iArr[i30];
                                int i32 = (length2 - i30) - 1;
                                iArr[i30] = iArr[i32];
                                iArr[i32] = i31;
                            }
                        }
                        i11 = 1;
                        i10 = 0;
                        i26 += iArr[0] + iArr[1];
                        iArr[0] = iArr[i23];
                        iArr[1] = iArr[i17];
                        iArr[i23] = 0;
                        iArr[i17] = 0;
                        i24--;
                    } else {
                        i11 = i16;
                        i17 = i17;
                        i24++;
                    }
                    iArr[i24] = i11;
                    i25 ^= 1;
                }
                i19++;
                i15 = i10;
                i17 = i17;
                i16 = i11;
            }
            int[] iArr2 = this.f4605i;
            iArr2[i10] = i26;
            iArr2[i12] = i19;
            if (z8) {
                int i33 = i26 - 1;
                while (i33 >= 0 && !aVar.d(i33)) {
                    i33--;
                }
                i26 = i33 + 1;
                i13 = iArr2[i10] - i26;
                iF = iArr2[i12];
            } else {
                iF = aVar.f(i19 + 1);
                i13 = iF - iArr2[i12];
            }
            int i34 = iF;
            int i35 = i26;
            System.arraycopy(iArr, i10, iArr, i12, iArr.length - 1);
            iArr[i10] = i13;
            o6.b bVarN = null;
            try {
                int[][] iArr3 = f4600n;
                int i36 = 0;
                while (true) {
                    if (i36 >= 6) {
                        throw z5.i.d;
                    }
                    if (n6.h.d(iArr, iArr3[i36], 0.45f) < 0.2f) {
                        cVar = new o6.c(i36, i35, i34, i9, new int[]{i35, i34});
                        break;
                    }
                    i36++;
                }
            } catch (z5.i unused) {
                cVar = null;
            }
            if (cVar == null) {
                int i37 = iArr2[0];
                iE = aVar.d(i37) ? aVar.e(aVar.f(i37)) : aVar.f(aVar.e(i37));
            } else {
                z9 = false;
            }
            if (!z9) {
                o6.b bVarN2 = n(aVar, cVar, z8, true);
                if (!arrayList.isEmpty() && ((a) arrayList.get(arrayList.size() - 1)).f4594b == null) {
                    throw z5.i.d;
                }
                try {
                    bVarN = n(aVar, cVar, z8, false);
                } catch (z5.i unused2) {
                }
                return new a(bVarN2, bVarN, cVar);
            }
            i14 = i23;
            i15 = 0;
            i16 = 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h, z5.k
    public final void reset() {
        this.f4603g.clear();
        this.f4604h.clear();
    }
}
