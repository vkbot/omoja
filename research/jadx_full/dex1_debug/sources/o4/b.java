package o4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.graphics.Bitmap$Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.util.Base64;
import android.view.Display;
import android.view.WindowManager;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import e0.m;
import e9.l;
import i9.d1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import l9.i;
import q.x;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00be  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c3 A[RETURN] */
    public static final e9.b A(j9.b bVar, KType kType, boolean z8) {
        e9.b bVarG;
        e9.b bVarO;
        KClass kClassG = d1.g(kType);
        boolean zIsMarkedNullable = kType.isMarkedNullable();
        List<KTypeProjection> arguments = kType.getArguments();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arguments, 10));
        for (KTypeProjection kTypeProjection : arguments) {
            kTypeProjection.getClass();
            KType type = kTypeProjection.getType();
            if (type == null) {
                i.e(kTypeProjection.getType(), "Star projections in type arguments are not allowed, but had ");
                return null;
            }
            arrayList.add(type);
        }
        if (arrayList.isEmpty()) {
            android.support.v4.media.h hVar = l.a;
            if (zIsMarkedNullable) {
                bVarG = l.b.g(kClassG);
            } else {
                bVarG = l.a.g(kClassG);
                if (bVarG == null) {
                    bVarG = null;
                }
            }
        } else {
            android.support.v4.media.h hVar2 = l.a;
            Object objI = !zIsMarkedNullable ? l.c.i(kClassG, arrayList) : l.d.i(kClassG, arrayList);
            if (Result.m101isFailureimpl(objI)) {
                objI = null;
            }
            bVarG = (e9.b) objI;
        }
        if (bVarG != null) {
            return bVarG;
        }
        if (!arrayList.isEmpty()) {
            ArrayList arrayListU = com.bumptech.glide.d.u(bVar, arrayList, z8);
            if (arrayListU != null) {
                bVarO = com.bumptech.glide.d.o(kClassG, arrayListU, new e9.d(1, arrayList));
                if (bVarO == null) {
                    if (((j9.a) bVar).a.get(kClassG) != null) {
                        n0.b.a();
                        return null;
                    }
                }
                if (bVarO != null) {
                    if (zIsMarkedNullable) {
                        return f9.a.a(bVarO);
                    }
                    return bVarO;
                }
            }
            return null;
        }
        List listEmptyList = CollectionsKt.emptyList();
        j9.a aVar = (j9.a) bVar;
        aVar.getClass();
        listEmptyList.getClass();
        if (aVar.a.get(kClassG) != null) {
            n0.b.a();
            return null;
        }
        bVarO = null;
        if (bVarO != null) {
            if (zIsMarkedNullable) {
                return f9.a.a(bVarO);
            }
            return bVarO;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:105:0x0161 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:107:0x01a1 A[EDGE_INSN: B:107:0x01a1->B:53:0x01a1 BREAK  A[LOOP:2: B:50:0x018e->B:52:0x019d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:38:0x010c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0110  */
    /* JADX WARN: Code duplicated, block: B:41:0x012e  */
    /* JADX WARN: Code duplicated, block: B:43:0x013a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0159  */
    /* JADX WARN: Code duplicated, block: B:46:0x015d  */
    /* JADX WARN: Code duplicated, block: B:50:0x018e A[LOOP:2: B:50:0x018e->B:52:0x019d, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:52:0x019d A[LOOP:2: B:50:0x018e->B:52:0x019d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:59:0x01da  */
    /* JADX WARN: Code duplicated, block: B:62:0x01de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:65:0x01e3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:68:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:70:0x0207  */
    /* JADX WARN: Code duplicated, block: B:71:0x020a  */
    public static String B(String str, String str2, boolean z8) {
        int i9;
        String strSubstring;
        ArrayList arrayList;
        String[] strArrSplit;
        int length;
        int i10;
        String str3;
        String strH;
        StringBuilder sb;
        Iterator it;
        ArrayList arrayListC;
        byte[] bArr;
        int i11;
        String strConcat;
        String strH2;
        String str4;
        String strTrim;
        String str5;
        String[] strArr;
        byte[] bArr2;
        int i12 = 8;
        if (str2 == null || !str2.matches(m.h(new byte[]{-85, 30, 121, 15, 7, -123, -91, 113, -35, 102, 11, 8, 77, ByteCompanionObject.MIN_VALUE, -125, 111, -85, 30, 121, 15, 7, -123, -91, 113, -35, 102, 11, 8, 77, -127, -12}, new byte[]{-16, 95, 84, 85, 102, -88, -33, 65}))) {
            j1.i.k(m.h(new byte[]{-26, -83, -9, -17, 13, 96, 120, -13, -33, -94, -30, -27, 0, 110, 121}, new byte[]{-81, -61, -127, -114, 97, 9, 28, -45}));
            return null;
        }
        String str6 = "";
        String str7 = str == null ? "" : str;
        if (y(str7, str2) == z8) {
            return str7;
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(n(str7)));
        int i13 = 0;
        int i14 = 0;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            int i15 = 1;
            if (i14 >= arrayList2.size()) {
                break;
            }
            String str8 = (String) arrayList2.get(i14);
            int iIndexOf = str8.indexOf(61);
            if (iIndexOf < 0) {
                str3 = str6;
                i9 = i13;
            } else {
                String strSubstring2 = str8.substring(i13, iIndexOf);
                i9 = i13;
                byte[] bArr3 = new byte[i12];
                // fill-array-data instruction
                bArr3[0] = -31;
                bArr3[1] = 49;
                bArr3[2] = -80;
                bArr3[3] = -23;
                bArr3[4] = -43;
                bArr3[5] = -18;
                bArr3[6] = -60;
                bArr3[7] = -126;
                if (m.h(new byte[]{-120, 92, -35, -116, -89, -99, -83, -12, -124, 31, -42, -100, -71, -126}, bArr3).equals(strSubstring2)) {
                    z9 = true;
                }
                byte[] bArr4 = new byte[i12];
                // fill-array-data instruction
                bArr4[0] = -94;
                bArr4[1] = -72;
                bArr4[2] = 92;
                bArr4[3] = -127;
                bArr4[4] = 100;
                bArr4[5] = 117;
                bArr4[6] = -68;
                bArr4[7] = -39;
                if (m.h(new byte[]{-53, -43, 49, -28, 22, 6, -43, -81, -57, -106, 47, -11, 5, 1, -55, -86}, bArr4).equals(strSubstring2)) {
                    z10 = true;
                }
                byte[] bArr5 = new byte[i12];
                // fill-array-data instruction
                bArr5[0] = -46;
                bArr5[1] = -36;
                bArr5[2] = -42;
                bArr5[3] = -19;
                bArr5[4] = 85;
                bArr5[5] = 103;
                bArr5[6] = 33;
                bArr5[7] = 96;
                if (m.h(new byte[]{-69, -79, -69, -120, 39, 20, 72, 22, -73, -14, -72, -116, 35, 14, 70, 1, -90, -75, -71, -125}, bArr5).equals(strSubstring2)) {
                    z11 = true;
                }
                byte[] bArr6 = new byte[i12];
                // fill-array-data instruction
                bArr6[0] = -37;
                bArr6[1] = -49;
                bArr6[2] = -102;
                bArr6[3] = -12;
                bArr6[4] = 25;
                bArr6[5] = 98;
                bArr6[6] = 119;
                bArr6[7] = -36;
                if (m.h(new byte[]{-78, -94, -9, -111, 107, 17, 30, -86, -66, -31, -4, -127, 117, 14}, bArr6).equals(strSubstring2)) {
                    StringBuilder sbU = ai.onnxruntime.a.u(strSubstring2);
                    byte[] bArr7 = new byte[1];
                    bArr7[i9] = 56;
                    byte[] bArr8 = new byte[i12];
                    // fill-array-data instruction
                    bArr8[0] = 5;
                    bArr8[1] = 6;
                    bArr8[2] = 42;
                    bArr8[3] = -100;
                    bArr8[4] = 71;
                    bArr8[5] = -112;
                    bArr8[6] = 103;
                    bArr8[7] = 7;
                    sbU.append(m.h(bArr7, bArr8));
                    strSubstring = str8.substring(iIndexOf + 1);
                    if (z(strSubstring, str2) == z8) {
                        str3 = str6;
                    } else {
                        arrayList = new ArrayList();
                        byte[] bArr9 = new byte[1];
                        bArr9[i9] = -89;
                        byte[] bArr10 = new byte[i12];
                        // fill-array-data instruction
                        bArr10[0] = -117;
                        bArr10[1] = 77;
                        bArr10[2] = -101;
                        bArr10[3] = 64;
                        bArr10[4] = 92;
                        bArr10[5] = -12;
                        bArr10[6] = 34;
                        bArr10[7] = 28;
                        strArrSplit = strSubstring.split(m.h(bArr9, bArr10), -1);
                        length = strArrSplit.length;
                        i10 = i9;
                        while (i10 < length) {
                            str4 = strArrSplit[i10];
                            strTrim = str4.trim();
                            if (strTrim.equals(str2)) {
                                str5 = str6;
                                strArr = strArrSplit;
                            } else {
                                str5 = str6;
                                bArr2 = new byte[i15];
                                bArr2[i9] = -39;
                                strArr = strArrSplit;
                                if (!strTrim.equals(m.h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                    arrayList.add(str4);
                                }
                            }
                            i10++;
                            str6 = str5;
                            strArrSplit = strArr;
                            i15 = 1;
                        }
                        str3 = str6;
                        byte[] bArr11 = new byte[i15];
                        bArr11[i9] = 47;
                        strH = m.h(bArr11, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                        sb = new StringBuilder();
                        it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                    break;
                                }
                                sb.append((CharSequence) strH);
                            }
                        }
                        strSubstring = sb.toString();
                        arrayListC = C(strSubstring);
                        bArr = new byte[1];
                        bArr[i9] = -115;
                        if (arrayListC.contains(m.h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49}))) {
                            i11 = 1;
                        } else {
                            i11 = 1;
                        }
                        strConcat = null;
                        if (z8) {
                            if (i11 == 0) {
                                strConcat = str2;
                            }
                        } else if (i11 != 0) {
                            byte[] bArr12 = new byte[1];
                            bArr12[i9] = -112;
                            strConcat = m.h(bArr12, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                        }
                        if (strConcat != null) {
                            StringBuilder sbU2 = ai.onnxruntime.a.u(strSubstring);
                            if (strSubstring.isEmpty()) {
                                strH2 = str3;
                            } else {
                                byte[] bArr13 = new byte[1];
                                bArr13[i9] = -97;
                                strH2 = m.h(bArr13, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                            }
                            strSubstring = ai.onnxruntime.a.p(sbU2, strH2, strConcat);
                        }
                    }
                    sbU.append(strSubstring);
                    arrayList2.set(i14, sbU.toString());
                } else {
                    byte[] bArr14 = new byte[i12];
                    // fill-array-data instruction
                    bArr14[0] = -5;
                    bArr14[1] = -123;
                    bArr14[2] = 12;
                    bArr14[3] = 126;
                    bArr14[4] = 14;
                    bArr14[5] = -22;
                    bArr14[6] = 35;
                    bArr14[7] = 113;
                    if (m.h(new byte[]{-110, -24, 97, 27, 124, -103, 74, 7, -98, -85, ByteCompanionObject.MAX_VALUE, 10, 111, -98, 86, 2}, bArr14).equals(strSubstring2)) {
                        StringBuilder sbU3 = ai.onnxruntime.a.u(strSubstring2);
                        byte[] bArr15 = new byte[1];
                        bArr15[i9] = 56;
                        byte[] bArr16 = new byte[i12];
                        // fill-array-data instruction
                        bArr16[0] = 5;
                        bArr16[1] = 6;
                        bArr16[2] = 42;
                        bArr16[3] = -100;
                        bArr16[4] = 71;
                        bArr16[5] = -112;
                        bArr16[6] = 103;
                        bArr16[7] = 7;
                        sbU3.append(m.h(bArr15, bArr16));
                        strSubstring = str8.substring(iIndexOf + 1);
                        if (z(strSubstring, str2) == z8) {
                            str3 = str6;
                        } else {
                            arrayList = new ArrayList();
                            byte[] bArr17 = new byte[1];
                            bArr17[i9] = -89;
                            byte[] bArr18 = new byte[i12];
                            // fill-array-data instruction
                            bArr18[0] = -117;
                            bArr18[1] = 77;
                            bArr18[2] = -101;
                            bArr18[3] = 64;
                            bArr18[4] = 92;
                            bArr18[5] = -12;
                            bArr18[6] = 34;
                            bArr18[7] = 28;
                            strArrSplit = strSubstring.split(m.h(bArr17, bArr18), -1);
                            length = strArrSplit.length;
                            i10 = i9;
                            while (i10 < length) {
                                str4 = strArrSplit[i10];
                                strTrim = str4.trim();
                                if (strTrim.equals(str2)) {
                                    str5 = str6;
                                    bArr2 = new byte[i15];
                                    bArr2[i9] = -39;
                                    strArr = strArrSplit;
                                    if (!strTrim.equals(m.h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                        arrayList.add(str4);
                                    }
                                } else {
                                    str5 = str6;
                                    strArr = strArrSplit;
                                }
                                i10++;
                                str6 = str5;
                                strArrSplit = strArr;
                                i15 = 1;
                            }
                            str3 = str6;
                            byte[] bArr19 = new byte[i15];
                            bArr19[i9] = 47;
                            strH = m.h(bArr19, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                            sb = new StringBuilder();
                            it = arrayList.iterator();
                            if (it.hasNext()) {
                                while (true) {
                                    sb.append((CharSequence) it.next());
                                    if (!it.hasNext()) {
                                        break;
                                        break;
                                    }
                                    sb.append((CharSequence) strH);
                                }
                            }
                            strSubstring = sb.toString();
                            arrayListC = C(strSubstring);
                            bArr = new byte[1];
                            bArr[i9] = -115;
                            if (arrayListC.contains(m.h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49}))) {
                                i11 = 1;
                            } else {
                                i11 = 1;
                            }
                            strConcat = null;
                            if (z8) {
                                if (i11 == 0) {
                                    strConcat = str2;
                                }
                            } else if (i11 != 0) {
                                byte[] bArr110 = new byte[1];
                                bArr110[i9] = -112;
                                strConcat = m.h(bArr110, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                            }
                            if (strConcat != null) {
                                StringBuilder sbU4 = ai.onnxruntime.a.u(strSubstring);
                                if (strSubstring.isEmpty()) {
                                    strH2 = str3;
                                } else {
                                    byte[] bArr111 = new byte[1];
                                    bArr111[i9] = -97;
                                    strH2 = m.h(bArr111, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                                }
                                strSubstring = ai.onnxruntime.a.p(sbU4, strH2, strConcat);
                            }
                        }
                        sbU3.append(strSubstring);
                        arrayList2.set(i14, sbU3.toString());
                    } else {
                        byte[] bArr20 = new byte[i12];
                        // fill-array-data instruction
                        bArr20[0] = -59;
                        bArr20[1] = -68;
                        bArr20[2] = 19;
                        bArr20[3] = -81;
                        bArr20[4] = 15;
                        bArr20[5] = -101;
                        bArr20[6] = 120;
                        bArr20[7] = 82;
                        if (m.h(new byte[]{-84, -47, 126, -54, 125, -24, 17, 36, -96, -110, 125, -50, 121, -14, 31, 51, -79, -43, 124, -63}, bArr20).equals(strSubstring2)) {
                            StringBuilder sbU5 = ai.onnxruntime.a.u(strSubstring2);
                            byte[] bArr112 = new byte[1];
                            bArr112[i9] = 56;
                            byte[] bArr113 = new byte[i12];
                            // fill-array-data instruction
                            bArr113[0] = 5;
                            bArr113[1] = 6;
                            bArr113[2] = 42;
                            bArr113[3] = -100;
                            bArr113[4] = 71;
                            bArr113[5] = -112;
                            bArr113[6] = 103;
                            bArr113[7] = 7;
                            sbU5.append(m.h(bArr112, bArr113));
                            strSubstring = str8.substring(iIndexOf + 1);
                            if (z(strSubstring, str2) == z8) {
                                str3 = str6;
                            } else {
                                arrayList = new ArrayList();
                                byte[] bArr114 = new byte[1];
                                bArr114[i9] = -89;
                                byte[] bArr115 = new byte[i12];
                                // fill-array-data instruction
                                bArr115[0] = -117;
                                bArr115[1] = 77;
                                bArr115[2] = -101;
                                bArr115[3] = 64;
                                bArr115[4] = 92;
                                bArr115[5] = -12;
                                bArr115[6] = 34;
                                bArr115[7] = 28;
                                strArrSplit = strSubstring.split(m.h(bArr114, bArr115), -1);
                                length = strArrSplit.length;
                                i10 = i9;
                                while (i10 < length) {
                                    str4 = strArrSplit[i10];
                                    strTrim = str4.trim();
                                    if (strTrim.equals(str2)) {
                                        str5 = str6;
                                        bArr2 = new byte[i15];
                                        bArr2[i9] = -39;
                                        strArr = strArrSplit;
                                        if (!strTrim.equals(m.h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                            arrayList.add(str4);
                                        }
                                    } else {
                                        str5 = str6;
                                        strArr = strArrSplit;
                                    }
                                    i10++;
                                    str6 = str5;
                                    strArrSplit = strArr;
                                    i15 = 1;
                                }
                                str3 = str6;
                                byte[] bArr116 = new byte[i15];
                                bArr116[i9] = 47;
                                strH = m.h(bArr116, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                                sb = new StringBuilder();
                                it = arrayList.iterator();
                                if (it.hasNext()) {
                                    while (true) {
                                        sb.append((CharSequence) it.next());
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        sb.append((CharSequence) strH);
                                    }
                                }
                                strSubstring = sb.toString();
                                arrayListC = C(strSubstring);
                                bArr = new byte[1];
                                bArr[i9] = -115;
                                if (arrayListC.contains(m.h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49})) || arrayListC.contains(m.h(new byte[]{-18, -76, -89, -111}, new byte[]{-113, -60, -41, -30, -42, -40, 47, 53}))) {
                                    i11 = 1;
                                } else {
                                    i11 = i9;
                                }
                                strConcat = null;
                                if (z8) {
                                    if (i11 == 0) {
                                        strConcat = str2;
                                    }
                                } else if (i11 != 0) {
                                    byte[] bArr117 = new byte[1];
                                    bArr117[i9] = -112;
                                    strConcat = m.h(bArr117, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                                }
                                if (strConcat != null) {
                                    StringBuilder sbU6 = ai.onnxruntime.a.u(strSubstring);
                                    if (strSubstring.isEmpty()) {
                                        strH2 = str3;
                                    } else {
                                        byte[] bArr118 = new byte[1];
                                        bArr118[i9] = -97;
                                        strH2 = m.h(bArr118, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                                    }
                                    strSubstring = ai.onnxruntime.a.p(sbU6, strH2, strConcat);
                                }
                            }
                            sbU5.append(strSubstring);
                            arrayList2.set(i14, sbU5.toString());
                        } else {
                            str3 = str6;
                        }
                    }
                }
            }
            i14++;
            i13 = i9;
            str6 = str3;
            i12 = 8;
        }
        int i16 = i13;
        if (z8 && !z9) {
            if (!z10 && !z11) {
                arrayList2.add(i16, m.h(new byte[]{106, -29, -8, 31, -102, 55, 73, 51, 102, -96, -13, 15, -124, 40, 29}, new byte[]{3, -114, -107, 122, -24, 68, 32, 69}).concat(str2));
            } else if (!z10) {
                arrayList2.add(0, m.h(new byte[]{23, -92, 85, 116, 42, 74, 58, 71, 27, -25, 75, 101, 57, 77, 38, 66, 67}, new byte[]{126, -55, 56, 17, 88, 57, 83, 49}).concat(str2));
            } else if (!z11) {
                arrayList2.add(m.h(new byte[]{-87, -48, 118, -74, -16, 9, -22, -20, -91, -109, 117, -78, -12, 19, -28, -5, -76, -44, 116, -67, -65}, new byte[]{-64, -67, 27, -45, -126, 122, -125, -102}).concat(str2));
            }
        }
        String strH3 = m.h(new byte[]{-91}, new byte[]{-97, 75, 121, 121, -44, 125, 85, 126});
        StringBuilder sb2 = new StringBuilder();
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it2.next());
                if (!it2.hasNext()) {
                    break;
                }
                sb2.append((CharSequence) strH3);
            }
        }
        String string = sb2.toString();
        if (y(string, str2) == z8) {
            return string;
        }
        j1.i.k(m.h(new byte[]{73, -39, 81, -86, -116, 53, 47, -106, 98, -39, 81, -93, -122, 97, 123, -99, 99, -53, 31, -76, -126, 34, 100, -108, 109, -35, 31, -77, -118, 53, 103, -102, ByteCompanionObject.MAX_VALUE, -52, 31, -89, -117, 32, 97, -110, 99, -42, 88, -28, -116, 53, 103, -112, 120, -104, 94, -76, -109, 50}, new byte[]{10, -72, 63, -60, -29, 65, 15, -11}));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList C(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(m.h(new byte[]{18}, new byte[]{62, 113, -126, 120, 63, -52, 112, 120}), -1)) {
            arrayList.add(str2.trim());
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object a(Parcel parcel, Parcelable$Creator parcelable$Creator) {
        if (parcel.readInt() != 0) {
            return parcelable$Creator.createFromParcel(parcel);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(int i9, int i10, String str) {
        if (i9 < 0) {
            return e3.d.l("%s (%s) must not be negative", str, Integer.valueOf(i9));
        }
        if (i10 >= 0) {
            return e3.d.l("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i9), Integer.valueOf(i10));
        }
        j1.i.k(ai.onnxruntime.a.e(i10, "negative size: "));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(int i9, String str, boolean z8) {
        if (z8) {
            return;
        }
        j1.i.k(e3.d.l(str, Integer.valueOf(i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(String str, boolean z8) {
        if (z8) {
            return;
        }
        j1.i.k(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(String str, boolean z8, Object obj) {
        if (z8) {
            return;
        }
        j1.i.k(e3.d.l(str, obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f(boolean z8) {
        if (z8) {
            return;
        }
        i.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(boolean z8, String str, long j9) {
        if (z8) {
            return;
        }
        j1.i.k(e3.d.l(str, Long.valueOf(j9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(int i9, int i10) {
        String strL;
        if (i9 < 0 || i9 >= i10) {
            if (i9 < 0) {
                strL = e3.d.l("%s (%s) must not be negative", "index", Integer.valueOf(i9));
            } else {
                if (i10 < 0) {
                    j1.i.k(ai.onnxruntime.a.e(i10, "negative size: "));
                    return;
                }
                strL = e3.d.l("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i9), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(strL);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        n0.b.n(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(int i9, int i10) {
        if (i9 < 0 || i9 > i10) {
            throw new IndexOutOfBoundsException(b(i9, i10, "index"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void k(int i9, int i10, int i11) {
        String strB;
        if (i9 < 0 || i10 < i9 || i10 > i11) {
            if (i9 < 0 || i9 > i11) {
                strB = b(i9, i11, "start index");
            } else {
                strB = (i10 < 0 || i10 > i11) ? b(i10, i11, "end index") : e3.d.l("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i9));
            }
            throw new IndexOutOfBoundsException(strB);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void l(String str, boolean z8, Object obj) {
        if (z8) {
            return;
        }
        j1.i.l(e3.d.l(str, obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(boolean z8, String str) {
        if (z8) {
            return;
        }
        j1.i.l(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String[] n(String str) {
        return (str == null || str.isEmpty()) ? new String[0] : str.split(m.h(new byte[]{19}, new byte[]{41, -73, 79, 48, 105, -65, -46, -79}), -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int o(int i9, int i10) {
        int i11 = i9 - i10;
        if (i11 > i10) {
            i11 = i10;
            i10 = i11;
        }
        int i12 = 1;
        int i13 = 1;
        while (i9 > i10) {
            i12 *= i9;
            if (i13 <= i11) {
                i12 /= i13;
                i13++;
            }
            i9--;
        }
        while (i13 <= i11) {
            i12 /= i13;
            i13++;
        }
        return i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            t4.a aVar = (t4.a) obj;
            t4.f fVar = new t4.f(aVar);
            for (p pVar : aVar.f5384b) {
                boolean z8 = aVar.e == 0;
                t4.g gVar = new t4.g(pVar, !z8);
                if (!map.containsKey(gVar)) {
                    map.put(gVar, new HashSet());
                }
                Set set = (Set) map.get(gVar);
                if (!set.isEmpty() && z8) {
                    androidx.navigation.b.p(pVar, "Multiple components provide ", ".");
                    return;
                }
                set.add(fVar);
            }
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            for (t4.f fVar2 : (Set) it.next()) {
                for (t4.h hVar : fVar2.f5393a.c) {
                    if (hVar.c == 0) {
                        Set<t4.f> set2 = (Set) map.get(new t4.g(hVar.f5397a, hVar.f5398b == 2));
                        if (set2 != null) {
                            for (t4.f fVar3 : set2) {
                                fVar2.f5394b.add(fVar3);
                                fVar3.c.add(fVar2);
                            }
                        }
                    }
                }
            }
        }
        HashSet<t4.f> hashSet = new HashSet();
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll((Set) it2.next());
        }
        HashSet hashSet2 = new HashSet();
        for (t4.f fVar4 : hashSet) {
            if (fVar4.c.isEmpty()) {
                hashSet2.add(fVar4);
            }
        }
        while (!hashSet2.isEmpty()) {
            t4.f fVar5 = (t4.f) hashSet2.iterator().next();
            hashSet2.remove(fVar5);
            i9++;
            for (t4.f fVar6 : fVar5.f5394b) {
                fVar6.c.remove(fVar5);
                if (fVar6.c.isEmpty()) {
                    hashSet2.add(fVar6);
                }
            }
        }
        if (i9 == arrayList.size()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (t4.f fVar7 : hashSet) {
            if (!fVar7.c.isEmpty() && !fVar7.f5394b.isEmpty()) {
                arrayList2.add(fVar7.f5393a);
            }
        }
        throw new t4.i("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()), 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Bitmap q(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap$Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String r(Drawable drawable) {
        Bitmap bitmapCreateScaledBitmap;
        if (drawable == null) {
            return "";
        }
        Bitmap bitmapQ = q(drawable);
        int width = bitmapQ.getWidth();
        int height = bitmapQ.getHeight();
        int iMax = Math.max(width, height);
        if (iMax > 96) {
            float f8 = 96.0f / iMax;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapQ, Math.max(1, Math.round(width * f8)), Math.max(1, Math.round(height * f8)), true);
        } else {
            bitmapCreateScaledBitmap = bitmapQ;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateScaledBitmap.compress(Bitmap$CompressFormat.PNG, 100, byteArrayOutputStream);
        if (bitmapCreateScaledBitmap != bitmapQ) {
            bitmapCreateScaledBitmap.recycle();
        }
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String s(Context context, String str) {
        if (context == null || str == null || str.trim().isEmpty()) {
            return "";
        }
        String strTrim = str.trim();
        Drawable drawable = null;
        if (strTrim.startsWith(m.h(new byte[]{-24, -21, -48, 33, -94, 105, 34, 58}, new byte[]{-104, -103, -65, 71, -53, 5, 71, 0}))) {
            j0.e eVarB = j0.f.b(context, strTrim);
            if (eVarB.f2872a == j0.d.e) {
                drawable = eVarB.f2878j;
            }
        } else {
            n0.d dVar = (n0.d) com.bumptech.glide.d.i(n0.d.class, strTrim);
            if (dVar == null) {
                for (n0.d dVar2 : n0.d.values()) {
                    if (dVar2.name().equalsIgnoreCase(strTrim)) {
                        dVar = dVar2;
                        break;
                    }
                }
            }
            if (dVar != null) {
                drawable = context.getDrawable(dVar.c);
            }
        }
        return drawable == null ? "" : r(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int t(List list, InputStream inputStream, k.g gVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, gVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                int iB = ((h.d) list.get(i9)).b(inputStream, gVar);
                inputStream.reset();
                if (iB != -1) {
                    return iB;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int u(int[] iArr, int i9, boolean z8) {
        boolean z9;
        int[] iArr2 = iArr;
        int i10 = 0;
        for (int i11 : iArr2) {
            i10 += i11;
        }
        int length = iArr2.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = length - 1;
            if (i12 >= i15) {
                return i13;
            }
            int i16 = 1 << i12;
            i14 |= i16;
            int i17 = 1;
            while (i17 < iArr2[i12]) {
                int i18 = i10 - i17;
                int i19 = length - i12;
                int i20 = i19 - 2;
                int iO = o(i18 - 1, i20);
                if (z8 && i14 == 0) {
                    int i21 = i19 - 1;
                    if (i18 - i21 >= i21) {
                        iO -= o(i18 - i19, i20);
                    }
                }
                boolean z10 = true;
                if (i19 - 1 > 1) {
                    int i22 = i18 - i20;
                    int iO2 = 0;
                    while (i22 > i9) {
                        iO2 += o((i18 - i22) - 1, i19 - 3);
                        i22--;
                        z10 = z10;
                    }
                    z9 = z10;
                    iO -= (i15 - i12) * iO2;
                } else {
                    z9 = true;
                    if (i18 > i9) {
                        iO--;
                    }
                }
                i13 += iO;
                i17++;
                i14 &= ~i16;
                iArr2 = iArr;
            }
            i10 -= i17;
            i12++;
            iArr2 = iArr;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ImageHeaderParser$ImageType v(List list, InputStream inputStream, k.g gVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new x(inputStream, gVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = ((h.d) list.get(i9)).c(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeC != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeC;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ImageHeaderParser$ImageType w(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = ((h.d) list.get(i9)).a(byteBuffer);
                AtomicReference atomicReference = c0.b.f393a;
                if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeA;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = c0.b.f393a;
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static WindowManager x(int i9) {
        Context contextH = h0.b.h();
        if (contextH == null) {
            return null;
        }
        Display[] displays = ((DisplayManager) contextH.getSystemService(m.h(new byte[]{68, -83, -8, 50, -99, -41, -49}, new byte[]{32, -60, -117, 66, -15, -74, -74, -45}))).getDisplays();
        if (i9 < displays.length) {
            return (WindowManager) contextH.createDisplayContext(displays[i9]).getSystemService(m.h(new byte[]{71, 65, -23, 99, -24, 33}, new byte[]{48, 40, -121, 7, -121, 86, 117, 88}));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean y(String str, String str2) {
        String str3 = null;
        String str4 = null;
        for (String str5 : n(str)) {
            int iIndexOf = str5.indexOf(61);
            if (iIndexOf >= 0) {
                String strSubstring = str5.substring(0, iIndexOf);
                String strSubstring2 = str5.substring(iIndexOf + 1);
                if (m.h(new byte[]{98, 103, -25, -98, 121, -28, -30, 49, 110, 36, -20, -114, 103, -5}, new byte[]{11, 10, -118, -5, 11, -105, -117, 71}).equals(strSubstring)) {
                    str3 = strSubstring2;
                    str4 = str3;
                } else if (m.h(new byte[]{-97, 99, 87, 39, -127, 23, -119, 124, -109, 32, 73, 54, -110, 16, -107, 121}, new byte[]{-10, 14, 58, 66, -13, 100, -32, 10}).equals(strSubstring)) {
                    str3 = strSubstring2;
                } else if (m.h(new byte[]{4, 125, -84, 82, -89, 65, 35, 29, 8, 62, -81, 86, -93, 91, 45, 10, 25, 121, -82, 89}, new byte[]{109, 16, -63, 55, -43, 50, 74, 107}).equals(strSubstring)) {
                    str4 = strSubstring2;
                }
            }
        }
        return z(str3, str2) && z(str4, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean z(String str, String str2) {
        if (str != null) {
            ArrayList arrayListC = C(str);
            if (!arrayListC.contains(m.h(new byte[]{-14}, new byte[]{-33, -101, 1, 19, 109, 65, 116, 41}) + str2) && !arrayListC.contains(m.h(new byte[]{-70, -38, 14, -75, -48}, new byte[]{-105, -69, 126, -59, -93, -62, 28, 15})) && !arrayListC.contains(m.h(new byte[]{-119, 0}, new byte[]{-92, 42, 22, -77, 14, 51, -113, 108})) && (arrayListC.contains(str2) || arrayListC.contains(m.h(new byte[]{-94, 11, -48, 115}, new byte[]{-61, 123, -96, 0, -124, -81, 51, 39})) || arrayListC.contains(m.h(new byte[]{93}, new byte[]{119, 90, -104, -97, -89, -61, -41, 60})))) {
                return true;
            }
        }
        return false;
    }
}
