package n6;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Map;
import z5.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends k {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f3866j = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f3867k = {1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[][] f3868l = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f3869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f3870i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(int i9) {
        this.f3869h = i9;
        switch (i9) {
            case 1:
                this.f3870i = new int[4];
                break;
            case 2:
                this.f3870i = new int[4];
                break;
            case 3:
                this.f3870i = new e(0);
                break;
            default:
                this.f3870i = new int[4];
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static m o(m mVar) throws z5.e {
        String str = mVar.f6329a;
        if (str.charAt(0) != '0') {
            throw z5.e.a();
        }
        m mVar2 = new m(str.substring(1), null, mVar.c, z5.a.f6310p);
        Map map = mVar.e;
        if (map != null) {
            mVar2.a(map);
        }
        return mVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h, z5.k
    public m a(z5.b bVar, Map map) {
        switch (this.f3869h) {
            case 3:
                return o(((e) this.f3870i).a(bVar, map));
            default:
                return super.a(bVar, map);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k, n6.h
    public m b(int i9, f6.a aVar, Map map) {
        switch (this.f3869h) {
            case 3:
                return o(((e) this.f3870i).b(i9, aVar, map));
            default:
                return super.b(i9, aVar, map);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k
    public boolean g(String str) {
        switch (this.f3869h) {
            case 1:
                char[] cArr = new char[6];
                str.getChars(1, 7, cArr, 0);
                StringBuilder sb = new StringBuilder(12);
                sb.append(str.charAt(0));
                char c = cArr[5];
                switch (c) {
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    case '2':
                        sb.append(cArr, 0, 2);
                        sb.append(c);
                        sb.append("0000");
                        sb.append(cArr, 2, 3);
                        break;
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        sb.append(cArr, 0, 3);
                        sb.append("00000");
                        sb.append(cArr, 3, 2);
                        break;
                    case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                        sb.append(cArr, 0, 4);
                        sb.append("00000");
                        sb.append(cArr[4]);
                        break;
                    default:
                        sb.append(cArr, 0, 5);
                        sb.append("0000");
                        sb.append(c);
                        break;
                }
                if (str.length() >= 8) {
                    sb.append(str.charAt(7));
                }
                return super.g(sb.toString());
            default:
                return super.g(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k
    public int[] i(f6.a aVar, int i9) {
        switch (this.f3869h) {
            case 1:
                return k.l(aVar, i9, true, f3867k, new int[6]);
            default:
                return super.i(aVar, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k
    public final int j(f6.a aVar, int[] iArr, StringBuilder sb) throws z5.i {
        int[][] iArr2;
        switch (this.f3869h) {
            case 0:
                int[] iArr3 = (int[]) this.f3870i;
                iArr3[0] = 0;
                iArr3[1] = 0;
                iArr3[2] = 0;
                iArr3[3] = 0;
                int i9 = aVar.c;
                int i10 = iArr[1];
                int i11 = 0;
                for (int i12 = 0; i12 < 6 && i10 < i9; i12++) {
                    int iH = k.h(aVar, iArr3, i10, k.f3880g);
                    sb.append((char) ((iH % 10) + 48));
                    for (int i13 : iArr3) {
                        i10 += i13;
                    }
                    if (iH >= 10) {
                        i11 |= 1 << (5 - i12);
                    }
                }
                for (int i14 = 0; i14 < 10; i14++) {
                    if (i11 == f3866j[i14]) {
                        sb.insert(0, (char) (i14 + 48));
                        int i15 = k.l(aVar, i10, true, k.e, new int[5])[1];
                        for (int i16 = 0; i16 < 6 && i15 < i9; i16++) {
                            sb.append((char) (k.h(aVar, iArr3, i15, k.f3879f) + 48));
                            for (int i17 : iArr3) {
                                i15 += i17;
                            }
                        }
                        return i15;
                    }
                }
                throw z5.i.d;
            case 1:
                int[] iArr4 = (int[]) this.f3870i;
                iArr4[0] = 0;
                iArr4[1] = 0;
                iArr4[2] = 0;
                iArr4[3] = 0;
                int i18 = aVar.c;
                int i19 = iArr[1];
                int i20 = 0;
                for (int i21 = 0; i21 < 6 && i19 < i18; i21++) {
                    int iH2 = k.h(aVar, iArr4, i19, k.f3880g);
                    sb.append((char) ((iH2 % 10) + 48));
                    for (int i22 : iArr4) {
                        i19 += i22;
                    }
                    if (iH2 >= 10) {
                        i20 |= 1 << (5 - i21);
                    }
                }
                for (int i23 = 0; i23 <= 1; i23++) {
                    for (int i24 = 0; i24 < 10; i24++) {
                        if (i20 == f3868l[i23][i24]) {
                            sb.insert(0, (char) (i23 + 48));
                            sb.append((char) (i24 + 48));
                            return i19;
                        }
                    }
                }
                throw z5.i.d;
            case 2:
                int[] iArr5 = (int[]) this.f3870i;
                iArr5[0] = 0;
                iArr5[1] = 0;
                iArr5[2] = 0;
                iArr5[3] = 0;
                int i25 = aVar.c;
                int i26 = iArr[1];
                int i27 = 0;
                while (true) {
                    iArr2 = k.f3879f;
                    if (i27 < 4 && i26 < i25) {
                        sb.append((char) (k.h(aVar, iArr5, i26, iArr2) + 48));
                        for (int i28 : iArr5) {
                            i26 += i28;
                        }
                        i27++;
                    }
                }
                int i29 = k.l(aVar, i26, true, k.e, new int[5])[1];
                for (int i30 = 0; i30 < 4 && i29 < i25; i30++) {
                    sb.append((char) (k.h(aVar, iArr5, i29, iArr2) + 48));
                    for (int i31 : iArr5) {
                        i29 += i31;
                    }
                }
                return i29;
            default:
                return ((e) this.f3870i).j(aVar, iArr, sb);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k
    public m k(int i9, f6.a aVar, int[] iArr, Map map) {
        switch (this.f3869h) {
            case 3:
                return o(((e) this.f3870i).k(i9, aVar, iArr, map));
            default:
                return super.k(i9, aVar, iArr, map);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.k
    public final z5.a n() {
        switch (this.f3869h) {
            case 0:
                return z5.a.f6303i;
            case 1:
                return z5.a.f6311q;
            case 2:
                return z5.a.f6302h;
            default:
                return z5.a.f6310p;
        }
    }
}
