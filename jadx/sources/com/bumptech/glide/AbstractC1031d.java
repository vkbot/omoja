package com.bumptech.glide;

import ai.onnxruntime.AbstractC0074a;
import android.animation.TimeInterpolator;
import android.app.AppOpsManager;
import android.content.Context;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.PathParser;
import androidx.navigation.C0674b;
import com.example.navistart.cores.InterC;
import com.google.protobuf.AbstractC1178q;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.UByte;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.p118io.encoding.Base64;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.apache.commons.net.telnet.TelnetCommand;
import org.json.JSONObject;
import p003a2.EnumC0005b;
import p031c6.C0995a;
import p038d1.C1241a;
import p047e0.AbstractC1358g0;
import p047e0.AbstractC1387m;
import p055e9.InterfaceC1506b;
import p063f6.C1577a;
import p063f6.C1578b;
import p064f7.C1585b;
import p083h6.C1670a;
import p083h6.C1671b;
import p096i9.AbstractC1813d1;
import p096i9.AbstractC1836k1;
import p096i9.C1811d;
import p096i9.C1823g0;
import p096i9.C1839l1;
import p096i9.C1857r1;
import p096i9.C1862t0;
import p097j.C1897i;
import p099j1.C1929i;
import p107j9.AbstractC2011b;
import p130l9.C2237i;
import p132m0.C2267b;
import p132m0.C2271b3;
import p132m0.C2272c;
import p142n0.InterfaceC2470e;
import p155o4.AbstractC2587b;
import p164p0.C2950c;
import p228w3.AbstractC3517b;
import p231w6.C3534f;
import p231w6.EnumC3532d;
import p251y6.AbstractC3658b;
import p251y6.C3657a;

