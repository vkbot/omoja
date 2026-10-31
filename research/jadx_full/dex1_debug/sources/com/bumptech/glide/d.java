package com.bumptech.glide;

import ai.onnxruntime.OrtLoggingLevel;
import android.animation.TimeInterpolator;
import android.app.AppOpsManager;
import android.content.Context;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.PathParser;
import com.example.navistart.cores.InterC;
import com.google.protobuf.q;
import e0.g0;
import i9.d1;
import i9.k1;
import i9.l1;
import i9.r1;
import i9.t0;
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
import java.util.Map$Entry;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.UByte;
import kotlin.collections.CollectionsKt;
import kotlin.io.encoding.Base64;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import m0.b3;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Context f554b;
    public static InterC c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f555a = 4;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ InterC a() {
        return c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(int i9) {
        return g0.b(f554b).getString(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b3 c(String str) {
        JSONObject jSONObject = new JSONObject(str);
        return new b3(jSONObject.getString(e0.m.h(new byte[]{21, -78, -126, 50, -111, -42, -98}, new byte[]{102, -41, -16, 68, -8, -75, -5, -84})), jSONObject.optBoolean(e0.m.h(new byte[]{21, 14, 43, 34, 56, -72}, new byte[]{116, 109, 95, 75, 78, -35, 4, 114}), false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:323:0x064e  */
    /* JADX WARN: Code duplicated, block: B:325:0x0655  */
    /* JADX WARN: Code duplicated, block: B:353:0x06c0  */
    /* JADX WARN: Code duplicated, block: B:472:0x06c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:473:0x06c2 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public static f6.b d(int i9, int i10, String str) {
        w6.d dVar;
        w6.d dVar2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        char c9;
        int[] iArr = y6.b.f6138a;
        if (str.isEmpty()) {
            j1.i.k("Found empty contents");
            return null;
        }
        if (i9 < 0 || i10 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i9 + 'x' + i10);
        }
        int i16 = 0;
        boolean z12 = false;
        boolean z13 = false;
        while (true) {
            int length = str.length();
            dVar = w6.d.BYTE;
            if (i16 < length) {
                char cCharAt = str.charAt(i16);
                if (cCharAt >= '0' && cCharAt <= '9') {
                    z13 = true;
                } else if ((cCharAt < '`' ? iArr[cCharAt] : -1) != -1) {
                    z12 = true;
                }
                i16++;
            } else {
                if (z12) {
                    dVar2 = w6.d.ALPHANUMERIC;
                    break;
                }
                if (z13) {
                    dVar2 = w6.d.NUMERIC;
                    break;
                }
            }
            dVar2 = dVar;
            break;
        }
        f6.a aVar = new f6.a();
        aVar.b(dVar2.c, 4);
        f6.a aVar2 = new f6.a();
        int iOrdinal = dVar2.ordinal();
        char c10 = 2;
        int i17 = 8;
        char c11 = '\n';
        if (iOrdinal != 1) {
            i11 = 1;
            if (iOrdinal == 2) {
                int length2 = str.length();
                int i18 = 0;
                while (i18 < length2) {
                    char cCharAt2 = str.charAt(i18);
                    int i19 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i19 == -1) {
                        throw new f7.b();
                    }
                    int i20 = i18 + 1;
                    if (i20 < length2) {
                        char cCharAt3 = str.charAt(i20);
                        int i21 = cCharAt3 < '`' ? iArr[cCharAt3] : -1;
                        if (i21 == -1) {
                            throw new f7.b();
                        }
                        aVar2.b((i19 * 45) + i21, 11);
                        i18 += 2;
                    } else {
                        aVar2.b(i19, 6);
                        i18 = i20;
                    }
                }
            } else if (iOrdinal == 4) {
                try {
                    byte[] bytes = str.getBytes("ISO-8859-1");
                    int length3 = bytes.length;
                    int i22 = 0;
                    while (i22 < length3) {
                        aVar2.b(bytes[i22], i17);
                        i22++;
                        i17 = 8;
                    }
                } catch (UnsupportedEncodingException e) {
                    throw new f7.b(e);
                }
            } else {
                if (iOrdinal != 6) {
                    throw new f7.b("Invalid mode: ".concat(String.valueOf(dVar2)));
                }
                try {
                    byte[] bytes2 = str.getBytes("Shift_JIS");
                    if (bytes2.length % 2 != 0) {
                        throw new f7.b("Kanji byte size not even");
                    }
                    int length4 = bytes2.length - 1;
                    int i23 = 0;
                    while (i23 < length4) {
                        int i24 = ((bytes2[i23] & UByte.MAX_VALUE) << 8) | (bytes2[i23 + 1] & UByte.MAX_VALUE);
                        char c12 = c10;
                        int i25 = (i24 < 33088 || i24 > 40956) ? (i24 < 57408 || i24 > 60351) ? -1 : i24 - 49472 : i24 - 33088;
                        if (i25 == -1) {
                            throw new f7.b("Invalid byte sequence");
                        }
                        aVar2.b(((i25 >> 8) * 192) + (i25 & 255), 13);
                        i23 += 2;
                        c10 = c12;
                    }
                } catch (UnsupportedEncodingException e6) {
                    throw new f7.b(e6);
                }
            }
        } else {
            i11 = 1;
            int length5 = str.length();
            int i26 = 0;
            while (i26 < length5) {
                int iCharAt = str.charAt(i26) - '0';
                int i27 = i26 + 2;
                if (i27 < length5) {
                    aVar2.b(((str.charAt(i26 + 1) - '0') * 10) + (iCharAt * 100) + (str.charAt(i27) - '0'), 10);
                    i26 += 3;
                } else {
                    i26++;
                    if (i26 < length5) {
                        aVar2.b((iCharAt * 10) + (str.charAt(i26) - '0'), 7);
                        i26 = i27;
                    } else {
                        aVar2.b(iCharAt, 4);
                    }
                }
            }
        }
        int iA = dVar2.a(w6.f.c(i11)) + aVar.c + aVar2.c;
        int i28 = i11;
        while (i28 <= 40) {
            w6.f fVarC = w6.f.c(i28);
            int i29 = fVarC.d;
            j.i iVar = fVarC.c[g.c(i11)];
            char c13 = c11;
            int i30 = iVar.f2793b;
            int i31 = 0;
            for (c6.a aVar3 : (c6.a[]) iVar.c) {
                i31 += aVar3.f501b;
            }
            if (i29 - (i31 * i30) >= (iA + 7) / 8) {
                int iA2 = dVar2.a(fVarC) + aVar.c + aVar2.c;
                int i32 = i11;
                while (i32 <= 40) {
                    w6.f fVarC2 = w6.f.c(i32);
                    int i33 = fVarC2.d;
                    j.i[] iVarArr = fVarC2.c;
                    j.i iVar2 = iVarArr[g.c(i11)];
                    int i34 = iVar2.f2793b;
                    c6.a[] aVarArr = (c6.a[]) iVar2.c;
                    int length6 = aVarArr.length;
                    int i35 = 0;
                    int i36 = 0;
                    while (i35 < length6) {
                        i36 += aVarArr[i35].f501b;
                        i35++;
                        i32 = i32;
                    }
                    int i37 = i32;
                    if (i33 - (i36 * i34) >= (iA2 + 7) / 8) {
                        int i38 = fVarC2.d;
                        f6.a aVar4 = new f6.a();
                        int i39 = aVar.c;
                        aVar4.c(i39);
                        for (int i40 = 0; i40 < i39; i40++) {
                            aVar4.a(aVar.d(i40));
                        }
                        int iG = dVar2 == dVar ? aVar2.g() : str.length();
                        int iA3 = dVar2.a(fVarC2);
                        int i41 = i11 << iA3;
                        if (iG >= i41) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(iG);
                            sb.append(" is bigger than ");
                            sb.append(i41 - 1);
                            throw new f7.b(sb.toString());
                        }
                        aVar4.b(iG, iA3);
                        int i42 = aVar2.c;
                        aVar4.c(aVar4.c + i42);
                        for (int i43 = 0; i43 < i42; i43++) {
                            aVar4.a(aVar2.d(i43));
                        }
                        j.i iVar3 = iVarArr[g.c(i11)];
                        int i44 = iVar3.f2793b;
                        c6.a[] aVarArr2 = (c6.a[]) iVar3.c;
                        int i45 = 0;
                        for (c6.a aVar5 : aVarArr2) {
                            i45 += aVar5.f501b;
                        }
                        int i46 = i38 - (i45 * i44);
                        int i47 = i46 << 3;
                        if (aVar4.c > i47) {
                            throw new f7.b("data bits cannot fit in the QR Code" + aVar4.c + " > " + i47);
                        }
                        for (int i48 = 0; i48 < 4 && aVar4.c < i47; i48++) {
                            aVar4.a(false);
                        }
                        boolean z14 = false;
                        int i49 = aVar4.c & 7;
                        if (i49 > 0) {
                            while (i49 < 8) {
                                aVar4.a(z14);
                                i49++;
                                z14 = false;
                            }
                        }
                        int iG2 = i46 - aVar4.g();
                        for (int i50 = 0; i50 < iG2; i50++) {
                            aVar4.b((i50 & 1) == 0 ? 236 : 17, 8);
                        }
                        if (aVar4.c != i47) {
                            throw new f7.b("Bits size does not equal capacity");
                        }
                        int i51 = 0;
                        for (c6.a aVar6 : aVarArr2) {
                            i51 += aVar6.f501b;
                        }
                        if (aVar4.g() != i46) {
                            throw new f7.b("Number of bits and data bytes does not match");
                        }
                        ArrayList arrayList = new ArrayList(i51);
                        int i52 = 0;
                        int i53 = 0;
                        int iMax = 0;
                        int iMax2 = 0;
                        while (i52 < i51) {
                            int i54 = i11;
                            int[] iArr2 = new int[i54];
                            int[] iArr3 = new int[i54];
                            if (i52 >= i51) {
                                throw new f7.b("Block ID too large");
                            }
                            int i55 = i38 % i51;
                            int i56 = i51 - i55;
                            int i57 = i38 / i51;
                            int i58 = i46 / i51;
                            int i59 = i58 + 1;
                            int i60 = i57 - i58;
                            int i61 = (i57 + 1) - i59;
                            if (i60 != i61) {
                                throw new f7.b("EC bytes mismatch");
                            }
                            if (i51 != i56 + i55) {
                                throw new f7.b("RS blocks mismatch");
                            }
                            if (i38 != ((i59 + i61) * i55) + ((i58 + i60) * i56)) {
                                throw new f7.b("Total bytes mismatch");
                            }
                            if (i52 < i56) {
                                c9 = 0;
                                iArr2[0] = i58;
                                iArr3[0] = i60;
                            } else {
                                c9 = 0;
                                iArr2[0] = i59;
                                iArr3[0] = i61;
                            }
                            int i62 = iArr2[c9];
                            byte[] bArr = new byte[i62];
                            int i63 = i53 << 3;
                            int i64 = i52;
                            int i65 = 0;
                            while (i65 < i62) {
                                int i66 = i65;
                                int i67 = i51;
                                int[] iArr4 = iArr3;
                                int i68 = 0;
                                for (int i69 = 0; i69 < 8; i69++) {
                                    if (aVar4.d(i63)) {
                                        i68 |= 1 << (7 - i69);
                                    }
                                    i63++;
                                }
                                bArr[i66] = (byte) i68;
                                i65 = i66 + 1;
                                i51 = i67;
                                iArr3 = iArr4;
                            }
                            int i70 = i51;
                            int i71 = iArr3[0];
                            int i72 = i62 + i71;
                            int[] iArr5 = new int[i72];
                            int i73 = 0;
                            while (i73 < i62) {
                                iArr5[i73] = bArr[i73] & UByte.MAX_VALUE;
                                i73++;
                                i72 = i72;
                            }
                            int i74 = i72;
                            h6.a aVar7 = h6.a.f2478l;
                            ArrayList arrayList2 = new ArrayList();
                            f6.a aVar8 = aVar4;
                            arrayList2.add(new h6.b(aVar7, new int[]{1}));
                            if (i71 == 0) {
                                j1.i.k("No error correction bytes");
                                return null;
                            }
                            int i75 = i74 - i71;
                            if (i75 <= 0) {
                                j1.i.k("No data bytes provided");
                                return null;
                            }
                            if (i71 >= arrayList2.size()) {
                                h6.b bVarG = (h6.b) arrayList2.get(arrayList2.size() - 1);
                                int size = arrayList2.size();
                                while (size <= i71) {
                                    int i76 = size;
                                    bVarG = bVarG.g(new h6.b(aVar7, new int[]{1, aVar7.f2482a[(i76 - 1) + aVar7.f2485g]}));
                                    arrayList2.add(bVarG);
                                    size = i76 + 1;
                                    i38 = i38;
                                    fVarC2 = fVarC2;
                                }
                            }
                            int i77 = i38;
                            w6.f fVar = fVarC2;
                            h6.b bVar = (h6.b) arrayList2.get(i71);
                            int[] iArr6 = new int[i75];
                            System.arraycopy(iArr5, 0, iArr6, 0, i75);
                            if (i75 == 0) {
                                l9.i.a();
                                return null;
                            }
                            if (i75 > 1 && iArr6[0] == 0) {
                                int i78 = 1;
                                while (i78 < i75 && iArr6[i78] == 0) {
                                    i78++;
                                }
                                if (i78 == i75) {
                                    iArr6 = new int[]{0};
                                } else {
                                    int i79 = i75 - i78;
                                    int[] iArr7 = new int[i79];
                                    System.arraycopy(iArr6, i78, iArr7, 0, i79);
                                    iArr6 = iArr7;
                                }
                            }
                            if (i71 < 0) {
                                l9.i.a();
                                return null;
                            }
                            int length7 = iArr6.length;
                            int[] iArr8 = new int[length7 + i71];
                            int i80 = 0;
                            while (i80 < length7) {
                                iArr8[i80] = aVar7.c(iArr6[i80], 1);
                                i80++;
                                length7 = length7;
                            }
                            h6.b bVar2 = new h6.b(aVar7, iArr8);
                            if (!aVar7.equals(bVar.f2486a)) {
                                j1.i.k("GenericGFPolys do not have same GenericGF field");
                                return null;
                            }
                            if (bVar.e()) {
                                j1.i.k("Divide by 0");
                                return null;
                            }
                            h6.b bVarA = aVar7.c;
                            int iB = aVar7.b(bVar.c(bVar.d()));
                            while (bVar2.d() >= bVar.d() && !bVar2.e()) {
                                int iD = bVar2.d() - bVar.d();
                                int iC = aVar7.c(bVar2.c(bVar2.d()), iB);
                                int i81 = iB;
                                h6.b bVarH = bVar.h(iD, iC);
                                bVarA = bVarA.a(aVar7.a(iD, iC));
                                bVar2 = bVar2.a(bVarH);
                                iB = i81;
                            }
                            int[] iArr9 = new h6.b[]{bVarA, bVar2}[1].f2487b;
                            int length8 = i71 - iArr9.length;
                            for (int i82 = 0; i82 < length8; i82++) {
                                iArr5[i75 + i82] = 0;
                            }
                            System.arraycopy(iArr9, 0, iArr5, i75 + length8, iArr9.length);
                            byte[] bArr2 = new byte[i71];
                            for (int i83 = 0; i83 < i71; i83++) {
                                bArr2[i83] = (byte) iArr5[i62 + i83];
                            }
                            arrayList.add(new y6.a(bArr, bArr2));
                            iMax = Math.max(iMax, i62);
                            iMax2 = Math.max(iMax2, i71);
                            i53 += iArr2[0];
                            i52 = i64 + 1;
                            i51 = i70;
                            aVar4 = aVar8;
                            i38 = i77;
                            fVarC2 = fVar;
                            i11 = 1;
                        }
                        int i84 = i38;
                        w6.f fVar2 = fVarC2;
                        if (i46 != i53) {
                            throw new f7.b("Data bytes does not match offset");
                        }
                        f6.a aVar9 = new f6.a();
                        for (int i85 = 0; i85 < iMax; i85++) {
                            int size2 = arrayList.size();
                            int i86 = 0;
                            while (i86 < size2) {
                                Object obj = arrayList.get(i86);
                                i86++;
                                byte[] bArr3 = ((y6.a) obj).f6136a;
                                if (i85 < bArr3.length) {
                                    aVar9.b(bArr3[i85], 8);
                                }
                            }
                        }
                        for (int i87 = 0; i87 < iMax2; i87++) {
                            int size3 = arrayList.size();
                            int i88 = 0;
                            while (i88 < size3) {
                                Object obj2 = arrayList.get(i88);
                                i88++;
                                byte[] bArr4 = ((y6.a) obj2).f6137b;
                                if (i87 < bArr4.length) {
                                    aVar9.b(bArr4[i87], 8);
                                }
                            }
                        }
                        if (i84 != aVar9.g()) {
                            StringBuilder sbQ = ai.onnxruntime.a.q(i84, "Interleaving error: ", " and ");
                            sbQ.append(aVar9.g());
                            sbQ.append(" differ.");
                            throw new f7.b(sbQ.toString());
                        }
                        int i89 = (fVar2.f5943a * 4) + 17;
                        p0.c cVar = new p0.c(i89, i89, 2);
                        int i90 = cVar.c;
                        int i91 = Integer.MAX_VALUE;
                        int i92 = 0;
                        int i93 = -1;
                        while (true) {
                            i12 = cVar.f4552b;
                            if (i92 >= 8) {
                                break;
                            }
                            y6.b.b(aVar9, 1, fVar2, i92, cVar);
                            int iA4 = y6.b.a(cVar, false) + y6.b.a(cVar, true);
                            byte[][] bArr5 = (byte[][]) cVar.d;
                            int i94 = 0;
                            for (int i95 = 0; i95 < i90 - 1; i95++) {
                                byte[] bArr6 = bArr5[i95];
                                int i96 = 0;
                                while (i96 < i12 - 1) {
                                    byte b9 = bArr6[i96];
                                    int i97 = i96 + 1;
                                    if (b9 == bArr6[i97]) {
                                        byte[] bArr7 = bArr5[i95 + 1];
                                        if (b9 == bArr7[i96] && b9 == bArr7[i97]) {
                                            i94++;
                                        }
                                    }
                                    i96 = i97;
                                }
                            }
                            int i98 = (i94 * 3) + iA4;
                            int i99 = 0;
                            for (int i100 = 0; i100 < i90; i100++) {
                                int i101 = 0;
                                while (i101 < i12) {
                                    byte[] bArr8 = bArr5[i100];
                                    int i102 = i101 + 6;
                                    if (i102 < i12) {
                                        i13 = i99;
                                        byte b10 = 1;
                                        if (bArr8[i101] == 1 && bArr8[i101 + 1] == 0 && bArr8[i101 + 2] == 1 && bArr8[i101 + 3] == 1 && bArr8[i101 + 4] == 1 && bArr8[i101 + 5] == 0 && bArr8[i102] == 1) {
                                            int iMax3 = Math.max(i101 - 4, 0);
                                            int iMin = Math.min(i101, bArr8.length);
                                            while (true) {
                                                if (iMax3 >= iMin) {
                                                    i14 = i92;
                                                    z10 = true;
                                                    break;
                                                }
                                                i14 = i92;
                                                if (bArr8[iMax3] == b10) {
                                                    z10 = false;
                                                    break;
                                                }
                                                iMax3++;
                                                i92 = i14;
                                                b10 = 1;
                                            }
                                            if (!z10) {
                                                int iMax4 = Math.max(i101 + 7, 0);
                                                int iMin2 = Math.min(i101 + 11, bArr8.length);
                                                while (true) {
                                                    if (iMax4 >= iMin2) {
                                                        z11 = true;
                                                        break;
                                                    }
                                                    if (bArr8[iMax4] == 1) {
                                                        z11 = false;
                                                        break;
                                                    }
                                                    iMax4++;
                                                }
                                                if (z11) {
                                                }
                                                i15 = i100 + 6;
                                                if (i15 < i90) {
                                                    byte b11 = 1;
                                                    if (bArr5[i100][i101] != 1 && bArr5[i100 + 1][i101] == 0 && bArr5[i100 + 2][i101] == 1 && bArr5[i100 + 3][i101] == 1 && bArr5[i100 + 4][i101] == 1 && bArr5[i100 + 5][i101] == 0 && bArr5[i15][i101] == 1) {
                                                        int iMax5 = Math.max(i100 - 4, 0);
                                                        int iMin3 = Math.min(i100, bArr5.length);
                                                        while (true) {
                                                            if (iMax5 >= iMin3) {
                                                                z8 = true;
                                                                break;
                                                            }
                                                            if (bArr5[iMax5][i101] == b11) {
                                                                z8 = false;
                                                                break;
                                                            }
                                                            iMax5++;
                                                            b11 = 1;
                                                        }
                                                        if (z8) {
                                                            i99++;
                                                        } else {
                                                            int iMax6 = Math.max(i100 + 7, 0);
                                                            int iMin4 = Math.min(i100 + 11, bArr5.length);
                                                            while (true) {
                                                                if (iMax6 >= iMin4) {
                                                                    z9 = true;
                                                                    break;
                                                                }
                                                                if (bArr5[iMax6][i101] == 1) {
                                                                    z9 = false;
                                                                    break;
                                                                }
                                                                iMax6++;
                                                            }
                                                            if (z9) {
                                                                i99++;
                                                            }
                                                        }
                                                    }
                                                }
                                                i101++;
                                                i92 = i14;
                                            }
                                            i99 = i13 + 1;
                                            i15 = i100 + 6;
                                            if (i15 < i90) {
                                                byte b12 = 1;
                                                if (bArr5[i100][i101] != 1) {
                                                }
                                            }
                                            i101++;
                                            i92 = i14;
                                        }
                                        i99 = i13;
                                        i15 = i100 + 6;
                                        if (i15 < i90) {
                                            byte b13 = 1;
                                            if (bArr5[i100][i101] != 1) {
                                            }
                                        }
                                        i101++;
                                        i92 = i14;
                                    } else {
                                        i13 = i99;
                                    }
                                    i14 = i92;
                                    i99 = i13;
                                    i15 = i100 + 6;
                                    if (i15 < i90) {
                                        byte b14 = 1;
                                        if (bArr5[i100][i101] != 1) {
                                        }
                                    }
                                    i101++;
                                    i92 = i14;
                                }
                            }
                            int i103 = i92;
                            int i104 = (i99 * 40) + i98;
                            int i105 = 0;
                            for (int i106 = 0; i106 < i90; i106++) {
                                byte[] bArr9 = bArr5[i106];
                                for (int i107 = 0; i107 < i12; i107++) {
                                    if (bArr9[i107] == 1) {
                                        i105++;
                                    }
                                }
                            }
                            int i108 = i12 * i90;
                            int iAbs = (((Math.abs((i105 << 1) - i108) * 10) / i108) * 10) + i104;
                            if (iAbs < i91) {
                                i91 = iAbs;
                                i93 = i103;
                            }
                            i92 = i103 + 1;
                        }
                        y6.b.b(aVar9, 1, fVar2, i93, cVar);
                        int i109 = i12 + 8;
                        int i110 = i90 + 8;
                        int iMax7 = Math.max(i9, i109);
                        int iMax8 = Math.max(i10, i110);
                        int iMin5 = Math.min(iMax7 / i109, iMax8 / i110);
                        int i111 = (iMax7 - (i12 * iMin5)) / 2;
                        int i112 = (iMax8 - (i90 * iMin5)) / 2;
                        f6.b bVar3 = new f6.b(iMax7, iMax8);
                        int i113 = 0;
                        while (i113 < i90) {
                            int i114 = i111;
                            int i115 = 0;
                            while (i115 < i12) {
                                if (cVar.a(i115, i113) == 1) {
                                    bVar3.g(i114, i112, iMin5, iMin5);
                                }
                                i115++;
                                i114 += iMin5;
                            }
                            i113++;
                            i112 += iMin5;
                        }
                        return bVar3;
                    }
                    i32 = i37 + 1;
                }
                throw new f7.b("Data too big");
            }
            i28++;
            c11 = c13;
        }
        throw new f7.b("Data too big");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String e(String str, boolean z8) {
        return new JSONObject().put(e0.m.h(new byte[]{123, -36, -87, -56, 62, 42, 84}, new byte[]{8, -71, -37, -66, 87, 73, 49, -10}), str).put(e0.m.h(new byte[]{-123, 38, -33, -6, 7, -85}, new byte[]{-28, 69, -85, -109, 113, -50, 103, 83}), z8).toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean f(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(long j9) {
        if (j9 <= 0) {
            return e0.m.h(new byte[]{-110, -121, -90}, new byte[]{-94, -89, -28, 74, 51, 110, 112, -55});
        }
        String[] strArr = {e0.m.h(new byte[]{-45}, new byte[]{-111, -72, 41, -56, -46, -19, -2, 43}), e0.m.h(new byte[]{16, -76}, new byte[]{91, -10, 89, 37, -54, -33, 121, -48}), e0.m.h(new byte[]{57, 117}, new byte[]{116, 55, 38, -37, -16, -30, 75, -42}), e0.m.h(new byte[]{26, -50}, new byte[]{93, -116, -36, 8, -55, 56, 67, 28}), e0.m.h(new byte[]{-54, 71}, new byte[]{-98, 5, 37, 91, -123, -31, 52, 59})};
        double d = j9;
        int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        return String.format(Locale.US, e0.m.h(new byte[]{-6, 99, -125, 68, ByteCompanionObject.MAX_VALUE, 77, -106}, new byte[]{-33, 77, -79, 34, 95, 104, -27, 118}), Double.valueOf(d / Math.pow(1024.0d, iLog10)), strArr[iLog10]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String[] h(Class cls) {
        Object[] objArr = (Enum[]) cls.getEnumConstants();
        int i9 = 0;
        for (Object obj : objArr) {
            if (((n0.e) obj).a().booleanValue()) {
                i9++;
            }
        }
        String[] strArr = new String[i9];
        int i10 = 0;
        for (Object obj2 : objArr) {
            n0.e eVar = (n0.e) obj2;
            if (eVar.a().booleanValue()) {
                strArr[i10] = eVar.b();
                i10++;
            }
        }
        return strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Enum i(Class cls, String str) {
        try {
            return Enum.valueOf(cls, str);
        } catch (IllegalArgumentException | NullPointerException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: ai.onnxruntime.OrtLoggingLevel */
    /* JADX DEBUG: Multi-variable search result rejected for r4v2, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r6v2, resolved type: java.lang.Enum[] */
    /* JADX WARN: Multi-variable type inference failed */
    public static String[] j(Class cls) {
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        int i9 = 0;
        for (Object[] objArr : enumArr) {
            if (((n0.e) objArr).a().booleanValue()) {
                i9++;
            }
        }
        String[] strArr = new String[i9];
        int i10 = 0;
        for (OrtLoggingLevel ortLoggingLevel : enumArr) {
            if (((n0.e) ortLoggingLevel).a().booleanValue()) {
                strArr[i10] = ortLoggingLevel.name();
                i10++;
            }
        }
        return strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float k(String[] strArr, int i9) {
        float f8 = Float.parseFloat(strArr[i9]);
        if (f8 >= 0.0f && f8 <= 1.0f) {
            return f8;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String l(Context context, d1.a aVar, String str, m0.b bVar, m0.c cVar) throws IOException {
        String[] strArr = context.getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
        String strP = p(str);
        ArrayList arrayList = new ArrayList();
        if (strArr != null) {
            for (String strSubstring : new LinkedHashSet(Arrays.asList(strArr))) {
                if (strSubstring != null) {
                    arrayList.add(e0.m.h(new byte[]{-44, 60, -85, 97, -31, -22, -7, -91, -124, 124, -90, 115, -32, -18, -27, -15, -57, 36, -7, 116, -10, -27, -29, -15}, new byte[]{-92, 81, -117, 6, -109, -117, -105, -47}) + strP + " " + p(strSubstring));
                    String strPermissionToOp = AppOpsManager.permissionToOp(strSubstring);
                    if (strPermissionToOp == null) {
                        if (strSubstring.startsWith(e0.m.h(new byte[]{11, 120, 30, -25, 29, -97, ByteCompanionObject.MAX_VALUE, 116, 26, 115, 8, -8, 27, -123, 104, 51, 5, 120, 84}, new byte[]{106, 22, 122, -107, 114, -10, 27, 90}))) {
                            strSubstring = strSubstring.substring(e0.m.h(new byte[]{-55, 43, 31, 109, -12, 12, 93, 94, -40, 32, 9, 114, -14, 22, 74, 25, -57, 43, 85}, new byte[]{-88, 69, 123, 31, -101, 101, 57, 112}).length());
                        }
                        strPermissionToOp = strSubstring;
                    }
                    arrayList.add(e0.m.h(new byte[]{-70, -110, -52, 33, 101, 19, 10, -76, -66, -106, -100, 99, 56, 21, 89, -94, -87, -62, -33, 59, 103, 18, 79, -87, -81, -62}, new byte[]{-37, -30, -68, 78, 21, 96, 42, -57}) + strP + " " + p(strPermissionToOp) + e0.m.h(new byte[]{-117, 62, 36, -55, -4, -38}, new byte[]{-85, 95, 72, -91, -109, -83, -60, -92}));
                }
            }
        }
        arrayList.add(e0.m.h(new byte[]{14, 126, 32, 90, -102, 89, -2, 125, 14, 118, 45, 30, -110, 89, -88, 99, 5, 122, 48, 31, -110, 85, -5, 96, 77}, new byte[]{109, 19, 68, 122, -2, 60, -120, 20}).concat(p(e0.m.h(new byte[]{-64}, new byte[]{-21, 100, 89, -71, 88, -39, -87, -47}).concat(str))));
        arrayList.add(e0.m.h(new byte[]{7, 8, -26, 10, 83, 74, 78, 59, 7, 24, -3, 19, 67, 86, 84, ByteCompanionObject.MAX_VALUE, 15, 24, -85, 13, 72, 90, 73, 126, 15, 20, -8, 14, 0}, new byte[]{99, 125, -117, 122, 32, 51, Base64.padSymbol, 27}).concat(p(e0.m.h(new byte[]{-114}, new byte[]{-91, -80, -32, 29, 105, 23, 56, -8}).concat(str))));
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            String str2 = (String) obj;
            if (!bVar.getAsBoolean()) {
                throw new CancellationException();
            }
            try {
                String strY = aVar.y(str2 + e0.m.h(new byte[]{-122, 74, -53, -119, 21, -85, -95, 51, -44, 17, -101, -37, 66, -80, -90, 31, -56, 29, -115, -58, 80, -83, -92, 48, -6, 22, -46, -113, 6, -76, -66, 97}, new byte[]{-90, 120, -11, -81, 36, -112, -127, 67}));
                sb.append(str2);
                sb.append('\n');
                sb.append(strY);
                sb.append('\n');
                i9++;
                cVar.accept(Integer.valueOf(i9), Integer.valueOf(arrayList.size()));
            } catch (Exception e) {
                StringBuilder sb2 = new StringBuilder();
                q.t(new byte[]{-124, 126, 70, 95, -122, -50, 105, 104, -93, 49}, new byte[]{-57, 17, 43, 47, -22, -85, 29, 13}, sb2, i9);
                sb2.append(e0.m.h(new byte[]{122}, new byte[]{85, -42, -4, -86, -49, -64, -51, 53}));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean m(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d1.a n(Context context) {
        return new d1.a(context, e0.m.h(new byte[]{4, 64, -71, 56, -73, -4, -100, 74, 4}, new byte[]{53, 114, -114, 22, -121, -46, -84, 100}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e9.b o(KClass kClass, ArrayList arrayList, Function0 function0) {
        i9.d r1Var;
        i9.d l1Var;
        kClass.getClass();
        arrayList.getClass();
        if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Collection.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(ArrayList.class))) {
            r1Var = new i9.d((e9.b) arrayList.get(0), 0);
        } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashSet.class))) {
            r1Var = new i9.d((e9.b) arrayList.get(0), 1);
        } else {
            if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashSet.class))) {
                r1Var = new i9.d((e9.b) arrayList.get(0), 2);
            } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashMap.class))) {
                r1Var = new i9.g0((e9.b) arrayList.get(0), (e9.b) arrayList.get(1), 0);
            } else {
                if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) ? true : Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashMap.class))) {
                    r1Var = new i9.g0((e9.b) arrayList.get(0), (e9.b) arrayList.get(1), 1);
                } else {
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map$Entry.class))) {
                        e9.b bVar = (e9.b) arrayList.get(0);
                        e9.b bVar2 = (e9.b) arrayList.get(1);
                        bVar.getClass();
                        bVar2.getClass();
                        l1Var = new t0(bVar, bVar2, 0);
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Pair.class))) {
                        e9.b bVar3 = (e9.b) arrayList.get(0);
                        e9.b bVar4 = (e9.b) arrayList.get(1);
                        bVar3.getClass();
                        bVar4.getClass();
                        l1Var = new t0(bVar3, bVar4, 1);
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Triple.class))) {
                        e9.b bVar5 = (e9.b) arrayList.get(0);
                        e9.b bVar6 = (e9.b) arrayList.get(1);
                        e9.b bVar7 = (e9.b) arrayList.get(2);
                        bVar5.getClass();
                        bVar6.getClass();
                        bVar7.getClass();
                        r1Var = new r1(bVar5, bVar6, bVar7);
                    } else if (JvmClassMappingKt.getJavaClass(kClass).isArray()) {
                        Object objInvoke = function0.invoke();
                        objInvoke.getClass();
                        e9.b bVar8 = (e9.b) arrayList.get(0);
                        bVar8.getClass();
                        l1Var = new l1((KClass) objInvoke, bVar8);
                    } else {
                        r1Var = null;
                    }
                    r1Var = l1Var;
                }
            }
        }
        if (r1Var != null) {
            return r1Var;
        }
        e9.b[] bVarArr = (e9.b[]) arrayList.toArray(new e9.b[0]);
        return d1.d(kClass, (e9.b[]) Arrays.copyOf(bVarArr, bVarArr.length));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String p(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(e0.m.h(new byte[]{78}, new byte[]{105, 20, 19, -8, 72, 60, -112, -102}));
        sb.append(str.replace(e0.m.h(new byte[]{55}, new byte[]{16, -119, 33, -40, 16, 106, 0, -84}), e0.m.h(new byte[]{-25, -105, -19, 101}, new byte[]{-64, -53, -54, 66, -3, 85, -42, -47})));
        return q.i(new byte[]{-12}, new byte[]{-45, -13, 52, 96, 83, 70, 21, 115}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int q(Context context, int i9, int i10) {
        TypedValue typedValueA = w3.b.a(i9, context);
        return (typedValueA == null || typedValueA.type != 16) ? i10 : typedValueA.data;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static TimeInterpolator r(Context context, int i9, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i9, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            j1.i.k("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!m(strValueOf, "cubic-bezier") && !m(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!m(strValueOf, "cubic-bezier")) {
            if (m(strValueOf, "path")) {
                return new PathInterpolator(PathParser.createPathFromPathData(strValueOf.substring(5, strValueOf.length() - 1)));
            }
            j1.i.k("Invalid motion easing type: ".concat(strValueOf));
            return null;
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return new PathInterpolator(k(strArrSplit, 0), k(strArrSplit, 1), k(strArrSplit, 2), k(strArrSplit, 3));
        }
        androidx.navigation.b.b(strArrSplit.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e9.b s(KClass kClass) {
        kClass.getClass();
        e9.b bVarT = t(kClass);
        if (bVarT != null) {
            return bVarT;
        }
        d1.h(kClass);
        throw null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final e9.b t(KClass kClass) {
        kClass.getClass();
        e9.b bVarD = d1.d(kClass, new e9.b[0]);
        return bVarD == null ? (e9.b) k1.a.get(kClass) : bVarD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final ArrayList u(j9.b bVar, List list, boolean z8) {
        bVar.getClass();
        list.getClass();
        if (!z8) {
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                KType kType = (KType) it.next();
                kType.getClass();
                e9.b bVarA = o4.b.A(bVar, kType, false);
                if (bVarA == null) {
                    return null;
                }
                arrayList.add(bVarA);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            KType kType2 = (KType) it2.next();
            bVar.getClass();
            kType2.getClass();
            e9.b bVarA2 = o4.b.A(bVar, kType2, true);
            if (bVarA2 == null) {
                d1.h(d1.g(kType2));
                throw null;
            }
            arrayList2.add(bVarA2);
        }
        return arrayList2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(Throwable th) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        switch (this.f555a) {
            case 4:
                return toString().hashCode();
            default:
                return super.hashCode();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f555a) {
            case 4:
                String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
                simpleName.getClass();
                return simpleName;
            default:
                return super.toString();
        }
    }
}
