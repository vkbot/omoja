package p155o4;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.C0090h;
import android.util.Base64;
import android.view.Display;
import android.view.WindowManager;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
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
import p025c0.AbstractC0933b;
import p047e0.AbstractC1387m;
import p050e3.C1461d;
import p055e9.AbstractC1516l;
import p055e9.C1508d;
import p055e9.InterfaceC1506b;
import p065f9.AbstractC1594a;
import p077h.InterfaceC1642d;
import p078h0.C1652b;
import p096i9.AbstractC1813d1;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p098j0.EnumC1918d;
import p099j1.C1929i;
import p107j9.AbstractC2011b;
import p107j9.C2010a;
import p108k.C2019g;
import p130l9.C2237i;
import p142n0.C2467b;
import p142n0.EnumC2469d;
import p172q.C3034x;
import p200t4.C3240a;
import p200t4.C3245f;
import p200t4.C3246g;
import p200t4.C3247h;
import p200t4.C3248i;
import p200t4.C3255p;

/* JADX INFO: renamed from: o4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2587b {
    /* JADX WARN: Code duplicated, block: B:47:0x00bc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00be  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c3 A[RETURN] */
    /* JADX INFO: renamed from: A */
    public static final InterfaceC1506b m4031A(AbstractC2011b abstractC2011b, KType kType, boolean z9) {
        InterfaceC1506b interfaceC1506bM243g;
        InterfaceC1506b interfaceC1506bM1285o;
        KClass kClassM2921g = AbstractC1813d1.m2921g(kType);
        boolean zIsMarkedNullable = kType.isMarkedNullable();
        List<KTypeProjection> arguments = kType.getArguments();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arguments, 10));
        for (KTypeProjection kTypeProjection : arguments) {
            kTypeProjection.getClass();
            KType type = kTypeProjection.getType();
            if (type == null) {
                C2237i.m3598e(kTypeProjection.getType(), "Star projections in type arguments are not allowed, but had ");
                return null;
            }
            arrayList.add(type);
        }
        if (arrayList.isEmpty()) {
            C0090h c0090h = AbstractC1516l.f3707a;
            if (zIsMarkedNullable) {
                interfaceC1506bM243g = AbstractC1516l.f3708b.m243g(kClassM2921g);
            } else {
                interfaceC1506bM243g = AbstractC1516l.f3707a.m243g(kClassM2921g);
                if (interfaceC1506bM243g == null) {
                    interfaceC1506bM243g = null;
                }
            }
        } else {
            C0090h c0090h2 = AbstractC1516l.f3707a;
            Object objM245i = !zIsMarkedNullable ? AbstractC1516l.f3709c.m245i(kClassM2921g, arrayList) : AbstractC1516l.f3710d.m245i(kClassM2921g, arrayList);
            if (Result.m6094isFailureimpl(objM245i)) {
                objM245i = null;
            }
            interfaceC1506bM243g = (InterfaceC1506b) objM245i;
        }
        if (interfaceC1506bM243g != null) {
            return interfaceC1506bM243g;
        }
        if (!arrayList.isEmpty()) {
            ArrayList arrayListM1291u = AbstractC1031d.m1291u(abstractC2011b, arrayList, z9);
            if (arrayListM1291u != null) {
                interfaceC1506bM1285o = AbstractC1031d.m1285o(kClassM2921g, arrayListM1291u, new C1508d(1, arrayList));
                if (interfaceC1506bM1285o == null) {
                    if (((C2010a) abstractC2011b).f5491a.get(kClassM2921g) != null) {
                        C2467b.m3822a();
                        return null;
                    }
                }
                if (interfaceC1506bM1285o != null) {
                    if (zIsMarkedNullable) {
                        return AbstractC1594a.m2675a(interfaceC1506bM1285o);
                    }
                    return interfaceC1506bM1285o;
                }
            }
            return null;
        }
        List listEmptyList = CollectionsKt.emptyList();
        C2010a c2010a = (C2010a) abstractC2011b;
        c2010a.getClass();
        listEmptyList.getClass();
        if (c2010a.f5491a.get(kClassM2921g) != null) {
            C2467b.m3822a();
            return null;
        }
        interfaceC1506bM1285o = null;
        if (interfaceC1506bM1285o != null) {
            if (zIsMarkedNullable) {
                return AbstractC1594a.m2675a(interfaceC1506bM1285o);
            }
            return interfaceC1506bM1285o;
        }
        return null;
    }

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
    /* JADX INFO: renamed from: B */
    public static String m4032B(String str, String str2, boolean z9) {
        int i10;
        String strSubstring;
        ArrayList arrayList;
        String[] strArrSplit;
        int length;
        int i11;
        String str3;
        String strM2421h;
        StringBuilder sb;
        Iterator it;
        ArrayList arrayListM4033C;
        byte[] bArr;
        int i12;
        String strConcat;
        String strM2421h2;
        String str4;
        String strTrim;
        String str5;
        String[] strArr;
        byte[] bArr2;
        int i13 = 8;
        if (str2 == null || !str2.matches(AbstractC1387m.m2421h(new byte[]{-85, 30, 121, 15, 7, -123, -91, 113, -35, 102, 11, 8, 77, ByteCompanionObject.MIN_VALUE, -125, 111, -85, 30, 121, 15, 7, -123, -91, 113, -35, 102, 11, 8, 77, -127, -12}, new byte[]{-16, 95, 84, 85, 102, -88, -33, 65}))) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-26, -83, -9, -17, 13, 96, 120, -13, -33, -94, -30, -27, 0, 110, 121}, new byte[]{-81, -61, -127, -114, 97, 9, 28, -45}));
            return null;
        }
        String str6 = "";
        String str7 = str == null ? "" : str;
        if (m4058y(str7, str2) == z9) {
            return str7;
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(m4047n(str7)));
        int i14 = 0;
        int i15 = 0;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            int i16 = 1;
            if (i15 >= arrayList2.size()) {
                break;
            }
            String str8 = (String) arrayList2.get(i15);
            int iIndexOf = str8.indexOf(61);
            if (iIndexOf < 0) {
                str3 = str6;
                i10 = i14;
            } else {
                String strSubstring2 = str8.substring(i14, iIndexOf);
                i10 = i14;
                byte[] bArr3 = new byte[i13];
                // fill-array-data instruction
                bArr3[0] = -31;
                bArr3[1] = 49;
                bArr3[2] = -80;
                bArr3[3] = -23;
                bArr3[4] = -43;
                bArr3[5] = -18;
                bArr3[6] = -60;
                bArr3[7] = -126;
                if (AbstractC1387m.m2421h(new byte[]{-120, 92, -35, -116, -89, -99, -83, -12, -124, 31, -42, -100, -71, -126}, bArr3).equals(strSubstring2)) {
                    z10 = true;
                }
                byte[] bArr4 = new byte[i13];
                // fill-array-data instruction
                bArr4[0] = -94;
                bArr4[1] = -72;
                bArr4[2] = 92;
                bArr4[3] = -127;
                bArr4[4] = 100;
                bArr4[5] = 117;
                bArr4[6] = -68;
                bArr4[7] = -39;
                if (AbstractC1387m.m2421h(new byte[]{-53, -43, 49, -28, 22, 6, -43, -81, -57, -106, 47, -11, 5, 1, -55, -86}, bArr4).equals(strSubstring2)) {
                    z11 = true;
                }
                byte[] bArr5 = new byte[i13];
                // fill-array-data instruction
                bArr5[0] = -46;
                bArr5[1] = -36;
                bArr5[2] = -42;
                bArr5[3] = -19;
                bArr5[4] = 85;
                bArr5[5] = 103;
                bArr5[6] = 33;
                bArr5[7] = 96;
                if (AbstractC1387m.m2421h(new byte[]{-69, -79, -69, -120, 39, 20, 72, 22, -73, -14, -72, -116, 35, 14, 70, 1, -90, -75, -71, -125}, bArr5).equals(strSubstring2)) {
                    z12 = true;
                }
                byte[] bArr6 = new byte[i13];
                // fill-array-data instruction
                bArr6[0] = -37;
                bArr6[1] = -49;
                bArr6[2] = -102;
                bArr6[3] = -12;
                bArr6[4] = 25;
                bArr6[5] = 98;
                bArr6[6] = 119;
                bArr6[7] = -36;
                if (AbstractC1387m.m2421h(new byte[]{-78, -94, -9, -111, 107, 17, 30, -86, -66, -31, -4, -127, 117, 14}, bArr6).equals(strSubstring2)) {
                    StringBuilder sbM170u = AbstractC0074a.m170u(strSubstring2);
                    byte[] bArr7 = new byte[1];
                    bArr7[i10] = 56;
                    byte[] bArr8 = new byte[i13];
                    // fill-array-data instruction
                    bArr8[0] = 5;
                    bArr8[1] = 6;
                    bArr8[2] = 42;
                    bArr8[3] = -100;
                    bArr8[4] = 71;
                    bArr8[5] = -112;
                    bArr8[6] = 103;
                    bArr8[7] = 7;
                    sbM170u.append(AbstractC1387m.m2421h(bArr7, bArr8));
                    strSubstring = str8.substring(iIndexOf + 1);
                    if (m4059z(strSubstring, str2) == z9) {
                        str3 = str6;
                    } else {
                        arrayList = new ArrayList();
                        byte[] bArr9 = new byte[1];
                        bArr9[i10] = -89;
                        byte[] bArr10 = new byte[i13];
                        // fill-array-data instruction
                        bArr10[0] = -117;
                        bArr10[1] = 77;
                        bArr10[2] = -101;
                        bArr10[3] = 64;
                        bArr10[4] = 92;
                        bArr10[5] = -12;
                        bArr10[6] = 34;
                        bArr10[7] = 28;
                        strArrSplit = strSubstring.split(AbstractC1387m.m2421h(bArr9, bArr10), -1);
                        length = strArrSplit.length;
                        i11 = i10;
                        while (i11 < length) {
                            str4 = strArrSplit[i11];
                            strTrim = str4.trim();
                            if (strTrim.equals(str2)) {
                                str5 = str6;
                                strArr = strArrSplit;
                            } else {
                                str5 = str6;
                                bArr2 = new byte[i16];
                                bArr2[i10] = -39;
                                strArr = strArrSplit;
                                if (!strTrim.equals(AbstractC1387m.m2421h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                    arrayList.add(str4);
                                }
                            }
                            i11++;
                            str6 = str5;
                            strArrSplit = strArr;
                            i16 = 1;
                        }
                        str3 = str6;
                        byte[] bArr11 = new byte[i16];
                        bArr11[i10] = 47;
                        strM2421h = AbstractC1387m.m2421h(bArr11, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                        sb = new StringBuilder();
                        it = arrayList.iterator();
                        if (it.hasNext()) {
                            while (true) {
                                sb.append((CharSequence) it.next());
                                if (!it.hasNext()) {
                                    break;
                                    break;
                                }
                                sb.append((CharSequence) strM2421h);
                            }
                        }
                        strSubstring = sb.toString();
                        arrayListM4033C = m4033C(strSubstring);
                        bArr = new byte[1];
                        bArr[i10] = -115;
                        if (arrayListM4033C.contains(AbstractC1387m.m2421h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49}))) {
                            i12 = 1;
                        } else {
                            i12 = 1;
                        }
                        strConcat = null;
                        if (z9) {
                            if (i12 == 0) {
                                strConcat = str2;
                            }
                        } else if (i12 != 0) {
                            byte[] bArr12 = new byte[1];
                            bArr12[i10] = -112;
                            strConcat = AbstractC1387m.m2421h(bArr12, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                        }
                        if (strConcat != null) {
                            StringBuilder sbM170u2 = AbstractC0074a.m170u(strSubstring);
                            if (strSubstring.isEmpty()) {
                                strM2421h2 = str3;
                            } else {
                                byte[] bArr13 = new byte[1];
                                bArr13[i10] = -97;
                                strM2421h2 = AbstractC1387m.m2421h(bArr13, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                            }
                            strSubstring = AbstractC0074a.m165p(sbM170u2, strM2421h2, strConcat);
                        }
                    }
                    sbM170u.append(strSubstring);
                    arrayList2.set(i15, sbM170u.toString());
                } else {
                    byte[] bArr14 = new byte[i13];
                    // fill-array-data instruction
                    bArr14[0] = -5;
                    bArr14[1] = -123;
                    bArr14[2] = 12;
                    bArr14[3] = 126;
                    bArr14[4] = 14;
                    bArr14[5] = -22;
                    bArr14[6] = 35;
                    bArr14[7] = 113;
                    if (AbstractC1387m.m2421h(new byte[]{-110, -24, 97, 27, 124, -103, 74, 7, -98, -85, ByteCompanionObject.MAX_VALUE, 10, 111, -98, 86, 2}, bArr14).equals(strSubstring2)) {
                        StringBuilder sbM170u3 = AbstractC0074a.m170u(strSubstring2);
                        byte[] bArr15 = new byte[1];
                        bArr15[i10] = 56;
                        byte[] bArr16 = new byte[i13];
                        // fill-array-data instruction
                        bArr16[0] = 5;
                        bArr16[1] = 6;
                        bArr16[2] = 42;
                        bArr16[3] = -100;
                        bArr16[4] = 71;
                        bArr16[5] = -112;
                        bArr16[6] = 103;
                        bArr16[7] = 7;
                        sbM170u3.append(AbstractC1387m.m2421h(bArr15, bArr16));
                        strSubstring = str8.substring(iIndexOf + 1);
                        if (m4059z(strSubstring, str2) == z9) {
                            str3 = str6;
                        } else {
                            arrayList = new ArrayList();
                            byte[] bArr17 = new byte[1];
                            bArr17[i10] = -89;
                            byte[] bArr18 = new byte[i13];
                            // fill-array-data instruction
                            bArr18[0] = -117;
                            bArr18[1] = 77;
                            bArr18[2] = -101;
                            bArr18[3] = 64;
                            bArr18[4] = 92;
                            bArr18[5] = -12;
                            bArr18[6] = 34;
                            bArr18[7] = 28;
                            strArrSplit = strSubstring.split(AbstractC1387m.m2421h(bArr17, bArr18), -1);
                            length = strArrSplit.length;
                            i11 = i10;
                            while (i11 < length) {
                                str4 = strArrSplit[i11];
                                strTrim = str4.trim();
                                if (strTrim.equals(str2)) {
                                    str5 = str6;
                                    bArr2 = new byte[i16];
                                    bArr2[i10] = -39;
                                    strArr = strArrSplit;
                                    if (!strTrim.equals(AbstractC1387m.m2421h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                        arrayList.add(str4);
                                    }
                                } else {
                                    str5 = str6;
                                    strArr = strArrSplit;
                                }
                                i11++;
                                str6 = str5;
                                strArrSplit = strArr;
                                i16 = 1;
                            }
                            str3 = str6;
                            byte[] bArr19 = new byte[i16];
                            bArr19[i10] = 47;
                            strM2421h = AbstractC1387m.m2421h(bArr19, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                            sb = new StringBuilder();
                            it = arrayList.iterator();
                            if (it.hasNext()) {
                                while (true) {
                                    sb.append((CharSequence) it.next());
                                    if (!it.hasNext()) {
                                        break;
                                        break;
                                    }
                                    sb.append((CharSequence) strM2421h);
                                }
                            }
                            strSubstring = sb.toString();
                            arrayListM4033C = m4033C(strSubstring);
                            bArr = new byte[1];
                            bArr[i10] = -115;
                            if (arrayListM4033C.contains(AbstractC1387m.m2421h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49}))) {
                                i12 = 1;
                            } else {
                                i12 = 1;
                            }
                            strConcat = null;
                            if (z9) {
                                if (i12 == 0) {
                                    strConcat = str2;
                                }
                            } else if (i12 != 0) {
                                byte[] bArr110 = new byte[1];
                                bArr110[i10] = -112;
                                strConcat = AbstractC1387m.m2421h(bArr110, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                            }
                            if (strConcat != null) {
                                StringBuilder sbM170u4 = AbstractC0074a.m170u(strSubstring);
                                if (strSubstring.isEmpty()) {
                                    strM2421h2 = str3;
                                } else {
                                    byte[] bArr111 = new byte[1];
                                    bArr111[i10] = -97;
                                    strM2421h2 = AbstractC1387m.m2421h(bArr111, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                                }
                                strSubstring = AbstractC0074a.m165p(sbM170u4, strM2421h2, strConcat);
                            }
                        }
                        sbM170u3.append(strSubstring);
                        arrayList2.set(i15, sbM170u3.toString());
                    } else {
                        byte[] bArr20 = new byte[i13];
                        // fill-array-data instruction
                        bArr20[0] = -59;
                        bArr20[1] = -68;
                        bArr20[2] = 19;
                        bArr20[3] = -81;
                        bArr20[4] = 15;
                        bArr20[5] = -101;
                        bArr20[6] = 120;
                        bArr20[7] = 82;
                        if (AbstractC1387m.m2421h(new byte[]{-84, -47, 126, -54, 125, -24, 17, 36, -96, -110, 125, -50, 121, -14, 31, 51, -79, -43, 124, -63}, bArr20).equals(strSubstring2)) {
                            StringBuilder sbM170u5 = AbstractC0074a.m170u(strSubstring2);
                            byte[] bArr112 = new byte[1];
                            bArr112[i10] = 56;
                            byte[] bArr113 = new byte[i13];
                            // fill-array-data instruction
                            bArr113[0] = 5;
                            bArr113[1] = 6;
                            bArr113[2] = 42;
                            bArr113[3] = -100;
                            bArr113[4] = 71;
                            bArr113[5] = -112;
                            bArr113[6] = 103;
                            bArr113[7] = 7;
                            sbM170u5.append(AbstractC1387m.m2421h(bArr112, bArr113));
                            strSubstring = str8.substring(iIndexOf + 1);
                            if (m4059z(strSubstring, str2) == z9) {
                                str3 = str6;
                            } else {
                                arrayList = new ArrayList();
                                byte[] bArr114 = new byte[1];
                                bArr114[i10] = -89;
                                byte[] bArr115 = new byte[i13];
                                // fill-array-data instruction
                                bArr115[0] = -117;
                                bArr115[1] = 77;
                                bArr115[2] = -101;
                                bArr115[3] = 64;
                                bArr115[4] = 92;
                                bArr115[5] = -12;
                                bArr115[6] = 34;
                                bArr115[7] = 28;
                                strArrSplit = strSubstring.split(AbstractC1387m.m2421h(bArr114, bArr115), -1);
                                length = strArrSplit.length;
                                i11 = i10;
                                while (i11 < length) {
                                    str4 = strArrSplit[i11];
                                    strTrim = str4.trim();
                                    if (strTrim.equals(str2)) {
                                        str5 = str6;
                                        bArr2 = new byte[i16];
                                        bArr2[i10] = -39;
                                        strArr = strArrSplit;
                                        if (!strTrim.equals(AbstractC1387m.m2421h(bArr2, new byte[]{-12, -46, 109, -106, -65, 21, 16, -125}).concat(str2))) {
                                            arrayList.add(str4);
                                        }
                                    } else {
                                        str5 = str6;
                                        strArr = strArrSplit;
                                    }
                                    i11++;
                                    str6 = str5;
                                    strArrSplit = strArr;
                                    i16 = 1;
                                }
                                str3 = str6;
                                byte[] bArr116 = new byte[i16];
                                bArr116[i10] = 47;
                                strM2421h = AbstractC1387m.m2421h(bArr116, new byte[]{3, 70, 79, 11, -15, 50, -75, -60});
                                sb = new StringBuilder();
                                it = arrayList.iterator();
                                if (it.hasNext()) {
                                    while (true) {
                                        sb.append((CharSequence) it.next());
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        sb.append((CharSequence) strM2421h);
                                    }
                                }
                                strSubstring = sb.toString();
                                arrayListM4033C = m4033C(strSubstring);
                                bArr = new byte[1];
                                bArr[i10] = -115;
                                if (arrayListM4033C.contains(AbstractC1387m.m2421h(bArr, new byte[]{-89, -32, 41, 15, -114, -24, -115, 49})) || arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{-18, -76, -89, -111}, new byte[]{-113, -60, -41, -30, -42, -40, 47, 53}))) {
                                    i12 = 1;
                                } else {
                                    i12 = i10;
                                }
                                strConcat = null;
                                if (z9) {
                                    if (i12 == 0) {
                                        strConcat = str2;
                                    }
                                } else if (i12 != 0) {
                                    byte[] bArr117 = new byte[1];
                                    bArr117[i10] = -112;
                                    strConcat = AbstractC1387m.m2421h(bArr117, new byte[]{-67, -18, 125, -72, 75, 47, -2, 121}).concat(str2);
                                }
                                if (strConcat != null) {
                                    StringBuilder sbM170u6 = AbstractC0074a.m170u(strSubstring);
                                    if (strSubstring.isEmpty()) {
                                        strM2421h2 = str3;
                                    } else {
                                        byte[] bArr118 = new byte[1];
                                        bArr118[i10] = -97;
                                        strM2421h2 = AbstractC1387m.m2421h(bArr118, new byte[]{-77, 106, -83, -118, -103, -103, -11, 106});
                                    }
                                    strSubstring = AbstractC0074a.m165p(sbM170u6, strM2421h2, strConcat);
                                }
                            }
                            sbM170u5.append(strSubstring);
                            arrayList2.set(i15, sbM170u5.toString());
                        } else {
                            str3 = str6;
                        }
                    }
                }
            }
            i15++;
            i14 = i10;
            str6 = str3;
            i13 = 8;
        }
        int i17 = i14;
        if (z9 && !z10) {
            if (!z11 && !z12) {
                arrayList2.add(i17, AbstractC1387m.m2421h(new byte[]{106, -29, -8, 31, -102, 55, 73, 51, 102, -96, -13, 15, -124, 40, 29}, new byte[]{3, -114, -107, 122, -24, 68, 32, 69}).concat(str2));
            } else if (!z11) {
                arrayList2.add(0, AbstractC1387m.m2421h(new byte[]{23, -92, 85, 116, 42, 74, 58, 71, 27, -25, 75, 101, 57, 77, 38, 66, 67}, new byte[]{126, -55, 56, 17, 88, 57, 83, 49}).concat(str2));
            } else if (!z12) {
                arrayList2.add(AbstractC1387m.m2421h(new byte[]{-87, -48, 118, -74, -16, 9, -22, -20, -91, -109, 117, -78, -12, 19, -28, -5, -76, -44, 116, -67, -65}, new byte[]{-64, -67, 27, -45, -126, 122, -125, -102}).concat(str2));
            }
        }
        String strM2421h3 = AbstractC1387m.m2421h(new byte[]{-91}, new byte[]{-97, 75, 121, 121, -44, 125, 85, 126});
        StringBuilder sb2 = new StringBuilder();
        Iterator it2 = arrayList2.iterator();
        if (it2.hasNext()) {
            while (true) {
                sb2.append((CharSequence) it2.next());
                if (!it2.hasNext()) {
                    break;
                }
                sb2.append((CharSequence) strM2421h3);
            }
        }
        String string = sb2.toString();
        if (m4058y(string, str2) == z9) {
            return string;
        }
        C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{73, -39, 81, -86, -116, 53, 47, -106, 98, -39, 81, -93, -122, 97, 123, -99, 99, -53, 31, -76, -126, 34, 100, -108, 109, -35, 31, -77, -118, 53, 103, -102, ByteCompanionObject.MAX_VALUE, -52, 31, -89, -117, 32, 97, -110, 99, -42, 88, -28, -116, 53, 103, -112, 120, -104, 94, -76, -109, 50}, new byte[]{10, -72, 63, -60, -29, 65, 15, -11}));
        return null;
    }

    /* JADX INFO: renamed from: C */
    public static ArrayList m4033C(String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split(AbstractC1387m.m2421h(new byte[]{18}, new byte[]{62, 113, -126, 120, 63, -52, 112, 120}), -1)) {
            arrayList.add(str2.trim());
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: a */
    public static Object m4034a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static String m4035b(int i10, int i11, String str) {
        if (i10 < 0) {
            return C1461d.m2512l("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return C1461d.m2512l("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        C1929i.m3029k(AbstractC0074a.m154e(i11, "negative size: "));
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static void m4036c(int i10, String str, boolean z9) {
        if (z9) {
            return;
        }
        C1929i.m3029k(C1461d.m2512l(str, Integer.valueOf(i10)));
    }

    /* JADX INFO: renamed from: d */
    public static void m4037d(String str, boolean z9) {
        if (z9) {
            return;
        }
        C1929i.m3029k(str);
    }

    /* JADX INFO: renamed from: e */
    public static void m4038e(String str, boolean z9, Object obj) {
        if (z9) {
            return;
        }
        C1929i.m3029k(C1461d.m2512l(str, obj));
    }

    /* JADX INFO: renamed from: f */
    public static void m4039f(boolean z9) {
        if (z9) {
            return;
        }
        C2237i.m3594a();
    }

    /* JADX INFO: renamed from: g */
    public static void m4040g(boolean z9, String str, long j10) {
        if (z9) {
            return;
        }
        C1929i.m3029k(C1461d.m2512l(str, Long.valueOf(j10)));
    }

    /* JADX INFO: renamed from: h */
    public static void m4041h(int i10, int i11) {
        String strM2512l;
        if (i10 < 0 || i10 >= i11) {
            if (i10 < 0) {
                strM2512l = C1461d.m2512l("%s (%s) must not be negative", "index", Integer.valueOf(i10));
            } else {
                if (i11 < 0) {
                    C1929i.m3029k(AbstractC0074a.m154e(i11, "negative size: "));
                    return;
                }
                strM2512l = C1461d.m2512l("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i10), Integer.valueOf(i11));
            }
            throw new IndexOutOfBoundsException(strM2512l);
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m4042i(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: j */
    public static void m4043j(int i10, int i11) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(m4035b(i10, i11, "index"));
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m4044k(int i10, int i11, int i12) {
        String strM4035b;
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            if (i10 < 0 || i10 > i12) {
                strM4035b = m4035b(i10, i12, "start index");
            } else {
                strM4035b = (i11 < 0 || i11 > i12) ? m4035b(i11, i12, "end index") : C1461d.m2512l("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(strM4035b);
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m4045l(String str, boolean z9, Object obj) {
        if (z9) {
            return;
        }
        C1929i.m3030l(C1461d.m2512l(str, obj));
    }

    /* JADX INFO: renamed from: m */
    public static void m4046m(boolean z9, String str) {
        if (z9) {
            return;
        }
        C1929i.m3030l(str);
    }

    /* JADX INFO: renamed from: n */
    public static String[] m4047n(String str) {
        return (str == null || str.isEmpty()) ? new String[0] : str.split(AbstractC1387m.m2421h(new byte[]{19}, new byte[]{41, -73, 79, 48, 105, -65, -46, -79}), -1);
    }

    /* JADX INFO: renamed from: o */
    public static int m4048o(int i10, int i11) {
        int i12 = i10 - i11;
        if (i12 > i11) {
            i12 = i11;
            i11 = i12;
        }
        int i13 = 1;
        int i14 = 1;
        while (i10 > i11) {
            i13 *= i10;
            if (i14 <= i12) {
                i13 /= i14;
                i14++;
            }
            i10--;
        }
        while (i14 <= i12) {
            i13 /= i14;
            i14++;
        }
        return i13;
    }

    /* JADX INFO: renamed from: p */
    public static void m4049p(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            C3240a c3240a = (C3240a) obj;
            C3245f c3245f = new C3245f(c3240a);
            for (C3255p c3255p : c3240a.f9509b) {
                boolean z9 = c3240a.f9512e == 0;
                C3246g c3246g = new C3246g(c3255p, !z9);
                if (!map.containsKey(c3246g)) {
                    map.put(c3246g, new HashSet());
                }
                Set set = (Set) map.get(c3246g);
                if (!set.isEmpty() && z9) {
                    C0674b.m849p(c3255p, "Multiple components provide ", ".");
                    return;
                }
                set.add(c3245f);
            }
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            for (C3245f c3245f2 : (Set) it.next()) {
                for (C3247h c3247h : c3245f2.f9524a.f9510c) {
                    if (c3247h.f9531c == 0) {
                        Set<C3245f> set2 = (Set) map.get(new C3246g(c3247h.f9529a, c3247h.f9530b == 2));
                        if (set2 != null) {
                            for (C3245f c3245f3 : set2) {
                                c3245f2.f9525b.add(c3245f3);
                                c3245f3.f9526c.add(c3245f2);
                            }
                        }
                    }
                }
            }
        }
        HashSet<C3245f> hashSet = new HashSet();
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll((Set) it2.next());
        }
        HashSet hashSet2 = new HashSet();
        for (C3245f c3245f4 : hashSet) {
            if (c3245f4.f9526c.isEmpty()) {
                hashSet2.add(c3245f4);
            }
        }
        while (!hashSet2.isEmpty()) {
            C3245f c3245f5 = (C3245f) hashSet2.iterator().next();
            hashSet2.remove(c3245f5);
            i10++;
            for (C3245f c3245f6 : c3245f5.f9525b) {
                c3245f6.f9526c.remove(c3245f5);
                if (c3245f6.f9526c.isEmpty()) {
                    hashSet2.add(c3245f6);
                }
            }
        }
        if (i10 == arrayList.size()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (C3245f c3245f7 : hashSet) {
            if (!c3245f7.f9526c.isEmpty() && !c3245f7.f9525b.isEmpty()) {
                arrayList2.add(c3245f7.f9524a);
            }
        }
        throw new C3248i("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()), 4);
    }

    /* JADX INFO: renamed from: q */
    public static Bitmap m4050q(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: renamed from: r */
    public static String m4051r(Drawable drawable) {
        Bitmap bitmapCreateScaledBitmap;
        if (drawable == null) {
            return "";
        }
        Bitmap bitmapM4050q = m4050q(drawable);
        int width = bitmapM4050q.getWidth();
        int height = bitmapM4050q.getHeight();
        int iMax = Math.max(width, height);
        if (iMax > 96) {
            float f8 = 96.0f / iMax;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapM4050q, Math.max(1, Math.round(width * f8)), Math.max(1, Math.round(height * f8)), true);
        } else {
            bitmapCreateScaledBitmap = bitmapM4050q;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        if (bitmapCreateScaledBitmap != bitmapM4050q) {
            bitmapCreateScaledBitmap.recycle();
        }
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    /* JADX INFO: renamed from: s */
    public static String m4052s(Context context, String str) {
        if (context == null || str == null || str.trim().isEmpty()) {
            return "";
        }
        String strTrim = str.trim();
        Drawable drawable = null;
        if (strTrim.startsWith(AbstractC1387m.m2421h(new byte[]{-24, -21, -48, 33, -94, 105, 34, 58}, new byte[]{-104, -103, -65, 71, -53, 5, 71, 0}))) {
            C1919e c1919eM3004b = AbstractC1920f.m3004b(context, strTrim);
            if (c1919eM3004b.f5058a == EnumC1918d.f5056e) {
                drawable = c1919eM3004b.f5067j;
            }
        } else {
            EnumC2469d enumC2469d = (EnumC2469d) AbstractC1031d.m1279i(EnumC2469d.class, strTrim);
            if (enumC2469d == null) {
                for (EnumC2469d enumC2469d2 : EnumC2469d.values()) {
                    if (enumC2469d2.name().equalsIgnoreCase(strTrim)) {
                        enumC2469d = enumC2469d2;
                        break;
                    }
                }
            }
            if (enumC2469d != null) {
                drawable = context.getDrawable(enumC2469d.f6801c);
            }
        }
        return drawable == null ? "" : m4051r(drawable);
    }

    /* JADX INFO: renamed from: t */
    public static int m4053t(List list, InputStream inputStream, C2019g c2019g) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C3034x(inputStream, c2019g);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                int iMo2725b = ((InterfaceC1642d) list.get(i10)).mo2725b(inputStream, c2019g);
                inputStream.reset();
                if (iMo2725b != -1) {
                    return iMo2725b;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: u */
    public static int m4054u(int[] iArr, int i10, boolean z9) {
        boolean z10;
        int[] iArr2 = iArr;
        int i11 = 0;
        for (int i12 : iArr2) {
            i11 += i12;
        }
        int length = iArr2.length;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int i16 = length - 1;
            if (i13 >= i16) {
                return i14;
            }
            int i17 = 1 << i13;
            i15 |= i17;
            int i18 = 1;
            while (i18 < iArr2[i13]) {
                int i19 = i11 - i18;
                int i20 = length - i13;
                int i21 = i20 - 2;
                int iM4048o = m4048o(i19 - 1, i21);
                if (z9 && i15 == 0) {
                    int i22 = i20 - 1;
                    if (i19 - i22 >= i22) {
                        iM4048o -= m4048o(i19 - i20, i21);
                    }
                }
                boolean z11 = true;
                if (i20 - 1 > 1) {
                    int i23 = i19 - i21;
                    int iM4048o2 = 0;
                    while (i23 > i10) {
                        iM4048o2 += m4048o((i19 - i23) - 1, i20 - 3);
                        i23--;
                        z11 = z11;
                    }
                    z10 = z11;
                    iM4048o -= (i16 - i13) * iM4048o2;
                } else {
                    z10 = true;
                    if (i19 > i10) {
                        iM4048o--;
                    }
                }
                i14 += iM4048o;
                i18++;
                i15 &= ~i17;
                iArr2 = iArr;
            }
            i11 -= i18;
            i13++;
            iArr2 = iArr;
        }
    }

    /* JADX INFO: renamed from: v */
    public static ImageHeaderParser$ImageType m4055v(List list, InputStream inputStream, C2019g c2019g) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new C3034x(inputStream, c2019g);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeMo2726c = ((InterfaceC1642d) list.get(i10)).mo2726c(inputStream);
                inputStream.reset();
                if (imageHeaderParser$ImageTypeMo2726c != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeMo2726c;
                }
            } catch (Throwable th) {
                inputStream.reset();
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX INFO: renamed from: w */
    public static ImageHeaderParser$ImageType m4056w(List list, ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeMo2724a = ((InterfaceC1642d) list.get(i10)).mo2724a(byteBuffer);
                AtomicReference atomicReference = AbstractC0933b.f786a;
                if (imageHeaderParser$ImageTypeMo2724a != ImageHeaderParser$ImageType.UNKNOWN) {
                    return imageHeaderParser$ImageTypeMo2724a;
                }
            } catch (Throwable th) {
                AtomicReference atomicReference2 = AbstractC0933b.f786a;
                throw th;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX INFO: renamed from: x */
    public static WindowManager m4057x(int i10) {
        Context contextM2739h = C1652b.m2739h();
        if (contextM2739h == null) {
            return null;
        }
        Display[] displays = ((DisplayManager) contextM2739h.getSystemService(AbstractC1387m.m2421h(new byte[]{68, -83, -8, 50, -99, -41, -49}, new byte[]{32, -60, -117, 66, -15, -74, -74, -45}))).getDisplays();
        if (i10 < displays.length) {
            return (WindowManager) contextM2739h.createDisplayContext(displays[i10]).getSystemService(AbstractC1387m.m2421h(new byte[]{71, 65, -23, 99, -24, 33}, new byte[]{48, 40, -121, 7, -121, 86, 117, 88}));
        }
        return null;
    }

    /* JADX INFO: renamed from: y */
    public static boolean m4058y(String str, String str2) {
        String str3 = null;
        String str4 = null;
        for (String str5 : m4047n(str)) {
            int iIndexOf = str5.indexOf(61);
            if (iIndexOf >= 0) {
                String strSubstring = str5.substring(0, iIndexOf);
                String strSubstring2 = str5.substring(iIndexOf + 1);
                if (AbstractC1387m.m2421h(new byte[]{98, 103, -25, -98, 121, -28, -30, 49, 110, 36, -20, -114, 103, -5}, new byte[]{11, 10, -118, -5, 11, -105, -117, 71}).equals(strSubstring)) {
                    str3 = strSubstring2;
                    str4 = str3;
                } else if (AbstractC1387m.m2421h(new byte[]{-97, 99, 87, 39, -127, 23, -119, 124, -109, 32, 73, 54, -110, 16, -107, 121}, new byte[]{-10, 14, 58, 66, -13, 100, -32, 10}).equals(strSubstring)) {
                    str3 = strSubstring2;
                } else if (AbstractC1387m.m2421h(new byte[]{4, 125, -84, 82, -89, 65, 35, 29, 8, 62, -81, 86, -93, 91, 45, 10, 25, 121, -82, 89}, new byte[]{109, 16, -63, 55, -43, 50, 74, 107}).equals(strSubstring)) {
                    str4 = strSubstring2;
                }
            }
        }
        return m4059z(str3, str2) && m4059z(str4, str2);
    }

    /* JADX INFO: renamed from: z */
    public static boolean m4059z(String str, String str2) {
        if (str != null) {
            ArrayList arrayListM4033C = m4033C(str);
            if (!arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{-14}, new byte[]{-33, -101, 1, 19, 109, 65, 116, 41}) + str2) && !arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{-70, -38, 14, -75, -48}, new byte[]{-105, -69, 126, -59, -93, -62, 28, 15})) && !arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{-119, 0}, new byte[]{-92, 42, 22, -77, 14, 51, -113, 108})) && (arrayListM4033C.contains(str2) || arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{-94, 11, -48, 115}, new byte[]{-61, 123, -96, 0, -124, -81, 51, 39})) || arrayListM4033C.contains(AbstractC1387m.m2421h(new byte[]{93}, new byte[]{119, 90, -104, -97, -89, -61, -41, 60})))) {
                return true;
            }
        }
        return false;
    }
}
