package p169p6;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.p160ws.WebSocketProtocol;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.imap.IMAP;
import org.apache.commons.net.nntp.NNTP;
import org.apache.commons.net.nntp.NNTPReply;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p063f6.C1577a;
import p099j1.C1929i;
import p147n6.AbstractC2487h;
import p151o.AbstractC2563b;
import p155o4.AbstractC2587b;
import p156o6.AbstractC2594a;
import p156o6.C2595b;
import p156o6.C2596c;
import p178q6.C3063a;
import p178q6.C3064b;
import p178q6.C3065c;
import p178q6.C3068f;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;

/* JADX INFO: renamed from: p6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2975c extends AbstractC2594a {

    /* JADX INFO: renamed from: k */
    public static final int[] f8274k = {7, 5, 4, 3, 1};

    /* JADX INFO: renamed from: l */
    public static final int[] f8275l = {4, 20, 52, LocationRequestCompat.QUALITY_LOW_POWER, 204};

    /* JADX INFO: renamed from: m */
    public static final int[] f8276m = {0, 348, 1388, 2948, 3988};

    /* JADX INFO: renamed from: n */
    public static final int[][] f8277n = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* JADX INFO: renamed from: o */
    public static final int[][] f8278o = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, IMAP.DEFAULT_PORT, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, NNTPReply.CLOSING_CONNECTION}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{FTPReply.FILE_STATUS_OK, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, NNTP.DEFAULT_PORT, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 116, 137, 200, 178, 112, FTPReply.DATA_CONNECTION_ALREADY_OPEN, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{FTPReply.SERVICE_NOT_READY, 149, 25, 75, 14, 42, WebSocketProtocol.PAYLOAD_SHORT, 167}, new int[]{79, 26, 78, 23, 69, 207, NNTPReply.DEBUG_OUTPUT, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* JADX INFO: renamed from: p */
    public static final int[][] f8279p = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* JADX INFO: renamed from: g */
    public final ArrayList f8280g = new ArrayList(11);

    /* JADX INFO: renamed from: h */
    public final ArrayList f8281h = new ArrayList();

    /* JADX INFO: renamed from: i */
    public final int[] f8282i = new int[2];

    /* JADX INFO: renamed from: j */
    public boolean f8283j;

    /* JADX INFO: renamed from: m */
    public static C3757m m4759m(List list) {
        AbstractC2563b c3063a;
        int size = list.size() << 1;
        int i10 = size - 1;
        if (((C2973a) list.get(list.size() - 1)).f8270b == null) {
            i10 = size - 2;
        }
        C1577a c1577a = new C1577a(i10 * 12);
        int i11 = ((C2973a) list.get(0)).f8270b.f7235a;
        int i12 = 0;
        for (int i13 = 11; i13 >= 0; i13--) {
            if (((1 << i13) & i11) != 0) {
                c1577a.m2656j(i12);
            }
            i12++;
        }
        for (int i14 = 1; i14 < list.size(); i14++) {
            C2973a c2973a = (C2973a) list.get(i14);
            int i15 = c2973a.f8269a.f7235a;
            for (int i16 = 11; i16 >= 0; i16--) {
                if (((1 << i16) & i15) != 0) {
                    c1577a.m2656j(i12);
                }
                i12++;
            }
            C2595b c2595b = c2973a.f8270b;
            if (c2595b != null) {
                int i17 = c2595b.f7235a;
                for (int i18 = 11; i18 >= 0; i18--) {
                    if (((1 << i18) & i17) != 0) {
                        c1577a.m2656j(i12);
                    }
                    i12++;
                }
            }
        }
        if (c1577a.m2650d(1)) {
            c3063a = new C3064b(c1577a, 2);
        } else if (c1577a.m2650d(2)) {
            int iM63h = C0023h.m63h(1, 4, c1577a);
            if (iM63h == 4) {
                c3063a = new C3063a(c1577a, 0);
            } else if (iM63h != 5) {
                int iM63h2 = C0023h.m63h(1, 5, c1577a);
                if (iM63h2 == 12) {
                    c3063a = new C3064b(c1577a, 0);
                } else if (iM63h2 != 13) {
                    switch (C0023h.m63h(1, 7, c1577a)) {
                        case 56:
                            c3063a = new C3065c(c1577a, "310", "11");
                            break;
                        case 57:
                            c3063a = new C3065c(c1577a, "320", "11");
                            break;
                        case 58:
                            c3063a = new C3065c(c1577a, "310", "13");
                            break;
                        case 59:
                            c3063a = new C3065c(c1577a, "320", "13");
                            break;
                        case 60:
                            c3063a = new C3065c(c1577a, "310", "15");
                            break;
                        case 61:
                            c3063a = new C3065c(c1577a, "320", "15");
                            break;
                        case 62:
                            c3063a = new C3065c(c1577a, "310", "17");
                            break;
                        case 63:
                            c3063a = new C3065c(c1577a, "320", "17");
                            break;
                        default:
                            C1929i.m3030l("unknown decoder: ".concat(String.valueOf(c1577a)));
                            return null;
                    }
                } else {
                    c3063a = new C3064b(c1577a, 1);
                }
            } else {
                c3063a = new C3063a(c1577a, 1);
            }
        } else {
            c3063a = new C3068f(c1577a);
        }
        String strMo3997a = c3063a.mo3997a();
        C3759o[] c3759oArr = ((C2973a) list.get(0)).f8271c.f7239c;
        C3759o[] c3759oArr2 = ((C2973a) list.get(list.size() - 1)).f8271c.f7239c;
        return new C3757m(strMo3997a, null, new C3759o[]{c3759oArr[0], c3759oArr[1], c3759oArr2[0], c3759oArr2[1]}, EnumC3745a.f11165o);
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) {
        ArrayList arrayList = this.f8280g;
        arrayList.clear();
        this.f8283j = false;
        try {
            return m4759m(m4764o(c1577a, i10));
        } catch (C3753i unused) {
            arrayList.clear();
            this.f8283j = true;
            return m4759m(m4764o(c1577a, i10));
        }
    }

    /* JADX INFO: renamed from: j */
    public final boolean m4760j() {
        ArrayList arrayList = this.f8280g;
        C2973a c2973a = (C2973a) arrayList.get(0);
        C2595b c2595b = c2973a.f8269a;
        C2595b c2595b2 = c2973a.f8270b;
        if (c2595b2 != null) {
            int i10 = c2595b2.f7236b;
            int i11 = 2;
            for (int i12 = 1; i12 < arrayList.size(); i12++) {
                C2973a c2973a2 = (C2973a) arrayList.get(i12);
                i10 += c2973a2.f8269a.f7236b;
                int i13 = i11 + 1;
                C2595b c2595b3 = c2973a2.f8270b;
                if (c2595b3 != null) {
                    i10 += c2595b3.f7236b;
                    i11 += 2;
                } else {
                    i11 = i13;
                }
            }
            if (((i11 - 4) * 211) + (i10 % 211) == c2595b.f7235a) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: k */
    public final List m4761k(ArrayList arrayList, int i10) throws C3753i {
        while (true) {
            ArrayList arrayList2 = this.f8281h;
            if (i10 >= arrayList2.size()) {
                throw C3753i.f11192d;
            }
            C2974b c2974b = (C2974b) arrayList2.get(i10);
            ArrayList arrayList3 = this.f8280g;
            arrayList3.clear();
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                arrayList3.addAll(((C2974b) obj).f8272a);
            }
            arrayList3.addAll(c2974b.f8272a);
            for (int i12 = 0; i12 < 10; i12++) {
                int[] iArr = f8279p[i12];
                if (arrayList3.size() <= iArr.length) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= arrayList3.size()) {
                            if (!m4760j()) {
                                ArrayList arrayList4 = new ArrayList(arrayList);
                                arrayList4.add(c2974b);
                                try {
                                    return m4761k(arrayList4, i10 + 1);
                                } catch (C3753i unused) {
                                    break;
                                }
                            }
                            return arrayList3;
                        }
                        if (((C2973a) arrayList3.get(i13)).f8271c.f7237a != iArr[i13]) {
                            break;
                        }
                        i13++;
                    }
                }
            }
            i10++;
        }
    }

    /* JADX INFO: renamed from: l */
    public final List m4762l(boolean z9) {
        ArrayList arrayList = this.f8281h;
        List listM4761k = null;
        if (arrayList.size() > 25) {
            arrayList.clear();
            return null;
        }
        this.f8280g.clear();
        if (z9) {
            Collections.reverse(arrayList);
        }
        try {
            listM4761k = m4761k(new ArrayList(), 0);
        } catch (C3753i unused) {
        }
        if (z9) {
            Collections.reverse(arrayList);
        }
        return listM4761k;
    }

    /* JADX INFO: renamed from: n */
    public final C2595b m4763n(C1577a c1577a, C2596c c2596c, boolean z9, boolean z10) throws C3753i {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int[][] iArr;
        int[] iArr2 = this.f7230b;
        Arrays.fill(iArr2, 0);
        if (z10) {
            AbstractC2487h.m3873f(c2596c.f7238b[0], c1577a, iArr2);
        } else {
            AbstractC2487h.m3872e(c2596c.f7238b[1], c1577a, iArr2);
            int i10 = 0;
            for (int length = iArr2.length - 1; i10 < length; length--) {
                int i11 = iArr2[i10];
                iArr2[i10] = iArr2[length];
                iArr2[length] = i11;
                i10++;
            }
        }
        float fM23x = AbstractC0000a.m23x(iArr2) / 17.0f;
        int[] iArr3 = c2596c.f7238b;
        int i12 = c2596c.f7237a;
        float f8 = (iArr3[1] - iArr3[0]) / 15.0f;
        if (Math.abs(fM23x - f8) / f8 > 0.3f) {
            throw C3753i.f11192d;
        }
        int i13 = 0;
        while (true) {
            int length2 = iArr2.length;
            float[] fArr = this.f7232d;
            float[] fArr2 = this.f7231c;
            int[] iArr4 = this.f7234f;
            int[] iArr5 = this.f7233e;
            if (i13 >= length2) {
                int iM23x = AbstractC0000a.m23x(iArr5);
                int iM23x2 = AbstractC0000a.m23x(iArr4);
                if (iM23x > 13) {
                    z11 = false;
                    z12 = true;
                } else if (iM23x < 4) {
                    z12 = false;
                    z11 = true;
                } else {
                    z11 = false;
                    z12 = false;
                }
                if (iM23x2 > 13) {
                    z13 = false;
                    z14 = true;
                } else if (iM23x2 < 4) {
                    z14 = false;
                    z13 = true;
                } else {
                    z13 = false;
                    z14 = false;
                }
                int i14 = (iM23x + iM23x2) - 17;
                boolean z15 = (iM23x & 1) == 1;
                boolean z16 = (iM23x2 & 1) == 0;
                boolean z17 = z11;
                boolean z18 = z12;
                boolean z19 = z13;
                boolean z20 = z14;
                if (i14 != -1) {
                    if (i14 != 0) {
                        if (i14 != 1) {
                            throw C3753i.f11192d;
                        }
                        if (z15) {
                            if (z16) {
                                throw C3753i.f11192d;
                            }
                            z18 = true;
                        } else {
                            if (!z16) {
                                throw C3753i.f11192d;
                            }
                            z20 = true;
                        }
                    } else if (z15) {
                        if (!z16) {
                            throw C3753i.f11192d;
                        }
                        if (iM23x < iM23x2) {
                            z17 = true;
                            z20 = true;
                        } else {
                            z18 = true;
                            z19 = true;
                        }
                    } else if (z16) {
                        throw C3753i.f11192d;
                    }
                } else if (z15) {
                    if (z16) {
                        throw C3753i.f11192d;
                    }
                    z17 = true;
                } else {
                    if (!z16) {
                        throw C3753i.f11192d;
                    }
                    z19 = true;
                }
                if (z17) {
                    if (z18) {
                        throw C3753i.f11192d;
                    }
                    AbstractC2594a.m4069h(iArr5, fArr2);
                }
                if (z18) {
                    AbstractC2594a.m4068g(iArr5, fArr2);
                }
                if (z19) {
                    if (z20) {
                        throw C3753i.f11192d;
                    }
                    AbstractC2594a.m4069h(iArr4, fArr2);
                }
                if (z20) {
                    AbstractC2594a.m4068g(iArr4, fArr);
                }
                int i15 = (((i12 * 4) + (z9 ? 0 : 2)) + (!z10 ? 1 : 0)) - 1;
                int length3 = iArr5.length - 1;
                int i16 = 0;
                int i17 = 0;
                while (true) {
                    iArr = f8278o;
                    if (length3 < 0) {
                        break;
                    }
                    if (i12 != 0 || !z9 || !z10) {
                        i16 += iArr5[length3] * iArr[i15][length3 * 2];
                    }
                    i17 += iArr5[length3];
                    length3--;
                }
                int i18 = 0;
                for (int length4 = iArr4.length - 1; length4 >= 0; length4--) {
                    if (i12 != 0 || !z9 || !z10) {
                        i18 += iArr4[length4] * iArr[i15][(length4 * 2) + 1];
                    }
                }
                int i19 = i16 + i18;
                if ((i17 & 1) != 0 || i17 > 13 || i17 < 4) {
                    throw C3753i.f11192d;
                }
                int i20 = (13 - i17) / 2;
                int i21 = f8274k[i20];
                return new C2595b((AbstractC2587b.m4054u(iArr5, i21, true) * f8275l[i20]) + AbstractC2587b.m4054u(iArr4, 9 - i21, false) + f8276m[i20], i19);
            }
            float f10 = (iArr2[i13] * 1.0f) / fM23x;
            int i22 = (int) (0.5f + f10);
            if (i22 <= 0) {
                if (f10 < 0.3f) {
                    throw C3753i.f11192d;
                }
                i22 = 1;
            } else if (i22 > 8) {
                if (f10 > 8.7f) {
                    throw C3753i.f11192d;
                }
                i22 = 8;
            }
            int i23 = i13 / 2;
            if ((i13 & 1) == 0) {
                iArr5[i23] = i22;
                fArr2[i23] = f10 - i22;
            } else {
                iArr4[i23] = i22;
                fArr[i23] = f10 - i22;
            }
            i13++;
        }
    }

    /* JADX INFO: renamed from: o */
    public final List m4764o(C1577a c1577a, int i10) throws C3753i {
        boolean zEquals;
        boolean z9;
        Object obj;
        boolean z10 = false;
        while (true) {
            ArrayList arrayList = this.f8280g;
            if (z10) {
                if (m4760j()) {
                    return arrayList;
                }
                ArrayList arrayList2 = this.f8281h;
                boolean zIsEmpty = arrayList2.isEmpty();
                int i11 = 0;
                boolean zEquals2 = false;
                while (true) {
                    if (i11 >= arrayList2.size()) {
                        zEquals = false;
                        break;
                    }
                    C2974b c2974b = (C2974b) arrayList2.get(i11);
                    int i12 = c2974b.f8273b;
                    ArrayList arrayList3 = c2974b.f8272a;
                    if (i12 > i10) {
                        zEquals = arrayList3.equals(arrayList);
                        break;
                    }
                    zEquals2 = arrayList3.equals(arrayList);
                    i11++;
                }
                if (!zEquals && !zEquals2) {
                    int size = arrayList2.size();
                    int i13 = 0;
                    loop2: while (true) {
                        if (i13 >= size) {
                            z9 = false;
                            break;
                        }
                        Object obj2 = arrayList2.get(i13);
                        i13++;
                        C2974b c2974b2 = (C2974b) obj2;
                        int size2 = arrayList.size();
                        int i14 = 0;
                        while (true) {
                            if (i14 >= size2) {
                                z9 = true;
                                break loop2;
                            }
                            Object obj3 = arrayList.get(i14);
                            i14++;
                            C2973a c2973a = (C2973a) obj3;
                            ArrayList arrayList4 = c2974b2.f8272a;
                            int size3 = arrayList4.size();
                            int i15 = 0;
                            while (true) {
                                if (i15 < size3) {
                                    Object obj4 = arrayList4.get(i15);
                                    i15++;
                                    if (c2973a.equals((C2973a) obj4)) {
                                    }
                                }
                            }
                        }
                    }
                    if (!z9) {
                        arrayList2.add(i11, new C2974b(arrayList, i10));
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            C2974b c2974b3 = (C2974b) it.next();
                            if (c2974b3.f8272a.size() != arrayList.size()) {
                                ArrayList arrayList5 = c2974b3.f8272a;
                                int size4 = arrayList5.size();
                                int i16 = 0;
                                do {
                                    if (i16 >= size4) {
                                        it.remove();
                                        break;
                                    }
                                    obj = arrayList5.get(i16);
                                    i16++;
                                } while (arrayList.contains((C2973a) obj));
                            }
                        }
                    }
                }
                if (!zIsEmpty) {
                    List listM4762l = m4762l(false);
                    if (listM4762l != null) {
                        return listM4762l;
                    }
                    List listM4762l2 = m4762l(true);
                    if (listM4762l2 != null) {
                        return listM4762l2;
                    }
                }
                throw C3753i.f11192d;
            }
            try {
                arrayList.add(m4765p(c1577a, arrayList, i10));
            } catch (C3753i e) {
                if (arrayList.isEmpty()) {
                    throw e;
                }
                z10 = true;
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public final C2973a m4765p(C1577a c1577a, ArrayList arrayList, int i10) throws C3753i {
        int i11;
        int i12;
        int i13;
        int iM2652f;
        int i14;
        C2596c c2596c;
        int i15 = 2;
        int i16 = 0;
        int i17 = 1;
        boolean z9 = arrayList.size() % 2 == 0;
        if (this.f8283j) {
            z9 = !z9;
        }
        int iM2651e = -1;
        boolean z10 = true;
        while (true) {
            int[] iArr = this.f7229a;
            iArr[i16] = i16;
            iArr[i17] = i16;
            iArr[i15] = i16;
            int i18 = 3;
            iArr[3] = i16;
            int i19 = c1577a.f3899c;
            int i20 = iM2651e >= 0 ? iM2651e : arrayList.isEmpty() ? i16 : ((C2973a) arrayList.get(arrayList.size() - i17)).f8271c.f7238b[i17];
            int i21 = arrayList.size() % i15 != 0 ? i17 : i16;
            if (this.f8283j) {
                i21 ^= 1;
            }
            int i22 = i16;
            while (i20 < i19) {
                boolean zM2650d = c1577a.m2650d(i20);
                int i23 = !zM2650d;
                if (zM2650d) {
                    i22 = i23;
                    break;
                }
                i20++;
                i22 = i23;
            }
            int i24 = i15;
            int i25 = i16;
            int i26 = i22;
            int i27 = i20;
            while (true) {
                if (i20 >= i19) {
                    throw C3753i.f11192d;
                }
                i11 = i16;
                if (c1577a.m2650d(i20) != i26) {
                    iArr[i25] = iArr[i25] + i17;
                    i12 = i17;
                    i18 = i18;
                } else {
                    if (i25 == i18) {
                        if (i21 != 0) {
                            int length = iArr.length;
                            int i28 = i11;
                            while (true) {
                                i13 = i17;
                                if (i28 >= length / 2) {
                                    break;
                                }
                                int i29 = iArr[i28];
                                int i30 = (length - i28) - 1;
                                iArr[i28] = iArr[i30];
                                iArr[i30] = i29;
                                i28++;
                                i17 = i13;
                            }
                        } else {
                            i13 = i17;
                        }
                        if (AbstractC2594a.m4070i(iArr)) {
                            break;
                        }
                        if (i21 != 0) {
                            int length2 = iArr.length;
                            for (int i31 = 0; i31 < length2 / 2; i31++) {
                                int i32 = iArr[i31];
                                int i33 = (length2 - i31) - 1;
                                iArr[i31] = iArr[i33];
                                iArr[i33] = i32;
                            }
                        }
                        i12 = 1;
                        i11 = 0;
                        i27 += iArr[0] + iArr[1];
                        iArr[0] = iArr[i24];
                        iArr[1] = iArr[i18];
                        iArr[i24] = 0;
                        iArr[i18] = 0;
                        i25--;
                    } else {
                        i12 = i17;
                        i18 = i18;
                        i25++;
                    }
                    iArr[i25] = i12;
                    i26 ^= 1;
                }
                i20++;
                i16 = i11;
                i18 = i18;
                i17 = i12;
            }
            int[] iArr2 = this.f8282i;
            iArr2[i11] = i27;
            iArr2[i13] = i20;
            if (z9) {
                int i34 = i27 - 1;
                while (i34 >= 0 && !c1577a.m2650d(i34)) {
                    i34--;
                }
                i27 = i34 + 1;
                i14 = iArr2[i11] - i27;
                iM2652f = iArr2[i13];
            } else {
                iM2652f = c1577a.m2652f(i20 + 1);
                i14 = iM2652f - iArr2[i13];
            }
            int i35 = iM2652f;
            int i36 = i27;
            System.arraycopy(iArr, i11, iArr, i13, iArr.length - 1);
            iArr[i11] = i14;
            C2595b c2595bM4763n = null;
            try {
                int[][] iArr3 = f8277n;
                int i37 = 0;
                while (true) {
                    if (i37 >= 6) {
                        throw C3753i.f11192d;
                    }
                    if (AbstractC2487h.m3871d(iArr, iArr3[i37], 0.45f) < 0.2f) {
                        c2596c = new C2596c(i37, i36, i35, i10, new int[]{i36, i35});
                        break;
                    }
                    i37++;
                }
            } catch (C3753i unused) {
                c2596c = null;
            }
            if (c2596c == null) {
                int i38 = iArr2[0];
                iM2651e = c1577a.m2650d(i38) ? c1577a.m2651e(c1577a.m2652f(i38)) : c1577a.m2652f(c1577a.m2651e(i38));
            } else {
                z10 = false;
            }
            if (!z10) {
                C2595b c2595bM4763n2 = m4763n(c1577a, c2596c, z9, true);
                if (!arrayList.isEmpty() && ((C2973a) arrayList.get(arrayList.size() - 1)).f8270b == null) {
                    throw C3753i.f11192d;
                }
                try {
                    c2595bM4763n = m4763n(c1577a, c2596c, z9, false);
                } catch (C3753i unused2) {
                }
                return new C2973a(c2595bM4763n2, c2595bM4763n, c2596c);
            }
            i15 = i24;
            i16 = 0;
            i17 = 1;
        }
    }

    @Override // p147n6.AbstractC2487h, p260z5.InterfaceC3755k
    public final void reset() {
        this.f8280g.clear();
        this.f8281h.clear();
    }
}