/* JADX INFO: renamed from: com.bumptech.glide.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1031d {

    /* JADX INFO: renamed from: b */
    public static Context f1075b;

    /* JADX INFO: renamed from: c */
    public static InterC f1076c;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1077a = 4;

    /* JADX INFO: renamed from: b */
    public static String m1272b(int i10) {
        return AbstractC1358g0.m2404b(f1075b).getString(i10);
    }

    /* JADX INFO: renamed from: c */
    public static C2271b3 m1273c(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return new C2271b3(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{21, -78, -126, 50, -111, -42, -98}, new byte[]{102, -41, -16, 68, -8, -75, -5, -84})), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{21, 14, 43, 34, 56, -72}, new byte[]{116, 109, 95, 75, 78, -35, 4, 114}), false));
    }

    /* JADX WARN: Code duplicated, block: B:323:0x064e  */
    /* JADX WARN: Code duplicated, block: B:325:0x0655  */
    /* JADX WARN: Code duplicated, block: B:353:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:472:0x06c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:473:0x06c2 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX INFO: renamed from: d */
    public static C1578b m1274d(int i10, int i11, String str) {
        EnumC3532d enumC3532d;
        EnumC3532d enumC3532d2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        char c;
        int[] iArr = AbstractC3658b.f10843a;
        if (str.isEmpty()) {
            C1929i.m3029k("Found empty contents");
            return null;
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i10 + 'x' + i11);
        }
        int i17 = 0;
        boolean z13 = false;
        boolean z14 = false;
        while (true) {
            int length = str.length();
            enumC3532d = EnumC3532d.BYTE;
            if (i17 < length) {
                char cCharAt = str.charAt(i17);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    z14 = true;
                } else if ((cCharAt < '`' ? iArr[cCharAt] : -1) != -1) {
                    z13 = true;
                }
                i17++;
            } else {
                if (z13) {
                    enumC3532d2 = EnumC3532d.ALPHANUMERIC;
                    break;
                }
                if (z14) {
                    enumC3532d2 = EnumC3532d.NUMERIC;
                    break;
                }
            }
            enumC3532d2 = enumC3532d;
            break;
        }
        C1577a c1577a = new C1577a();
        c1577a.m2648b(enumC3532d2.f10498c, 4);
        C1577a c1577a2 = new C1577a();
        int iOrdinal = enumC3532d2.ordinal();
        char c10 = 2;
        int i18 = 8;
        char c11 = '\n';
        if (iOrdinal != 1) {
            i12 = 1;
            if (iOrdinal == 2) {
                int length2 = str.length();
                int i19 = 0;
                while (i19 < length2) {
                    char cCharAt2 = str.charAt(i19);
                    int i20 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i20 == -1) {
                        throw new C1585b();
                    }
                    int i21 = i19 + 1;
                    if (i21 < length2) {
                        char cCharAt3 = str.charAt(i21);
                        int i22 = cCharAt3 < '`' ? iArr[cCharAt3] : -1;
                        if (i22 == -1) {
                            throw new C1585b();
                        }
                        c1577a2.m2648b((i20 * 45) + i22, 11);
                        i19 += 2;
                    } else {
                        c1577a2.m2648b(i20, 6);
                        i19 = i21;
                    }
                }
            } else if (iOrdinal == 4) {
                try {
                    byte[] bytes = str.getBytes("ISO-8859-1");
                    int length3 = bytes.length;
                    int i23 = 0;
                    while (i23 < length3) {
                        c1577a2.m2648b(bytes[i23], i18);
                        i23++;
                        i18 = 8;
                    }
                } catch (UnsupportedEncodingException e) {
                    throw new C1585b(e);
                }
            } else {
                if (iOrdinal != 6) {
                    throw new C1585b("Invalid mode: ".concat(String.valueOf(enumC3532d2)));
                }
                try {
                    byte[] bytes2 = str.getBytes("Shift_JIS");
                    if (bytes2.length % 2 != 0) {
                        throw new C1585b("Kanji byte size not even");
                    }
                    int length4 = bytes2.length - 1;
                    int i24 = 0;
                    while (i24 < length4) {
                        int i25 = ((bytes2[i24] & UByte.MAX_VALUE) << 8) | (bytes2[i24 + 1] & UByte.MAX_VALUE);
                        char c12 = c10;
                        int i26 = (i25 < 33088 || i25 > 40956) ? (i25 < 57408 || i25 > 60351) ? -1 : i25 - 49472 : i25 - 33088;
                        if (i26 == -1) {
                            throw new C1585b("Invalid byte sequence");
                        }
                        c1577a2.m2648b(((i26 >> 8) * 192) + (i26 & 255), 13);
                        i24 += 2;
                        c10 = c12;
                    }
                } catch (UnsupportedEncodingException e6) {
                    throw new C1585b(e6);
                }
            }
        } else {
            i12 = 1;
            int length5 = str.length();
            int i27 = 0;
            while (i27 < length5) {
                int iCharAt = str.charAt(i27) - '0';
                int i28 = i27 + 2;
                if (i28 < length5) {
                    c1577a2.m2648b(((str.charAt(i27 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i28) - '0'), 10);
                    i27 += 3;
                } else {
                    i27++;
                    if (i27 < length5) {
                        c1577a2.m2648b((iCharAt * 10) + (str.charAt(i27) - '0'), 7);
                        i27 = i28;
                    } else {
                        c1577a2.m2648b(iCharAt, 4);
                    }
                }
            }
        }
        int iM5636a = enumC3532d2.m5636a(C3534f.m5639c(i12)) + c1577a.f3899c + c1577a2.f3899c;
        int i29 = i12;
        while (i29 <= 40) {
            C3534f c3534fM5639c = C3534f.m5639c(i29);
            int i30 = c3534fM5639c.f10504d;
            C1897i c1897i = c3534fM5639c.f10503c[AbstractC1034g.m1296c(i12)];
            char c13 = c11;
            int i31 = c1897i.f4929b;
            int i32 = 0;
            for (C0995a c0995a : (C0995a[]) c1897i.f4930c) {
                i32 += c0995a.f950b;
            }
            if (i30 - (i32 * i31) >= (iM5636a + 7) / 8) {
                int iM5636a2 = enumC3532d2.m5636a(c3534fM5639c) + c1577a.f3899c + c1577a2.f3899c;
                int i33 = i12;
                while (i33 <= 40) {
                    C3534f c3534fM5639c2 = C3534f.m5639c(i33);
                    int i34 = c3534fM5639c2.f10504d;
                    C1897i[] c1897iArr = c3534fM5639c2.f10503c;
                    C1897i c1897i2 = c1897iArr[AbstractC1034g.m1296c(i12)];
                    int i35 = c1897i2.f4929b;
                    C0995a[] c0995aArr = (C0995a[]) c1897i2.f4930c;
                    int length6 = c0995aArr.length;
                    int i36 = 0;
                    int i37 = 0;
                    while (i36 < length6) {
                        i37 += c0995aArr[i36].f950b;
                        i36++;
                        i33 = i33;
                    }
                    int i38 = i33;
                    if (i34 - (i37 * i35) >= (iM5636a2 + 7) / 8) {
                        int i39 = c3534fM5639c2.f10504d;
                        C1577a c1577a3 = new C1577a();
                        int i40 = c1577a.f3899c;
                        c1577a3.m2649c(i40);
                        for (int i41 = 0; i41 < i40; i41++) {
                            c1577a3.m2647a(c1577a.m2650d(i41));
                        }
                        int iM2653g = enumC3532d2 == enumC3532d ? c1577a2.m2653g() : str.length();
                        int iM5636a3 = enumC3532d2.m5636a(c3534fM5639c2);
                        int i42 = i12 << iM5636a3;
                        if (iM2653g >= i42) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(iM2653g);
                            sb.append(" is bigger than ");
                            sb.append(i42 - 1);
                            throw new C1585b(sb.toString());
                        }
                        c1577a3.m2648b(iM2653g, iM5636a3);
                        int i43 = c1577a2.f3899c;
                        c1577a3.m2649c(c1577a3.f3899c + i43);
                        for (int i44 = 0; i44 < i43; i44++) {
                            c1577a3.m2647a(c1577a2.m2650d(i44));
                        }
                        C1897i c1897i3 = c1897iArr[AbstractC1034g.m1296c(i12)];
                        int i45 = c1897i3.f4929b;
                        C0995a[] c0995aArr2 = (C0995a[]) c1897i3.f4930c;
                        int i46 = 0;
                        for (C0995a c0995a2 : c0995aArr2) {
                            i46 += c0995a2.f950b;
                        }
                        int i47 = i39 - (i46 * i45);
                        int i48 = i47 << 3;
                        if (c1577a3.f3899c > i48) {
                            throw new C1585b("data bits cannot fit in the QR Code" + c1577a3.f3899c + " > " + i48);
                        }
                        for (int i49 = 0; i49 < 4 && c1577a3.f3899c < i48; i49++) {
                            c1577a3.m2647a(false);
                        }
                        boolean z15 = false;
                        int i50 = c1577a3.f3899c & 7;
                        if (i50 > 0) {
                            while (i50 < 8) {
                                c1577a3.m2647a(z15);
                                i50++;
                                z15 = false;
                            }
                        }
                        int iM2653g2 = i47 - c1577a3.m2653g();
                        for (int i51 = 0; i51 < iM2653g2; i51++) {
                            c1577a3.m2648b((i51 & 1) == 0 ? TelnetCommand.EOF : 17, 8);
                        }
                        if (c1577a3.f3899c != i48) {
                            throw new C1585b("Bits size does not equal capacity");
                        }
                        int i52 = 0;
                        for (C0995a c0995a3 : c0995aArr2) {
                            i52 += c0995a3.f950b;
                        }
                        if (c1577a3.m2653g() != i47) {
                            throw new C1585b("Number of bits and data bytes does not match");
                        }
                        ArrayList arrayList = new ArrayList(i52);
                        int i53 = 0;
                        int i54 = 0;
                        int iMax = 0;
                        int iMax2 = 0;
                        while (i53 < i52) {
                            int i55 = i12;
                            int[] iArr2 = new int[i55];
                            int[] iArr3 = new int[i55];
                            if (i53 >= i52) {
                                throw new C1585b("Block ID too large");
                            }
                            int i56 = i39 % i52;
                            int i57 = i52 - i56;
                            int i58 = i39 / i52;
                            int i59 = i47 / i52;
                            int i60 = i59 + 1;
                            int i61 = i58 - i59;
                            int i62 = (i58 + 1) - i60;
                            if (i61 != i62) {
                                throw new C1585b("EC bytes mismatch");
                            }
                            if (i52 != i57 + i56) {
                                throw new C1585b("RS blocks mismatch");
                            }
                            if (i39 != ((i60 + i62) * i56) + ((i59 + i61) * i57)) {
                                throw new C1585b("Total bytes mismatch");
                            }
                            if (i53 < i57) {
                                c = 0;
                                iArr2[0] = i59;
                                iArr3[0] = i61;
                            } else {
                                c = 0;
                                iArr2[0] = i60;
                                iArr3[0] = i62;
                            }
                            int i63 = iArr2[c];
                            byte[] bArr = new byte[i63];
                            int i64 = i54 << 3;
                            int i65 = i53;
                            int i66 = 0;
                            while (i66 < i63) {
                                int i67 = i66;
                                int i68 = i52;
                                int[] iArr4 = iArr3;
                                int i69 = 0;
                                for (int i70 = 0; i70 < 8; i70++) {
                                    if (c1577a3.m2650d(i64)) {
                                        i69 |= 1 << (7 - i70);
                                    }
                                    i64++;
                                }
                                bArr[i67] = (byte) i69;
                                i66 = i67 + 1;
                                i52 = i68;
                                iArr3 = iArr4;
                            }
                            int i71 = i52;
                            int i72 = iArr3[0];
                            int i73 = i63 + i72;
                            int[] iArr5 = new int[i73];
                            int i74 = 0;
                            while (i74 < i63) {
                                iArr5[i74] = bArr[i74] & UByte.MAX_VALUE;
                                i74++;
                                i73 = i73;
                            }
                            int i75 = i73;
                            C1670a c1670a = C1670a.f4277l;
                            ArrayList arrayList2 = new ArrayList();
                            C1577a c1577a4 = c1577a3;
                            arrayList2.add(new C1671b(c1670a, new int[]{1}));
                            if (i72 == 0) {
                                C1929i.m3029k("No error correction bytes");
                                return null;
                            }
                            int i76 = i75 - i72;
                            if (i76 <= 0) {
                                C1929i.m3029k("No data bytes provided");
                                return null;
                            }
                            if (i72 >= arrayList2.size()) {
                                C1671b c1671bM2778g = (C1671b) arrayList2.get(arrayList2.size() - 1);
                                int size = arrayList2.size();
                                while (size <= i72) {
                                    int i77 = size;
                                    c1671bM2778g = c1671bM2778g.m2778g(new C1671b(c1670a, new int[]{1, c1670a.f4281a[(i77 - 1) + c1670a.f4287g]}));
                                    arrayList2.add(c1671bM2778g);
                                    size = i77 + 1;
                                    i39 = i39;
                                    c3534fM5639c2 = c3534fM5639c2;
                                }
                            }
                            int i78 = i39;
                            C3534f c3534f = c3534fM5639c2;
                            C1671b c1671b = (C1671b) arrayList2.get(i72);
                            int[] iArr6 = new int[i76];
                            System.arraycopy(iArr5, 0, iArr6, 0, i76);
                            if (i76 == 0) {
                                C2237i.m3594a();
                                return null;
                            }
                            if (i76 > 1 && iArr6[0] == 0) {
                                int i79 = 1;
                                while (i79 < i76 && iArr6[i79] == 0) {
                                    i79++;
                                }
                                if (i79 == i76) {
                                    iArr6 = new int[]{0};
                                } else {
                                    int i80 = i76 - i79;
                                    int[] iArr7 = new int[i80];
                                    System.arraycopy(iArr6, i79, iArr7, 0, i80);
                                    iArr6 = iArr7;
                                }
                            }
                            if (i72 < 0) {
                                C2237i.m3594a();
                                return null;
                            }
                            int length7 = iArr6.length;
                            int[] iArr8 = new int[length7 + i72];
                            int i81 = 0;
                            while (i81 < length7) {
                                iArr8[i81] = c1670a.m2771c(iArr6[i81], 1);
                                i81++;
                                length7 = length7;
                            }
                            C1671b c1671b2 = new C1671b(c1670a, iArr8);
                            if (!c1670a.equals(c1671b.f4288a)) {
                                C1929i.m3029k("GenericGFPolys do not have same GenericGF field");
                                return null;
                            }
                            if (c1671b.m2776e()) {
                                C1929i.m3029k("Divide by 0");
                                return null;
                            }
                            C1671b c1671bM2772a = c1670a.f4283c;
                            int iM2770b = c1670a.m2770b(c1671b.m2774c(c1671b.m2775d()));
                            while (c1671b2.m2775d() >= c1671b.m2775d() && !c1671b2.m2776e()) {
                                int iM2775d = c1671b2.m2775d() - c1671b.m2775d();
                                int iM2771c = c1670a.m2771c(c1671b2.m2774c(c1671b2.m2775d()), iM2770b);
                                int i82 = iM2770b;
                                C1671b c1671bM2779h = c1671b.m2779h(iM2775d, iM2771c);
                                c1671bM2772a = c1671bM2772a.m2772a(c1670a.m2769a(iM2775d, iM2771c));
                                c1671b2 = c1671b2.m2772a(c1671bM2779h);
                                iM2770b = i82;
                            }
                            int[] iArr9 = new C1671b[]{c1671bM2772a, c1671b2}[1].f4289b;
                            int length8 = i72 - iArr9.length;
                            for (int i83 = 0; i83 < length8; i83++) {
                                iArr5[i76 + i83] = 0;
                            }
                            System.arraycopy(iArr9, 0, iArr5, i76 + length8, iArr9.length);
                            byte[] bArr2 = new byte[i72];
                            for (int i84 = 0; i84 < i72; i84++) {
                                bArr2[i84] = (byte) iArr5[i63 + i84];
                            }
                            arrayList.add(new C3657a(bArr, bArr2));
                            iMax = Math.max(iMax, i63);
                            iMax2 = Math.max(iMax2, i72);
                            i54 += iArr2[0];
                            i53 = i65 + 1;
                            i52 = i71;
                            c1577a3 = c1577a4;
                            i39 = i78;
                            c3534fM5639c2 = c3534f;
                            i12 = 1;
                        }
                        int i85 = i39;
                        C3534f c3534f2 = c3534fM5639c2;
                        if (i47 != i54) {
                            throw new C1585b("Data bytes does not match offset");
                        }
                        C1577a c1577a5 = new C1577a();
                        for (int i86 = 0; i86 < iMax; i86++) {
                            int size2 = arrayList.size();
                            int i87 = 0;
                            while (i87 < size2) {
                                Object obj = arrayList.get(i87);
                                i87++;
                                byte[] bArr3 = ((C3657a) obj).f10841a;
                                if (i86 < bArr3.length) {
                                    c1577a5.m2648b(bArr3[i86], 8);
                                }
                            }
                        }
                        for (int i88 = 0; i88 < iMax2; i88++) {
                            int size3 = arrayList.size();
                            int i89 = 0;
                            while (i89 < size3) {
                                Object obj2 = arrayList.get(i89);
                                i89++;
                                byte[] bArr4 = ((C3657a) obj2).f10842b;
                                if (i88 < bArr4.length) {
                                    c1577a5.m2648b(bArr4[i88], 8);
                                }
                            }
                        }
                        if (i85 != c1577a5.m2653g()) {
                            StringBuilder sbM166q = AbstractC0074a.m166q(i85, "Interleaving error: ", " and ");
                            sbM166q.append(c1577a5.m2653g());
                            sbM166q.append(" differ.");
                            throw new C1585b(sbM166q.toString());
                        }
                        int i90 = (c3534f2.f10501a * 4) + 17;
                        C2950c c2950c = new C2950c(i90, i90, 2);
                        int i91 = c2950c.f8200c;
                        int i92 = Integer.MAX_VALUE;
                        int i93 = 0;
                        int i94 = -1;
                        while (true) {
                            i13 = c2950c.f8199b;
                            if (i93 >= 8) {
                                break;
                            }
                            AbstractC3658b.m5882b(c1577a5, 1, c3534f2, i93, c2950c);
                            int iM5881a = AbstractC3658b.m5881a(c2950c, false) + AbstractC3658b.m5881a(c2950c, true);
                            byte[][] bArr5 = (byte[][]) c2950c.f8201d;
                            int i95 = 0;
                            for (int i96 = 0; i96 < i91 - 1; i96++) {
                                byte[] bArr6 = bArr5[i96];
                                int i97 = 0;
                                while (i97 < i13 - 1) {
                                    byte b10 = bArr6[i97];
                                    int i98 = i97 + 1;
                                    if (b10 == bArr6[i98]) {
                                        byte[] bArr7 = bArr5[i96 + 1];
                                        if (b10 == bArr7[i97] && b10 == bArr7[i98]) {
                                            i95++;
                                        }
                                    }
                                    i97 = i98;
                                }
                            }
                            int i99 = (i95 * 3) + iM5881a;
                            int i100 = 0;
                            for (int i101 = 0; i101 < i91; i101++) {
                                int i102 = 0;
                                while (i102 < i13) {
                                    byte[] bArr8 = bArr5[i101];
                                    int i103 = i102 + 6;
                                    if (i103 < i13) {
                                        i14 = i100;
                                        byte b11 = 1;
                                        if (bArr8[i102] == 1 && bArr8[i102 + 1] == 0 && bArr8[i102 + 2] == 1 && bArr8[i102 + 3] == 1 && bArr8[i102 + 4] == 1 && bArr8[i102 + 5] == 0 && bArr8[i103] == 1) {
                                            int iMax3 = Math.max(i102 - 4, 0);
                                            int iMin = Math.min(i102, bArr8.length);
                                            while (true) {
                                                if (iMax3 >= iMin) {
                                                    i15 = i93;
                                                    z11 = true;
                                                    break;
                                                }
                                                i15 = i93;
                                                if (bArr8[iMax3] == b11) {
                                                    z11 = false;
                                                    break;
                                                }
                                                iMax3++;
                                                i93 = i15;
                                                b11 = 1;
                                            }
                                            if (!z11) {
                                                int iMax4 = Math.max(i102 + 7, 0);
                                                int iMin2 = Math.min(i102 + 11, bArr8.length);
                                                while (true) {
                                                    if (iMax4 >= iMin2) {
                                                        z12 = true;
                                                        break;
                                                    }
                                                    if (bArr8[iMax4] == 1) {
                                                        z12 = false;
                                                        break;
                                                    }
                                                    iMax4++;
                                                }
                                                if (z12) {
                                                }
                                                i16 = i101 + 6;
                                                if (i16 < i91) {
                                                    byte b12 = 1;
                                                    if (bArr5[i101][i102] != 1 && bArr5[i101 + 1][i102] == 0 && bArr5[i101 + 2][i102] == 1 && bArr5[i101 + 3][i102] == 1 && bArr5[i101 + 4][i102] == 1 && bArr5[i101 + 5][i102] == 0 && bArr5[i16][i102] == 1) {
                                                        int iMax5 = Math.max(i101 - 4, 0);
                                                        int iMin3 = Math.min(i101, bArr5.length);
                                                        while (true) {
                                                            if (iMax5 >= iMin3) {
                                                                z9 = true;
                                                                break;
                                                            }
                                                            if (bArr5[iMax5][i102] == b12) {
                                                                z9 = false;
                                                                break;
                                                            }
                                                            iMax5++;
                                                            b12 = 1;
                                                        }
                                                        if (z9) {
                                                            i100++;
                                                        } else {
                                                            int iMax6 = Math.max(i101 + 7, 0);
                                                            int iMin4 = Math.min(i101 + 11, bArr5.length);
                                                            while (true) {
                                                                if (iMax6 >= iMin4) {
                                                                    z10 = true;
                                                                    break;
                                                                }
                                                                if (bArr5[iMax6][i102] == 1) {
                                                                    z10 = false;
                                                                    break;
                                                                }
                                                                iMax6++;
                                                            }
                                                            if (z10) {
                                                                i100++;
                                                            }
                                                        }
                                                    }
                                                }
                                                i102++;
                                                i93 = i15;
                                            }
                                            i100 = i14 + 1;
                                            i16 = i101 + 6;
                                            if (i16 < i91) {
                                                byte b13 = 1;
                                                if (bArr5[i101][i102] != 1) {
                                                }
                                            }
                                            i102++;
                                            i93 = i15;
                                        }
                                        i100 = i14;
                                        i16 = i101 + 6;
                                        if (i16 < i91) {
                                            byte b14 = 1;
                                            if (bArr5[i101][i102] != 1) {
                                            }
                                        }
                                        i102++;
                                        i93 = i15;
                                    } else {
                                        i14 = i100;
                                    }
                                    i15 = i93;
                                    i100 = i14;
                                    i16 = i101 + 6;
                                    if (i16 < i91) {
                                        byte b15 = 1;
                                        if (bArr5[i101][i102] != 1) {
                                        }
                                    }
                                    i102++;
                                    i93 = i15;
                                }
                            }
                            int i104 = i93;
                            int i105 = (i100 * 40) + i99;
                            int i106 = 0;
                            for (int i107 = 0; i107 < i91; i107++) {
                                byte[] bArr9 = bArr5[i107];
                                for (int i108 = 0; i108 < i13; i108++) {
                                    if (bArr9[i108] == 1) {
                                        i106++;
                                    }
                                }
                            }
                            int i109 = i13 * i91;
                            int iAbs = (((Math.abs((i106 << 1) - i109) * 10) / i109) * 10) + i105;
                            if (iAbs < i92) {
                                i92 = iAbs;
                                i94 = i104;
                            }
                            i93 = i104 + 1;
                        }
                        AbstractC3658b.m5882b(c1577a5, 1, c3534f2, i94, c2950c);
                        int i110 = i13 + 8;
                        int i111 = i91 + 8;
                        int iMax7 = Math.max(i10, i110);
                        int iMax8 = Math.max(i11, i111);
                        int iMin5 = Math.min(iMax7 / i110, iMax8 / i111);
                        int i112 = (iMax7 - (i13 * iMin5)) / 2;
                        int i113 = (iMax8 - (i91 * iMin5)) / 2;
                        C1578b c1578b = new C1578b(iMax7, iMax8);
                        int i114 = 0;
                        while (i114 < i91) {
                            int i115 = i112;
                            int i116 = 0;
                            while (i116 < i13) {
                                if (c2950c.m4724a(i116, i114) == 1) {
                                    c1578b.m2663g(i115, i113, iMin5, iMin5);
                                }
                                i116++;
                                i115 += iMin5;
                            }
                            i114++;
                            i113 += iMin5;
                        }
                        return c1578b;
                    }
                    i33 = i38 + 1;
                }
                throw new C1585b("Data too big");
            }
            i29++;
            c11 = c13;
        }
        throw new C1585b("Data too big");
    }

    /* JADX INFO: renamed from: e */
    public static String m1275e(String str, boolean z9) {
        return new JSONObject().put(AbstractC1387m.m2421h(new byte[]{123, -36, -87, -56, 62, 42, 84}, new byte[]{8, -71, -37, -66, 87, 73, 49, -10}), str).put(AbstractC1387m.m2421h(new byte[]{-123, 38, -33, -6, 7, -85}, new byte[]{-28, 69, -85, -109, 113, -50, 103, 83}), z9).toString();
    }

    /* JADX INFO: renamed from: f */
    public static boolean m1276f(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: renamed from: g */
    public static String m1277g(long j10) {
        if (j10 <= 0) {
            return AbstractC1387m.m2421h(new byte[]{-110, -121, -90}, new byte[]{-94, -89, -28, 74, 51, 110, 112, -55});
        }
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{-45}, new byte[]{-111, -72, 41, -56, -46, -19, -2, 43}), AbstractC1387m.m2421h(new byte[]{16, -76}, new byte[]{91, -10, 89, 37, -54, -33, 121, -48}), AbstractC1387m.m2421h(new byte[]{57, 117}, new byte[]{116, 55, 38, -37, -16, -30, 75, -42}), AbstractC1387m.m2421h(new byte[]{26, -50}, new byte[]{93, -116, -36, 8, -55, 56, 67, 28}), AbstractC1387m.m2421h(new byte[]{-54, 71}, new byte[]{-98, 5, 37, 91, -123, -31, 52, 59})};
        double d = j10;
        int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        return String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{-6, 99, -125, 68, ByteCompanionObject.MAX_VALUE, 77, -106}, new byte[]{-33, 77, -79, 34, 95, 104, -27, 118}), Double.valueOf(d / Math.pow(1024.0d, iLog10)), strArr[iLog10]);
    }

    /* JADX INFO: renamed from: h */
    public static String[] m1278h(Class cls) {
        Object[] objArr = (Enum[]) cls.getEnumConstants();
        int i10 = 0;
        for (Object obj : objArr) {
            if (((InterfaceC2470e) obj).mo3818a().booleanValue()) {
                i10++;
            }
        }
        String[] strArr = new String[i10];
        int i11 = 0;
        for (Object obj2 : objArr) {
            InterfaceC2470e interfaceC2470e = (InterfaceC2470e) obj2;
            if (interfaceC2470e.mo3818a().booleanValue()) {
                strArr[i11] = interfaceC2470e.mo3819b();
                i11++;
            }
        }
        return strArr;
    }

    /* JADX INFO: renamed from: i */
    public static Enum m1279i(Class cls, String str) {
        try {
            return Enum.valueOf(cls, str);
        } catch (IllegalArgumentException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: j */
    public static String[] m1280j(Class cls) {
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        int i10 = 0;
        for (Object[] objArr : enumArr) {
            if (((InterfaceC2470e) objArr).mo3818a().booleanValue()) {
                i10++;
            }
        }
        String[] strArr = new String[i10];
        int i11 = 0;
        for (EnumC0005b enumC0005b : enumArr) {
            if (((InterfaceC2470e) enumC0005b).mo3818a().booleanValue()) {
                strArr[i11] = enumC0005b.name();
                i11++;
            }
        }
        return strArr;
    }

    /* JADX INFO: renamed from: k */
    public static float m1281k(String[] strArr, int i10) {
        float f8 = Float.parseFloat(strArr[i10]);
        if (f8 >= 0.0f && f8 <= 1.0f) {
            return f8;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f8);
    }

    /* JADX INFO: renamed from: l */
    public static String m1282l(Context context, C1241a c1241a, String str, C2267b c2267b, C2272c c2272c) throws IOException {
        String[] strArr = context.getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
        String strM1286p = m1286p(str);
        ArrayList arrayList = new ArrayList();
        if (strArr != null) {
            for (String strSubstring : new LinkedHashSet(Arrays.asList(strArr))) {
                if (strSubstring != null) {
                    arrayList.add(AbstractC1387m.m2421h(new byte[]{-44, 60, -85, 97, -31, -22, -7, -91, -124, 124, -90, 115, -32, -18, -27, -15, -57, 36, -7, 116, -10, -27, -29, -15}, new byte[]{-92, 81, -117, 6, -109, -117, -105, -47}) + strM1286p + " " + m1286p(strSubstring));
                    String strPermissionToOp = AppOpsManager.permissionToOp(strSubstring);
                    if (strPermissionToOp == null) {
                        if (strSubstring.startsWith(AbstractC1387m.m2421h(new byte[]{11, 120, 30, -25, 29, -97, ByteCompanionObject.MAX_VALUE, 116, 26, 115, 8, -8, 27, -123, 104, 51, 5, 120, 84}, new byte[]{106, 22, 122, -107, 114, -10, 27, 90}))) {
                            strSubstring = strSubstring.substring(AbstractC1387m.m2421h(new byte[]{-55, 43, 31, 109, -12, 12, 93, 94, -40, 32, 9, 114, -14, 22, 74, 25, -57, 43, 85}, new byte[]{-88, 69, 123, 31, -101, 101, 57, 112}).length());
                        }
                        strPermissionToOp = strSubstring;
                    }
                    arrayList.add(AbstractC1387m.m2421h(new byte[]{-70, -110, -52, 33, 101, 19, 10, -76, -66, -106, -100, 99, 56, 21, 89, -94, -87, -62, -33, 59, 103, 18, 79, -87, -81, -62}, new byte[]{-37, -30, -68, 78, 21, 96, 42, -57}) + strM1286p + " " + m1286p(strPermissionToOp) + AbstractC1387m.m2421h(new byte[]{-117, 62, 36, -55, -4, -38}, new byte[]{-85, 95, 72, -91, -109, -83, -60, -92}));
                }
            }
        }
        arrayList.add(AbstractC1387m.m2421h(new byte[]{14, 126, 32, 90, -102, 89, -2, 125, 14, 118, 45, 30, -110, 89, -88, 99, 5, 122, 48, 31, -110, 85, -5, 96, 77}, new byte[]{109, 19, 68, 122, -2, 60, -120, 20}).concat(m1286p(AbstractC1387m.m2421h(new byte[]{-64}, new byte[]{-21, 100, 89, -71, 88, -39, -87, -47}).concat(str))));
        arrayList.add(AbstractC1387m.m2421h(new byte[]{7, 8, -26, 10, 83, 74, 78, 59, 7, 24, -3, 19, 67, 86, 84, ByteCompanionObject.MAX_VALUE, 15, 24, -85, 13, 72, 90, 73, 126, 15, 20, -8, 14, 0}, new byte[]{99, 125, -117, 122, 32, 51, Base64.padSymbol, 27}).concat(m1286p(AbstractC1387m.m2421h(new byte[]{-114}, new byte[]{-91, -80, -32, 29, 105, 23, 56, -8}).concat(str))));
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            String str2 = (String) obj;
            if (!c2267b.getAsBoolean()) {
                throw new CancellationException();
            }
            try {
                String strM2229y = c1241a.m2229y(str2 + AbstractC1387m.m2421h(new byte[]{-122, 74, -53, -119, 21, -85, -95, 51, -44, 17, -101, -37, 66, -80, -90, 31, -56, 29, -115, -58, 80, -83, -92, 48, -6, 22, -46, -113, 6, -76, -66, 97}, new byte[]{-90, 120, -11, -81, 36, -112, -127, 67}));
                sb.append(str2);
                sb.append('\n');
                sb.append(strM2229y);
                sb.append('\n');
                i10++;
                c2272c.accept(Integer.valueOf(i10), Integer.valueOf(arrayList.size()));
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                AbstractC1178q.m2086t(new byte[]{-124, 126, 70, 95, -122, -50, 105, 104, -93, 49}, new byte[]{-57, 17, 43, 47, -22, -85, 29, 13}, sb2, i10);
                sb2.append(AbstractC1387m.m2421h(new byte[]{122}, new byte[]{85, -42, -4, -86, -49, -64, -51, 53}));
                sb2.append(arrayList.size());
                sb2.append("\n");
                sb2.append(str2);
                sb2.append("\n");
                sb2.append(e.getMessage());
                throw new IOException(sb2.toString(), e);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: m */
    public static boolean m1283m(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    /* JADX INFO: renamed from: n */
    public static C1241a m1284n(Context context) {
        return new C1241a(context, AbstractC1387m.m2421h(new byte[]{4, 64, -71, 56, -73, -4, -100, 74, 4}, new byte[]{53, 114, -114, 22, -121, -46, -84, 100}));
    }

    /* JADX INFO: renamed from: o */
    public static final InterfaceC1506b m1285o(KClass kClass, ArrayList arrayList, Function0 function0) {
        InterfaceC1506b c1857r1;
        InterfaceC1506b c1839l1;
        kClass.getClass();
        arrayList.getClass();
        if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Collection.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(ArrayList.class))) {
            c1857r1 = new C1811d((InterfaceC1506b) arrayList.get(0), 0);
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashSet.class))) {
            c1857r1 = new C1811d((InterfaceC1506b) arrayList.get(0), 1);
        } else {
            if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashSet.class))) {
                c1857r1 = new C1811d((InterfaceC1506b) arrayList.get(0), 2);
            } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashMap.class))) {
                c1857r1 = new C1823g0((InterfaceC1506b) arrayList.get(0), (InterfaceC1506b) arrayList.get(1), 0);
            } else {
                if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashMap.class))) {
                    c1857r1 = new C1823g0((InterfaceC1506b) arrayList.get(0), (InterfaceC1506b) arrayList.get(1), 1);
                } else {
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.Entry.class))) {
                        InterfaceC1506b interfaceC1506b = (InterfaceC1506b) arrayList.get(0);
                        InterfaceC1506b interfaceC1506b2 = (InterfaceC1506b) arrayList.get(1);
                        interfaceC1506b.getClass();
                        interfaceC1506b2.getClass();
                        c1839l1 = new C1862t0(interfaceC1506b, interfaceC1506b2, 0);
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Pair.class))) {
                        InterfaceC1506b interfaceC1506b3 = (InterfaceC1506b) arrayList.get(0);
                        InterfaceC1506b interfaceC1506b4 = (InterfaceC1506b) arrayList.get(1);
                        interfaceC1506b3.getClass();
                        interfaceC1506b4.getClass();
                        c1839l1 = new C1862t0(interfaceC1506b3, interfaceC1506b4, 1);
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Triple.class))) {
                        InterfaceC1506b interfaceC1506b5 = (InterfaceC1506b) arrayList.get(0);
                        InterfaceC1506b interfaceC1506b6 = (InterfaceC1506b) arrayList.get(1);
                        InterfaceC1506b interfaceC1506b7 = (InterfaceC1506b) arrayList.get(2);
                        interfaceC1506b5.getClass();
                        interfaceC1506b6.getClass();
                        interfaceC1506b7.getClass();
                        c1857r1 = new C1857r1(interfaceC1506b5, interfaceC1506b6, interfaceC1506b7);
                    } else if (JvmClassMappingKt.getJavaClass(kClass).isArray()) {
                        Object objInvoke = function0.invoke();
                        objInvoke.getClass();
                        InterfaceC1506b interfaceC1506b8 = (InterfaceC1506b) arrayList.get(0);
                        interfaceC1506b8.getClass();
                        c1839l1 = new C1839l1((KClass) objInvoke, interfaceC1506b8);
                    } else {
                        c1857r1 = null;
                    }
                    c1857r1 = c1839l1;
                }
            }
        }
        if (c1857r1 != null) {
            return c1857r1;
        }
        InterfaceC1506b[] interfaceC1506bArr = (InterfaceC1506b[]) arrayList.toArray(new InterfaceC1506b[0]);
        return AbstractC1813d1.m2918d(kClass, (InterfaceC1506b[]) Arrays.copyOf(interfaceC1506bArr, interfaceC1506bArr.length));
    }

    /* JADX INFO: renamed from: p */
    public static String m1286p(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{78}, new byte[]{105, 20, 19, -8, 72, 60, -112, -102}));
        sb.append(str.replace(AbstractC1387m.m2421h(new byte[]{55}, new byte[]{16, -119, 33, -40, 16, 106, 0, -84}), AbstractC1387m.m2421h(new byte[]{-25, -105, -19, 101}, new byte[]{-64, -53, -54, 66, -3, 85, -42, -47})));
        return AbstractC1178q.m2075i(new byte[]{-12}, new byte[]{-45, -13, 52, 96, 83, 70, 21, 115}, sb);
    }

    /* JADX INFO: renamed from: q */
    public static int m1287q(Context context, int i10, int i11) {
        TypedValue typedValueM5584a = AbstractC3517b.m5584a(i10, context);
        return (typedValueM5584a == null || typedValueM5584a.type != 16) ? i11 : typedValueM5584a.data;
    }

    /* JADX INFO: renamed from: r */
    public static TimeInterpolator m1288r(Context context, int i10, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            C1929i.m3029k("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!m1283m(strValueOf, "cubic-bezier") && !m1283m(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!m1283m(strValueOf, "cubic-bezier")) {
            if (m1283m(strValueOf, "path")) {
                return new PathInterpolator(PathParser.createPathFromPathData(strValueOf.substring(5, strValueOf.length() - 1)));
            }
            C1929i.m3029k("Invalid motion easing type: ".concat(strValueOf));
            return null;
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return new PathInterpolator(m1281k(strArrSplit, 0), m1281k(strArrSplit, 1), m1281k(strArrSplit, 2), m1281k(strArrSplit, 3));
        }
        C0674b.m836b(strArrSplit.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
        return null;
    }

    /* JADX INFO: renamed from: s */
    public static final InterfaceC1506b m1289s(KClass kClass) {
        kClass.getClass();
        InterfaceC1506b interfaceC1506bM1290t = m1290t(kClass);
        if (interfaceC1506bM1290t != null) {
            return interfaceC1506bM1290t;
        }
        AbstractC1813d1.m2922h(kClass);
        throw null;
    }

    /* JADX INFO: renamed from: t */
    public static final InterfaceC1506b m1290t(KClass kClass) {
        kClass.getClass();
        InterfaceC1506b interfaceC1506bM2918d = AbstractC1813d1.m2918d(kClass, new InterfaceC1506b[0]);
        return interfaceC1506bM2918d == null ? (InterfaceC1506b) AbstractC1836k1.f4787a.get(kClass) : interfaceC1506bM2918d;
    }

    /* JADX INFO: renamed from: u */
    public static final ArrayList m1291u(AbstractC2011b abstractC2011b, List list, boolean z9) {
        abstractC2011b.getClass();
        list.getClass();
        if (!z9) {
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                KType kType = (KType) it.next();
                kType.getClass();
                InterfaceC1506b interfaceC1506bM4031A = AbstractC2587b.m4031A(abstractC2011b, kType, false);
                if (interfaceC1506bM4031A == null) {
                    return null;
                }
                arrayList.add(interfaceC1506bM4031A);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            KType kType2 = (KType) it2.next();
            abstractC2011b.getClass();
            kType2.getClass();
            InterfaceC1506b interfaceC1506bM4031A2 = AbstractC2587b.m4031A(abstractC2011b, kType2, true);
            if (interfaceC1506bM4031A2 == null) {
                AbstractC1813d1.m2922h(AbstractC1813d1.m2921g(kType2));
                throw null;
            }
            arrayList2.add(interfaceC1506bM4031A2);
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: v */
    public static void m1292v(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        }
        if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        }
        if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public int hashCode() {
        switch (this.f1077a) {
            case 4:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.f1077a) {
            case 4:
                String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
                simpleName.getClass();
                return simpleName;
            default:
                return super.toString();
        }
    }
}
