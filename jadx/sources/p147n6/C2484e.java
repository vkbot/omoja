package p147n6;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Map;
import p063f6.C1577a;
import p260z5.C3746b;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.EnumC3745a;

/* JADX INFO: renamed from: n6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2484e extends AbstractC2490k {

    /* JADX INFO: renamed from: j */
    public static final int[] f6849j = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* JADX INFO: renamed from: k */
    public static final int[] f6850k = {1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: l */
    public static final int[][] f6851l = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f6852h;

    /* JADX INFO: renamed from: i */
    public final Object f6853i;

    public C2484e(int i10) {
        this.f6852h = i10;
        switch (i10) {
            case 1:
                this.f6853i = new int[4];
                break;
            case 2:
                this.f6853i = new int[4];
                break;
            case 3:
                this.f6853i = new C2484e(0);
                break;
            default:
                this.f6853i = new int[4];
                break;
        }
    }

    /* JADX INFO: renamed from: o */
    public static C3757m m3862o(C3757m c3757m) throws C3749e {
        String str = c3757m.f11198a;
        if (str.charAt(0) != '0') {
            throw C3749e.m5980a();
        }
        C3757m c3757m2 = new C3757m(str.substring(1), null, c3757m.f11200c, EnumC3745a.f11166p);
        Map map = c3757m.f11202e;
        if (map != null) {
            c3757m2.m5987a(map);
        }
        return c3757m2;
    }

    @Override // p147n6.AbstractC2487h, p260z5.InterfaceC3755k
    /* JADX INFO: renamed from: a */
    public C3757m mo89a(C3746b c3746b, Map map) {
        switch (this.f6852h) {
            case 3:
                return m3862o(((C2484e) this.f6853i).mo89a(c3746b, map));
            default:
                return super.mo89a(c3746b, map);
        }
    }

    @Override // p147n6.AbstractC2490k, p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public C3757m mo3857b(int i10, C1577a c1577a, Map map) {
        switch (this.f6852h) {
            case 3:
                return m3862o(((C2484e) this.f6853i).mo3857b(i10, c1577a, map));
            default:
                return super.mo3857b(i10, c1577a, map);
        }
    }

    @Override // p147n6.AbstractC2490k
    /* JADX INFO: renamed from: g */
    public boolean mo3863g(String str) {
        switch (this.f6852h) {
            case 1:
                char[] cArr = new char[6];
                str.getChars(1, 7, cArr, 0);
                StringBuilder sb = new StringBuilder(12);
                sb.append(str.charAt(0));
                char c = cArr[5];
                switch (c) {
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                    case '2':
                        sb.append(cArr, 0, 2);
                        sb.append(c);
                        sb.append("0000");
                        sb.append(cArr, 2, 3);
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        sb.append(cArr, 0, 3);
                        sb.append("00000");
                        sb.append(cArr, 3, 2);
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
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
                return super.mo3863g(sb.toString());
            default:
                return super.mo3863g(str);
        }
    }

    @Override // p147n6.AbstractC2490k
    /* JADX INFO: renamed from: i */
    public int[] mo3864i(C1577a c1577a, int i10) {
        switch (this.f6852h) {
            case 1:
                return AbstractC2490k.m3879l(c1577a, i10, true, f6850k, new int[6]);
            default:
                return super.mo3864i(c1577a, i10);
        }
    }

    @Override // p147n6.AbstractC2490k
    /* JADX INFO: renamed from: j */
    public final int mo3865j(C1577a c1577a, int[] iArr, StringBuilder sb) throws C3753i {
        int[][] iArr2;
        switch (this.f6852h) {
            case 0:
                int[] iArr3 = (int[]) this.f6853i;
                iArr3[0] = 0;
                iArr3[1] = 0;
                iArr3[2] = 0;
                iArr3[3] = 0;
                int i10 = c1577a.f3899c;
                int i11 = iArr[1];
                int i12 = 0;
                for (int i13 = 0; i13 < 6 && i11 < i10; i13++) {
                    int iM3878h = AbstractC2490k.m3878h(c1577a, iArr3, i11, AbstractC2490k.f6872g);
                    sb.append((char) ((iM3878h % 10) + 48));
                    for (int i14 : iArr3) {
                        i11 += i14;
                    }
                    if (iM3878h >= 10) {
                        i12 |= 1 << (5 - i13);
                    }
                }
                for (int i15 = 0; i15 < 10; i15++) {
                    if (i12 == f6849j[i15]) {
                        sb.insert(0, (char) (i15 + 48));
                        int i16 = AbstractC2490k.m3879l(c1577a, i11, true, AbstractC2490k.f6870e, new int[5])[1];
                        for (int i17 = 0; i17 < 6 && i16 < i10; i17++) {
                            sb.append((char) (AbstractC2490k.m3878h(c1577a, iArr3, i16, AbstractC2490k.f6871f) + 48));
                            for (int i18 : iArr3) {
                                i16 += i18;
                            }
                        }
                        return i16;
                    }
                }
                throw C3753i.f11192d;
            case 1:
                int[] iArr4 = (int[]) this.f6853i;
                iArr4[0] = 0;
                iArr4[1] = 0;
                iArr4[2] = 0;
                iArr4[3] = 0;
                int i19 = c1577a.f3899c;
                int i20 = iArr[1];
                int i21 = 0;
                for (int i22 = 0; i22 < 6 && i20 < i19; i22++) {
                    int iM3878h2 = AbstractC2490k.m3878h(c1577a, iArr4, i20, AbstractC2490k.f6872g);
                    sb.append((char) ((iM3878h2 % 10) + 48));
                    for (int i23 : iArr4) {
                        i20 += i23;
                    }
                    if (iM3878h2 >= 10) {
                        i21 |= 1 << (5 - i22);
                    }
                }
                for (int i24 = 0; i24 <= 1; i24++) {
                    for (int i25 = 0; i25 < 10; i25++) {
                        if (i21 == f6851l[i24][i25]) {
                            sb.insert(0, (char) (i24 + 48));
                            sb.append((char) (i25 + 48));
                            return i20;
                        }
                    }
                }
                throw C3753i.f11192d;
            case 2:
                int[] iArr5 = (int[]) this.f6853i;
                iArr5[0] = 0;
                iArr5[1] = 0;
                iArr5[2] = 0;
                iArr5[3] = 0;
                int i26 = c1577a.f3899c;
                int i27 = iArr[1];
                int i28 = 0;
                while (true) {
                    iArr2 = AbstractC2490k.f6871f;
                    if (i28 < 4 && i27 < i26) {
                        sb.append((char) (AbstractC2490k.m3878h(c1577a, iArr5, i27, iArr2) + 48));
                        for (int i29 : iArr5) {
                            i27 += i29;
                        }
                        i28++;
                    }
                }
                int i30 = AbstractC2490k.m3879l(c1577a, i27, true, AbstractC2490k.f6870e, new int[5])[1];
                for (int i31 = 0; i31 < 4 && i30 < i26; i31++) {
                    sb.append((char) (AbstractC2490k.m3878h(c1577a, iArr5, i30, iArr2) + 48));
                    for (int i32 : iArr5) {
                        i30 += i32;
                    }
                }
                return i30;
            default:
                return ((C2484e) this.f6853i).mo3865j(c1577a, iArr, sb);
        }
    }

    @Override // p147n6.AbstractC2490k
    /* JADX INFO: renamed from: k */
    public C3757m mo3866k(int i10, C1577a c1577a, int[] iArr, Map map) {
        switch (this.f6852h) {
            case 3:
                return m3862o(((C2484e) this.f6853i).mo3866k(i10, c1577a, iArr, map));
            default:
                return super.mo3866k(i10, c1577a, iArr, map);
        }
    }

    @Override // p147n6.AbstractC2490k
    /* JADX INFO: renamed from: n */
    public final EnumC3745a mo3867n() {
        switch (this.f6852h) {
            case 0:
                return EnumC3745a.f11159i;
            case 1:
                return EnumC3745a.f11167q;
            case 2:
                return EnumC3745a.f11158h;
            default:
                return EnumC3745a.f11166p;
        }
    }
}
