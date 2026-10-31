package com.google.protobuf;

import android.util.Base64;
import com.example.navistart.MainActivity;
import com.example.navistart.boot;
import com.example.navistart.cores.InterC;
import com.google.android.material.materialswitch.MaterialSwitch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract /* synthetic */ class q {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, int i10, int i11, int i12) {
        return n.d(i9) + i10 + i11 + i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(UInt uInt, int i9) {
        return UInt.m190constructorimpl(uInt.getData() + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(IntRange intRange, int i9) {
        return intRange.getEndInclusive().intValue() + i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long d(long j9, InterC interC) {
        return interC.l(Long.valueOf(j9)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object e(long[] jArr, int i9, Function1 function1) {
        return function1.invoke(ULong.m263boximpl(ULongArray.m329getsVKNKU(jArr, i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object f(short[] sArr, int i9, Function1 function1) {
        return function1.invoke(UShort.m370boximpl(UShortArray.m434getMh2AYeg(sArr, i9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String g(StringBuilder sb, String str) {
        sb.append(str);
        return boot.e(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String h(byte[] bArr, u0.a aVar, String str) {
        return aVar.loadString(str, new String(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String i(byte[] bArr, byte[] bArr2, StringBuilder sb) {
        sb.append(e0.m.h(bArr, bArr2));
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String j(byte[] bArr, byte[] bArr2, StringBuilder sb, int i9) {
        sb.append(e0.m.h(bArr, bArr2));
        sb.append(i9);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String k(byte[] bArr, byte[] bArr2, StringBuilder sb, MainActivity mainActivity) {
        sb.append(e0.m.h(bArr, bArr2));
        sb.append(mainActivity.A());
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String l(byte[] bArr, byte[] bArr2, StringBuilder sb, String str) {
        sb.append(e0.m.h(bArr, bArr2));
        sb.append(str);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList m(LinkedHashMap linkedHashMap, Object obj) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(obj, arrayList);
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList n(Map map, Object obj) {
        ArrayList arrayList = new ArrayList();
        map.put(obj, arrayList);
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Iterator o(Iterable iterable, Function1 function1) {
        iterable.getClass();
        function1.getClass();
        return iterable.iterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void p(int i9, String str) {
        if (i9 != 0) {
            return;
        }
        n0.b.n(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void q(Object obj) {
        if (obj == null) {
            return;
        }
        n0.b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void r(byte[] bArr, StringBuilder sb) {
        sb.append(new String(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void s(byte[] bArr, u0.a aVar, String str, StringBuilder sb) {
        sb.append(aVar.loadString(new String(bArr), str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(byte[] bArr, byte[] bArr2, StringBuilder sb, int i9) {
        sb.append(e0.m.h(bArr, bArr2));
        sb.append(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(byte[] bArr, byte[] bArr2, StringBuilder sb, String str) {
        sb.append(e0.m.h(bArr, bArr2));
        sb.append(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(byte[] bArr, byte[] bArr2, u0.a aVar, boolean z8, MaterialSwitch materialSwitch) {
        materialSwitch.setChecked(aVar.loadBoolean(e0.m.h(bArr, bArr2), z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean w(byte[] bArr, u0.a aVar, String str, String str2) {
        return str2.equals(aVar.loadString(new String(bArr), str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] x(byte[] bArr, byte[] bArr2, u0.a aVar, String str, int i9) {
        return Base64.decode(aVar.loadString(str, e0.m.h(bArr, bArr2)), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String y(int i9) {
        if (i9 == 1) {
            return "LOCAL";
        }
        if (i9 == 2) {
            return "REMOTE";
        }
        if (i9 == 3) {
            return "DATA_DISK_CACHE";
        }
        if (i9 != 4) {
            return i9 != 5 ? "null" : "MEMORY_CACHE";
        }
        return "RESOURCE_DISK_CACHE";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String z(int i9) {
        switch (i9) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }
}
