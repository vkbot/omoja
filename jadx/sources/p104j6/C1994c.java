package p104j6;

import com.bumptech.glide.AbstractC1034g;
import com.bumptech.glide.manager.C1073s;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.UByte;
import kotlin.text.Typography;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.net.telnet.TelnetCommand;
import p006a5.C0023h;
import p022b7.C0923s;
import p031c6.C0995a;
import p063f6.C1578b;
import p063f6.C1580d;
import p063f6.EnumC1579c;
import p083h6.C1670a;
import p083h6.C1672c;
import p097j.C1897i;
import p099j1.C1929i;
import p130l9.C2237i;
import p184r5.C3105c;
import p231w6.AbstractC3529a;
import p231w6.AbstractC3530b;
import p231w6.C3531c;
import p231w6.C3533e;
import p231w6.C3534f;
import p231w6.EnumC3532d;
import p260z5.C3747c;
import p260z5.C3749e;

/* JADX INFO: renamed from: j6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1994c {

    /* JADX INFO: renamed from: a */
    public final C3105c f5427a;

    public C1994c(int i10) {
        switch (i10) {
            case 1:
                this.f5427a = new C3105c(19, C1670a.f4280o);
                break;
            case 2:
                this.f5427a = new C3105c(19, C1670a.f4277l);
                break;
            default:
                this.f5427a = new C3105c(19, C1670a.f4278m);
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public void m3083a(int i10, int i11, int i12, int i13, byte[] bArr) throws C3747c {
        int i14 = i11 + i12;
        int i15 = i13 == 0 ? 1 : 2;
        int[] iArr = new int[i14 / i15];
        for (int i16 = 0; i16 < i14; i16++) {
            if (i13 == 0 || i16 % 2 == i13 - 1) {
                iArr[i16 / i15] = bArr[i16 + i10] & UByte.MAX_VALUE;
            }
        }
        try {
            this.f5427a.m4941f(iArr, i12 / i15);
            for (int i17 = 0; i17 < i11; i17++) {
                if (i13 == 0 || i17 % 2 == i13 - 1) {
                    bArr[i17 + i10] = (byte) iArr[i17 / i15];
                }
            }
        } catch (C1672c unused) {
            throw C3747c.m5979a();
        }
    }

    /* JADX INFO: renamed from: b */
    public C1580d m3084b(C1073s c1073s, Map map) throws C3747c, C3749e {
        EnumC3532d enumC3532d;
        EnumC3532d enumC3532d2;
        int i10;
        String str;
        int iM1061b;
        C3534f c3534fM1353i = c1073s.m1353i();
        int i11 = c1073s.m1352h().f10484a;
        C3531c c3531cM1352h = c1073s.m1352h();
        C3534f c3534fM1353i2 = c1073s.m1353i();
        int i12 = AbstractC1034g.m1297d(8)[c3531cM1352h.f10485b];
        C1578b c1578b = (C1578b) c1073s.f1178c;
        int i13 = c1578b.f3901c;
        int i14 = 0;
        for (int i15 = 0; i15 < i13; i15++) {
            for (int i16 = 0; i16 < i13; i16++) {
                if (AbstractC3530b.m5634a(i12, i15, i16)) {
                    c1578b.m2657a(i16, i15);
                }
            }
        }
        int i17 = c3534fM1353i2.f10501a * 4;
        int i18 = i17 + 17;
        int i19 = c3534fM1353i2.f10504d;
        C1578b c1578b2 = new C1578b(i18, i18);
        c1578b2.m2663g(0, 0, 9, 9);
        int i20 = i17 + 9;
        c1578b2.m2663g(i20, 0, 8, 9);
        c1578b2.m2663g(0, i20, 9, 8);
        int[] iArr = c3534fM1353i2.f10502b;
        int length = iArr.length;
        int i21 = 0;
        while (i21 < length) {
            int i22 = iArr[i21] - 2;
            for (int i23 = i14; i23 < length; i23++) {
                if ((i21 != 0 || (i23 != 0 && i23 != length - 1)) && (i21 != length - 1 || i23 != 0)) {
                    c1578b2.m2663g(iArr[i23] - 2, i22, 5, 5);
                }
            }
            i21++;
            i14 = 0;
        }
        int i24 = 2;
        int i25 = 6;
        int i26 = 1;
        c1578b2.m2663g(6, 9, 1, i17);
        c1578b2.m2663g(9, 6, i17, 1);
        if (c3534fM1353i2.f10501a > 6) {
            int i27 = i17 + 6;
            c1578b2.m2663g(i27, 0, 3, 6);
            c1578b2.m2663g(0, i27, 6, 3);
        }
        byte[] bArr = new byte[i19];
        int i28 = i13 - 1;
        int i29 = i28;
        boolean z9 = true;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        while (i29 > 0) {
            if (i29 == i25) {
                i29--;
            }
            int i33 = 0;
            while (i33 < i13) {
                int i34 = z9 ? i28 - i33 : i33;
                int i35 = i26;
                int i36 = 0;
                for (int i37 = i24; i36 < i37; i37 = 2) {
                    int i38 = i29 - i36;
                    if (!c1578b2.m2658b(i38, i34)) {
                        i31++;
                        i32 <<= 1;
                        if (c1578b.m2658b(i38, i34)) {
                            i32 |= 1;
                        }
                        if (i31 == 8) {
                            bArr[i30] = (byte) i32;
                            i30++;
                            i31 = 0;
                            i32 = 0;
                        }
                    }
                    i36++;
                }
                i33++;
                i26 = i35;
                i24 = 2;
            }
            z9 = !z9;
            i29 -= 2;
            i25 = 6;
            i24 = 2;
        }
        int i39 = i26;
        if (i30 != i19) {
            throw C3749e.m5980a();
        }
        if (i19 != c3534fM1353i.f10504d) {
            C2237i.m3594a();
            return null;
        }
        C1897i c1897i = c3534fM1353i.f10503c[AbstractC1034g.m1296c(i11)];
        C0995a[] c0995aArr = (C0995a[]) c1897i.f4930c;
        int i40 = c1897i.f4929b;
        int i41 = 0;
        for (C0995a c0995a : c0995aArr) {
            i41 += c0995a.f950b;
        }
        C1992a[] c1992aArr = new C1992a[i41];
        int i42 = 0;
        for (C0995a c0995a2 : c0995aArr) {
            int i43 = 0;
            while (i43 < c0995a2.f950b) {
                int i44 = c0995a2.f951c;
                c1992aArr[i42] = new C1992a(i44, new byte[i40 + i44]);
                i43++;
                i42++;
            }
        }
        int length2 = c1992aArr[0].f5420a.length;
        int i45 = i41 - 1;
        while (i45 >= 0 && c1992aArr[i45].f5420a.length != length2) {
            i45--;
        }
        int i46 = i45 + 1;
        int i47 = length2 - i40;
        int i48 = 0;
        int i49 = 0;
        while (i48 < i47) {
            int i50 = i49;
            int i51 = 0;
            while (i51 < i42) {
                c1992aArr[i51].f5420a[i48] = bArr[i50];
                i51++;
                i50++;
            }
            i48++;
            i49 = i50;
        }
        int i52 = i46;
        while (i52 < i42) {
            c1992aArr[i52].f5420a[i47] = bArr[i49];
            i52++;
            i49++;
        }
        int length3 = c1992aArr[0].f5420a.length;
        while (i47 < length3) {
            int i53 = i49;
            int i54 = 0;
            while (i54 < i42) {
                c1992aArr[i54].f5420a[i54 < i46 ? i47 : i47 + 1] = bArr[i53];
                i54++;
                i53++;
            }
            i47++;
            i49 = i53;
        }
        int i55 = 0;
        for (int i56 = 0; i56 < i41; i56++) {
            i55 += c1992aArr[i56].f5421b;
        }
        byte[] bArr2 = new byte[i55];
        int i57 = 0;
        for (int i58 = 0; i58 < i41; i58++) {
            C1992a c1992a = c1992aArr[i58];
            byte[] bArr3 = c1992a.f5420a;
            int i59 = c1992a.f5421b;
            int length4 = bArr3.length;
            int[] iArr2 = new int[length4];
            for (int i60 = 0; i60 < length4; i60++) {
                iArr2[i60] = bArr3[i60] & UByte.MAX_VALUE;
            }
            try {
                this.f5427a.m4941f(iArr2, bArr3.length - i59);
                for (int i61 = 0; i61 < i59; i61++) {
                    bArr3[i61] = (byte) iArr2[i61];
                }
                int i62 = 0;
                while (i62 < i59) {
                    bArr2[i57] = bArr3[i62];
                    i62++;
                    i57++;
                }
            } catch (C1672c unused) {
                throw C3747c.m5979a();
            }
        }
        char[] cArr = AbstractC3529a.f10481a;
        C0923s c0923s = new C0923s(bArr2);
        StringBuilder sb = new StringBuilder(50);
        ArrayList arrayList = new ArrayList(i39);
        int iM1061b2 = -1;
        int iM1061b3 = -1;
        boolean z10 = false;
        EnumC1579c enumC1579c = null;
        while (true) {
            try {
                int iM1060a = c0923s.m1060a();
                EnumC3532d enumC3532d3 = EnumC3532d.TERMINATOR;
                if (iM1060a < 4) {
                    enumC3532d2 = enumC3532d3;
                } else {
                    int iM1061b4 = c0923s.m1061b(4);
                    if (iM1061b4 == 0) {
                        enumC3532d = enumC3532d3;
                    } else if (iM1061b4 == 1) {
                        enumC3532d = EnumC3532d.NUMERIC;
                    } else if (iM1061b4 == 2) {
                        enumC3532d = EnumC3532d.ALPHANUMERIC;
                    } else if (iM1061b4 == 3) {
                        enumC3532d = EnumC3532d.STRUCTURED_APPEND;
                    } else if (iM1061b4 == 4) {
                        enumC3532d = EnumC3532d.BYTE;
                    } else if (iM1061b4 == 5) {
                        enumC3532d = EnumC3532d.FNC1_FIRST_POSITION;
                    } else if (iM1061b4 == 7) {
                        enumC3532d = EnumC3532d.ECI;
                    } else if (iM1061b4 == 8) {
                        enumC3532d = EnumC3532d.KANJI;
                    } else if (iM1061b4 == 9) {
                        enumC3532d = EnumC3532d.FNC1_SECOND_POSITION;
                    } else {
                        if (iM1061b4 != 13) {
                            throw new IllegalArgumentException();
                        }
                        enumC3532d = EnumC3532d.HANZI;
                    }
                    enumC3532d2 = enumC3532d;
                }
                int iOrdinal = enumC3532d2.ordinal();
                if (iOrdinal == 0) {
                    i10 = iM1061b3;
                } else {
                    if (iOrdinal == 3) {
                        if (c0923s.m1060a() < 16) {
                            throw C3749e.m5980a();
                        }
                        iM1061b2 = c0923s.m1061b(8);
                        iM1061b3 = c0923s.m1061b(8);
                    } else if (iOrdinal == 5) {
                        int iM1061b5 = c0923s.m1061b(8);
                        if ((iM1061b5 & 128) == 0) {
                            iM1061b = iM1061b5 & 127;
                        } else if ((iM1061b5 & 192) == 128) {
                            iM1061b = ((iM1061b5 & 63) << 8) | c0923s.m1061b(8);
                        } else {
                            if ((iM1061b5 & 224) != 192) {
                                throw C3749e.m5980a();
                            }
                            iM1061b = ((iM1061b5 & 31) << 16) | c0923s.m1061b(16);
                        }
                        HashMap map2 = EnumC1579c.f3904d;
                        if (iM1061b < 0 || iM1061b >= 900) {
                            throw C3749e.m5980a();
                        }
                        enumC1579c = (EnumC1579c) EnumC1579c.f3904d.get(Integer.valueOf(iM1061b));
                        if (enumC1579c == null) {
                            throw C3749e.m5980a();
                        }
                        i10 = iM1061b3;
                    } else if (iOrdinal == 7 || iOrdinal == 8) {
                        i10 = iM1061b3;
                        z10 = true;
                    } else if (iOrdinal != 9) {
                        int iM1061b6 = c0923s.m1061b(enumC3532d2.m5636a(c3534fM1353i));
                        int iOrdinal2 = enumC3532d2.ordinal();
                        if (iOrdinal2 == 1) {
                            AbstractC3529a.m5632e(c0923s, sb, iM1061b6);
                        } else if (iOrdinal2 == 2) {
                            AbstractC3529a.m5628a(c0923s, sb, iM1061b6, z10);
                        } else if (iOrdinal2 == 4) {
                            AbstractC3529a.m5629b(c0923s, sb, iM1061b6, enumC1579c, arrayList, map);
                        } else {
                            if (iOrdinal2 != 6) {
                                throw C3749e.m5980a();
                            }
                            AbstractC3529a.m5631d(c0923s, sb, iM1061b6);
                        }
                    } else {
                        int iM1061b7 = c0923s.m1061b(4);
                        int iM1061b8 = c0923s.m1061b(enumC3532d2.m5636a(c3534fM1353i));
                        if (iM1061b7 == 1) {
                            AbstractC3529a.m5630c(c0923s, sb, iM1061b8);
                        }
                    }
                    i10 = iM1061b3;
                }
                if (enumC3532d2 == enumC3532d3) {
                    String string = sb.toString();
                    ArrayList arrayList2 = arrayList.isEmpty() ? null : arrayList;
                    if (i11 == 1) {
                        str = "L";
                    } else if (i11 == 2) {
                        str = "M";
                    } else if (i11 == 3) {
                        str = "Q";
                    } else {
                        if (i11 != 4) {
                            throw null;
                        }
                        str = "H";
                    }
                    return new C1580d(bArr2, string, arrayList2, str, iM1061b2, i10);
                }
                iM1061b3 = i10;
            } catch (IllegalArgumentException unused2) {
                throw C3749e.m5980a();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:493:0x03c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:? A[LOOP:15: B:204:0x0359->B:501:?, LOOP_END, SYNTHETIC] */
    /* JADX INFO: renamed from: c */
    public C1580d m3085c(C1578b c1578b) throws C3747c, C3749e {
        byte[] bArr;
        int i10;
        int iM1061b;
        int i11;
        int iM1061b2;
        int iM1061b3;
        C0023h c0023h = new C0023h(c1578b);
        C1995d c1995d = (C1995d) c0023h.f83e;
        C1578b c1578b2 = (C1578b) c0023h.f82d;
        int i12 = c1995d.f5435g;
        byte[] bArr2 = new byte[i12];
        C1578b c1578b3 = (C1578b) c0023h.f81c;
        int i13 = c1578b3.f3901c;
        int i14 = c1578b3.f3900b;
        int i15 = 0;
        int i16 = 0;
        boolean z9 = false;
        int i17 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        int i18 = 4;
        while (true) {
            if (i18 == i13 && i16 == 0 && !z9) {
                int i19 = i17 + 1;
                int i20 = i13 - 1;
                int i21 = (c0023h.m84t(i20, i15, i13, i14) ? 1 : 0) << 1;
                if (c0023h.m84t(i20, 1, i13, i14)) {
                    i21 |= 1;
                }
                int i22 = i21 << 1;
                if (c0023h.m84t(i20, 2, i13, i14)) {
                    i22 |= 1;
                }
                int i23 = i22 << 1;
                bArr = bArr2;
                if (c0023h.m84t(0, i14 - 2, i13, i14)) {
                    i23 |= 1;
                }
                int i24 = i23 << 1;
                int i25 = i14 - 1;
                if (c0023h.m84t(0, i25, i13, i14)) {
                    i24 |= 1;
                }
                int i26 = i24 << 1;
                if (c0023h.m84t(1, i25, i13, i14)) {
                    i26 |= 1;
                }
                int i27 = i26 << 1;
                if (c0023h.m84t(2, i25, i13, i14)) {
                    i27 |= 1;
                }
                int i28 = i27 << 1;
                if (c0023h.m84t(3, i25, i13, i14)) {
                    i28 |= 1;
                }
                bArr[i17] = (byte) i28;
                i18 -= 2;
                i16 += 2;
                i17 = i19;
                z9 = true;
            } else {
                bArr = bArr2;
                int i29 = i13 - 2;
                if (i18 == i29 && i16 == 0 && (i14 & 3) != 0 && !z10) {
                    int i30 = i17 + 1;
                    int i31 = (c0023h.m84t(i13 + (-3), 0, i13, i14) ? 1 : 0) << 1;
                    if (c0023h.m84t(i29, 0, i13, i14)) {
                        i31 |= 1;
                    }
                    int i32 = i31 << 1;
                    if (c0023h.m84t(i13 - 1, 0, i13, i14)) {
                        i32 |= 1;
                    }
                    int i33 = i32 << 1;
                    if (c0023h.m84t(0, i14 - 4, i13, i14)) {
                        i33 |= 1;
                    }
                    int i34 = i33 << 1;
                    if (c0023h.m84t(0, i14 - 3, i13, i14)) {
                        i34 |= 1;
                    }
                    int i35 = i34 << 1;
                    if (c0023h.m84t(0, i14 - 2, i13, i14)) {
                        i35 |= 1;
                    }
                    int i36 = i35 << 1;
                    int i37 = i14 - 1;
                    if (c0023h.m84t(0, i37, i13, i14)) {
                        i36 |= 1;
                    }
                    int i38 = i36 << 1;
                    if (c0023h.m84t(1, i37, i13, i14)) {
                        i38 |= 1;
                    }
                    bArr[i17] = (byte) i38;
                    i18 -= 2;
                    i16 += 2;
                    i17 = i30;
                    z10 = true;
                } else if (i18 == i13 + 4 && i16 == 2 && (i14 & 7) == 0 && !z11) {
                    int i39 = i17 + 1;
                    int i40 = i13 - 1;
                    int i41 = (c0023h.m84t(i40, 0, i13, i14) ? 1 : 0) << 1;
                    int i42 = i14 - 1;
                    if (c0023h.m84t(i40, i42, i13, i14)) {
                        i41 |= 1;
                    }
                    int i43 = i41 << 1;
                    int i44 = i14 - 3;
                    if (c0023h.m84t(0, i44, i13, i14)) {
                        i43 |= 1;
                    }
                    int i45 = i43 << 1;
                    int i46 = i14 - 2;
                    if (c0023h.m84t(0, i46, i13, i14)) {
                        i45 |= 1;
                    }
                    int i47 = i45 << 1;
                    if (c0023h.m84t(0, i42, i13, i14)) {
                        i47 |= 1;
                    }
                    int i48 = i47 << 1;
                    int i49 = (c0023h.m84t(1, i44, i13, i14) ? i48 | 1 : i48) << 1;
                    if (c0023h.m84t(1, i46, i13, i14)) {
                        i49 |= 1;
                    }
                    int i50 = i49 << 1;
                    if (c0023h.m84t(1, i42, i13, i14)) {
                        i50 |= 1;
                    }
                    bArr[i17] = (byte) i50;
                    i18 -= 2;
                    i16 += 2;
                    i17 = i39;
                    z11 = true;
                } else if (i18 == i29 && i16 == 0 && (i14 & 7) == 4 && !z12) {
                    int i51 = i17 + 1;
                    int i52 = (c0023h.m84t(i13 + (-3), 0, i13, i14) ? 1 : 0) << 1;
                    if (c0023h.m84t(i29, 0, i13, i14)) {
                        i52 |= 1;
                    }
                    int i53 = i52 << 1;
                    if (c0023h.m84t(i13 - 1, 0, i13, i14)) {
                        i53 |= 1;
                    }
                    int i54 = i53 << 1;
                    if (c0023h.m84t(0, i14 - 2, i13, i14)) {
                        i54 |= 1;
                    }
                    int i55 = i54 << 1;
                    int i56 = i14 - 1;
                    if (c0023h.m84t(0, i56, i13, i14)) {
                        i55 |= 1;
                    }
                    int i57 = i55 << 1;
                    if (c0023h.m84t(1, i56, i13, i14)) {
                        i57 |= 1;
                    }
                    int i58 = i57 << 1;
                    if (c0023h.m84t(2, i56, i13, i14)) {
                        i58 |= 1;
                    }
                    int i59 = i58 << 1;
                    if (c0023h.m84t(3, i56, i13, i14)) {
                        i59 |= 1;
                    }
                    bArr[i17] = (byte) i59;
                    i18 -= 2;
                    i16 += 2;
                    i17 = i51;
                    z12 = true;
                } else {
                    while (true) {
                        if (i18 < i13 && i16 >= 0 && !c1578b2.m2658b(i16, i18)) {
                            bArr[i17] = (byte) c0023h.m85u(i18, i16, i13, i14);
                            i17++;
                        }
                        int i60 = i18 - 2;
                        int i61 = i16 + 2;
                        if (i60 < 0 || i61 >= i14) {
                            break;
                        }
                        i18 = i60;
                        i16 = i61;
                    }
                    int i62 = i18 - 1;
                    int i63 = i16 + 5;
                    while (true) {
                        if (i62 >= 0 && i63 < i14 && !c1578b2.m2658b(i63, i62)) {
                            bArr[i17] = (byte) c0023h.m85u(i62, i63, i13, i14);
                            i17++;
                        }
                        int i64 = i62 + 2;
                        int i65 = i63 - 2;
                        if (i64 >= i13 || i65 < 0) {
                            break;
                        }
                        i62 = i64;
                        i63 = i65;
                    }
                    i18 = i62 + 5;
                    i16 = i63 - 1;
                }
            }
            if (i18 >= i13 && i16 >= i14) {
                break;
            }
            i15 = 0;
            bArr2 = bArr;
        }
        if (i17 != c1995d.f5435g) {
            throw C3749e.m5980a();
        }
        C1897i c1897i = c1995d.f5434f;
        C0995a[] c0995aArr = (C0995a[]) c1897i.f4930c;
        int i66 = c1897i.f4929b;
        int i67 = 0;
        for (C0995a c0995a : c0995aArr) {
            i67 += c0995a.f950b;
        }
        C1992a[] c1992aArr = new C1992a[i67];
        int i68 = 0;
        for (C0995a c0995a2 : c0995aArr) {
            int i69 = 0;
            while (i69 < c0995a2.f950b) {
                int i70 = c0995a2.f951c;
                c1992aArr[i68] = new C1992a(i70, new byte[i66 + i70]);
                i69++;
                i68++;
            }
        }
        int length = c1992aArr[0].f5420a.length - i66;
        int i71 = length - 1;
        int i72 = 0;
        for (int i73 = 0; i73 < i71; i73++) {
            int i74 = 0;
            while (i74 < i68) {
                c1992aArr[i74].f5420a[i73] = bArr[i72];
                i74++;
                i72++;
            }
        }
        boolean z13 = c1995d.f5429a == 24;
        int i75 = 8;
        int i76 = z13 ? 8 : i68;
        int i77 = 0;
        while (i77 < i76) {
            c1992aArr[i77].f5420a[i71] = bArr[i72];
            i77++;
            i72++;
        }
        int length2 = c1992aArr[0].f5420a.length;
        while (true) {
            i10 = 7;
            if (length >= length2) {
                break;
            }
            int i78 = 0;
            while (i78 < i68) {
                int i79 = z13 ? (i78 + 8) % i68 : i78;
                c1992aArr[i79].f5420a[(!z13 || i79 <= 7) ? length : length - 1] = bArr[i72];
                i78++;
                i72++;
            }
            length++;
        }
        if (i72 != i12) {
            C2237i.m3594a();
            return null;
        }
        int i80 = 0;
        for (int i81 = 0; i81 < i67; i81++) {
            i80 += c1992aArr[i81].f5421b;
        }
        byte[] bArr3 = new byte[i80];
        for (int i82 = 0; i82 < i67; i82++) {
            C1992a c1992a = c1992aArr[i82];
            byte[] bArr4 = c1992a.f5420a;
            int i83 = c1992a.f5421b;
            int length3 = bArr4.length;
            int[] iArr = new int[length3];
            for (int i84 = 0; i84 < length3; i84++) {
                iArr[i84] = bArr4[i84] & UByte.MAX_VALUE;
            }
            try {
                this.f5427a.m4941f(iArr, bArr4.length - i83);
                for (int i85 = 0; i85 < i83; i85++) {
                    bArr4[i85] = (byte) iArr[i85];
                }
                for (int i86 = 0; i86 < i83; i86++) {
                    bArr3[(i86 * i67) + i82] = bArr4[i86];
                }
            } catch (C1672c unused) {
                throw C3747c.m5979a();
            }
        }
        C0923s c0923s = new C0923s(bArr3);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        int i87 = 2;
        while (true) {
            int i88 = 6;
            if (i87 == 2) {
                boolean z14 = false;
                while (true) {
                    int iM1061b4 = c0923s.m1061b(i75);
                    if (iM1061b4 == 0) {
                        throw C3749e.m5980a();
                    }
                    if (iM1061b4 <= 128) {
                        if (z14) {
                            iM1061b4 += 128;
                        }
                        sb.append((char) (iM1061b4 - 1));
                        i88 = 2;
                    } else if (iM1061b4 == 129) {
                        i88 = 1;
                    } else {
                        if (iM1061b4 > 229) {
                            switch (iM1061b4) {
                                case 230:
                                    i88 = 3;
                                    break;
                                case NNTPReply.NEW_NEWSGROUP_LIST_FOLLOWS /* 231 */:
                                    i88 = i10;
                                    break;
                                case 232:
                                    sb.append((char) 29);
                                    if (c0923s.m1060a() <= 0) {
                                        i88 = 2;
                                    }
                                    break;
                                case 233:
                                case FTPReply.SECURITY_DATA_EXCHANGE_COMPLETE /* 234 */:
                                case TelnetCommand.NOP /* 241 */:
                                    break;
                                case 235:
                                    z14 = true;
                                    if (c0923s.m1060a() <= 0) {
                                        i88 = 2;
                                    }
                                    break;
                                case TelnetCommand.EOF /* 236 */:
                                    sb.append("[)>\u001e05\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (c0923s.m1060a() <= 0) {
                                        i88 = 2;
                                    }
                                    break;
                                case TelnetCommand.SUSP /* 237 */:
                                    sb.append("[)>\u001e06\u001d");
                                    sb2.insert(0, "\u001e\u0004");
                                    if (c0923s.m1060a() <= 0) {
                                        i88 = 2;
                                    }
                                    break;
                                case TelnetCommand.ABORT /* 238 */:
                                    i88 = 5;
                                    break;
                                case TelnetCommand.EOR /* 239 */:
                                    i88 = 4;
                                    break;
                                case 240:
                                    break;
                                default:
                                    if (iM1061b4 != 254 || c0923s.m1060a() != 0) {
                                        throw C3749e.m5980a();
                                    }
                                    break;
                            }
                        } else {
                            int i89 = iM1061b4 - 130;
                            if (i89 < 10) {
                                sb.append('0');
                            }
                            sb.append(i89);
                        }
                        if (c0923s.m1060a() <= 0) {
                            i88 = 2;
                        }
                    }
                }
                i87 = i88;
            } else {
                int iM1296c = AbstractC1034g.m1296c(i87);
                if (iM1296c == 2) {
                    int i90 = 3;
                    int[] iArr2 = new int[3];
                    boolean z15 = false;
                    int i91 = 0;
                    while (true) {
                        if (c0923s.m1060a() != 8 && (iM1061b = c0923s.m1061b(8)) != 254) {
                            AbstractC1993b.m3081a(iM1061b, c0923s.m1061b(8), iArr2);
                            int i92 = i91;
                            boolean z16 = z15;
                            int i93 = 0;
                            while (i93 < i90) {
                                int i94 = iArr2[i93];
                                if (i92 != 0) {
                                    if (i92 != 1) {
                                        if (i92 != 2) {
                                            if (i92 != i90) {
                                                throw C3749e.m5980a();
                                            }
                                            if (z16) {
                                                sb.append((char) (i94 + 224));
                                                z16 = false;
                                            } else {
                                                sb.append((char) (i94 + 96));
                                            }
                                        } else if (i94 < 27) {
                                            char c = AbstractC1993b.f5423b[i94];
                                            if (z16) {
                                                sb.append((char) (c + 128));
                                                z16 = false;
                                            } else {
                                                sb.append(c);
                                            }
                                        } else if (i94 == 27) {
                                            sb.append((char) 29);
                                        } else {
                                            if (i94 != 30) {
                                                throw C3749e.m5980a();
                                            }
                                            z16 = true;
                                        }
                                    } else if (z16) {
                                        sb.append((char) (i94 + 128));
                                        z16 = false;
                                    } else {
                                        sb.append((char) i94);
                                    }
                                    i92 = 0;
                                } else if (i94 < i90) {
                                    i92 = i94 + 1;
                                } else {
                                    if (i94 >= 40) {
                                        throw C3749e.m5980a();
                                    }
                                    char c10 = AbstractC1993b.f5422a[i94];
                                    if (z16) {
                                        sb.append((char) (c10 + 128));
                                        z16 = false;
                                    } else {
                                        sb.append(c10);
                                    }
                                }
                                i93++;
                                i90 = 3;
                            }
                            i11 = 2;
                            if (c0923s.m1060a() > 0) {
                                z15 = z16;
                                i91 = i92;
                                i90 = 3;
                            }
                        }
                    }
                    i87 = i11;
                } else if (iM1296c == 3) {
                    int i95 = 3;
                    int[] iArr3 = new int[3];
                    boolean z17 = false;
                    int i96 = 0;
                    for (int i97 = TelnetCommand.DONT; c0923s.m1060a() != i75 && (iM1061b2 = c0923s.m1061b(i75)) != i97; i97 = TelnetCommand.DONT) {
                        AbstractC1993b.m3081a(iM1061b2, c0923s.m1061b(i75), iArr3);
                        int i98 = i96;
                        int i99 = 0;
                        while (i99 < i95) {
                            int i100 = iArr3[i99];
                            if (i98 != 0) {
                                if (i98 != 1) {
                                    if (i98 != 2) {
                                        if (i98 != i95) {
                                            throw C3749e.m5980a();
                                        }
                                        if (i100 >= 32) {
                                            throw C3749e.m5980a();
                                        }
                                        char c11 = AbstractC1993b.f5426e[i100];
                                        if (z17) {
                                            sb.append((char) (c11 + 128));
                                            z17 = false;
                                        } else {
                                            sb.append(c11);
                                        }
                                    } else if (i100 < 27) {
                                        char c12 = AbstractC1993b.f5425d[i100];
                                        if (z17) {
                                            sb.append((char) (c12 + 128));
                                            z17 = false;
                                        } else {
                                            sb.append(c12);
                                        }
                                    } else if (i100 == 27) {
                                        sb.append((char) 29);
                                    } else {
                                        if (i100 != 30) {
                                            throw C3749e.m5980a();
                                        }
                                        z17 = true;
                                    }
                                } else if (z17) {
                                    sb.append((char) (i100 + 128));
                                    z17 = false;
                                } else {
                                    sb.append((char) i100);
                                }
                                i98 = 0;
                            } else if (i100 < i95) {
                                i98 = i100 + 1;
                            } else {
                                if (i100 >= 40) {
                                    throw C3749e.m5980a();
                                }
                                char c13 = AbstractC1993b.f5424c[i100];
                                if (z17) {
                                    sb.append((char) (c13 + 128));
                                    z17 = false;
                                } else {
                                    sb.append(c13);
                                }
                            }
                            i99++;
                            i95 = 3;
                        }
                        if (c0923s.m1060a() > 0) {
                            i96 = i98;
                            i75 = 8;
                            i95 = 3;
                        }
                    }
                } else if (iM1296c == 4) {
                    int i101 = 3;
                    int[] iArr4 = new int[3];
                    while (c0923s.m1060a() != i75 && (iM1061b3 = c0923s.m1061b(i75)) != 254) {
                        AbstractC1993b.m3081a(iM1061b3, c0923s.m1061b(i75), iArr4);
                        int i102 = 0;
                        while (i102 < i101) {
                            int i103 = iArr4[i102];
                            if (i103 == 0) {
                                sb.append('\r');
                            } else if (i103 == 1) {
                                sb.append('*');
                            } else if (i103 == 2) {
                                sb.append(Typography.greater);
                            } else if (i103 == i101) {
                                sb.append(' ');
                            } else if (i103 < 14) {
                                sb.append((char) (i103 + 44));
                            } else {
                                if (i103 >= 40) {
                                    throw C3749e.m5980a();
                                }
                                sb.append((char) (i103 + 51));
                            }
                            i102++;
                            i101 = 3;
                        }
                        if (c0923s.m1060a() > 0) {
                            i101 = 3;
                        }
                    }
                } else if (iM1296c == 5) {
                    while (c0923s.m1060a() > 16) {
                        int i104 = 0;
                        while (true) {
                            if (i104 < 4) {
                                int iM1061b5 = c0923s.m1061b(6);
                                if (iM1061b5 == 31) {
                                    int i105 = 8 - c0923s.f774b;
                                    if (i105 != i75) {
                                        c0923s.m1061b(i105);
                                    }
                                } else {
                                    if ((iM1061b5 & 32) == 0) {
                                        iM1061b5 |= 64;
                                    }
                                    sb.append((char) iM1061b5);
                                    i104++;
                                }
                            } else if (c0923s.m1060a() <= 0) {
                            }
                        }
                    }
                } else {
                    if (iM1296c != 6) {
                        throw C3749e.m5980a();
                    }
                    int i106 = c0923s.f773a;
                    int i107 = i106 + 2;
                    int iM3082b = AbstractC1993b.m3082b(c0923s.m1061b(i75), i106 + 1);
                    if (iM3082b == 0) {
                        iM3082b = c0923s.m1060a() / 8;
                    } else if (iM3082b >= 250) {
                        iM3082b = ((iM3082b - 249) * 250) + AbstractC1993b.m3082b(c0923s.m1061b(i75), i107);
                        i107 = i106 + 3;
                    }
                    if (iM3082b < 0) {
                        throw C3749e.m5980a();
                    }
                    byte[] bArr5 = new byte[iM3082b];
                    int i108 = 0;
                    while (i108 < iM3082b) {
                        if (c0923s.m1060a() < i75) {
                            throw C3749e.m5980a();
                        }
                        bArr5[i108] = (byte) AbstractC1993b.m3082b(c0923s.m1061b(i75), i107);
                        i108++;
                        i107++;
                    }
                    arrayList.add(bArr5);
                    try {
                        sb.append(new String(bArr5, "ISO8859_1"));
                    } catch (UnsupportedEncodingException e) {
                        C1929i.m3030l("Platform does not support required encoding: ".concat(String.valueOf(e)));
                        return null;
                    }
                }
                i11 = 2;
                i87 = i11;
            }
            if (i87 == 1 || c0923s.m1060a() <= 0) {
                if (sb2.length() > 0) {
                    sb.append((CharSequence) sb2);
                }
                String string = sb.toString();
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                return new C1580d(bArr3, string, arrayList, null);
            }
            i75 = 8;
            i10 = 7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002a A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0031 A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x003b A[Catch: c | e -> 0x0052, TryCatch #0 {c | e -> 0x0052, blocks: (B:9:0x0011, B:10:0x0026, B:12:0x002a, B:13:0x002d, B:15:0x0031, B:17:0x003b, B:18:0x0041, B:20:0x0046), top: B:25:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0041 A[SYNTHETIC] */
    /* JADX INFO: renamed from: d */
    public C1580d m3086d(C1578b c1578b, Map map) throws C3747c, C3749e {
        C3747c c3747c;
        C1578b c1578b2;
        int i10;
        int i11;
        C1073s c1073s = new C1073s(c1578b);
        try {
            return m3084b(c1073s, map);
        } catch (C3747c e) {
            c3747c = e;
            e = null;
            try {
                c1073s.m1354j();
                c1073s.f1179d = null;
                c1073s.f1180e = null;
                c1073s.f1177b = true;
                c1073s.m1353i();
                c1073s.m1352h();
                c1578b2 = (C1578b) c1073s.f1178c;
                i10 = 0;
                while (i10 < c1578b2.f3900b) {
                    int i12 = i10 + 1;
                    for (i11 = i12; i11 < c1578b2.f3901c; i11++) {
                        if (c1578b2.m2658b(i10, i11) != c1578b2.m2658b(i11, i10)) {
                            c1578b2.m2657a(i11, i10);
                            c1578b2.m2657a(i10, i11);
                        }
                    }
                    i10 = i12;
                }
                C1580d c1580dM3084b = m3084b(c1073s, map);
                c1580dM3084b.f3915g = new C3533e();
                return c1580dM3084b;
            } catch (C3747c | C3749e unused) {
                if (e != null) {
                    throw e;
                }
                throw c3747c;
            }
        } catch (C3749e e6) {
            e = e6;
            c3747c = null;
            c1073s.m1354j();
            c1073s.f1179d = null;
            c1073s.f1180e = null;
            c1073s.f1177b = true;
            c1073s.m1353i();
            c1073s.m1352h();
            c1578b2 = (C1578b) c1073s.f1178c;
            i10 = 0;
            while (i10 < c1578b2.f3900b) {
                int i13 = i10 + 1;
                while (i11 < c1578b2.f3901c) {
                    if (c1578b2.m2658b(i10, i11) != c1578b2.m2658b(i11, i10)) {
                        c1578b2.m2657a(i11, i10);
                        c1578b2.m2657a(i10, i11);
                    }
                }
                i10 = i13;
            }
            C1580d c1580dM3084b2 = m3084b(c1073s, map);
            c1580dM3084b2.f3915g = new C3533e();
            return c1580dM3084b2;
        }
    }
}
