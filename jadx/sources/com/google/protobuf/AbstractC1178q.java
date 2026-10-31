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
import p047e0.AbstractC1387m;
import p142n0.C2467b;
import p206u0.C3277a;

/* JADX INFO: renamed from: com.google.protobuf.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1178q {
    /* JADX INFO: renamed from: a */
    public static int m2067a(int i10, int i11, int i12, int i13) {
        return AbstractC1169n.m2049d(i10) + i11 + i12 + i13;
    }

    /* JADX INFO: renamed from: b */
    public static int m2068b(UInt uInt, int i10) {
        return UInt.m6183constructorimpl(uInt.getData() + i10);
    }

    /* JADX INFO: renamed from: c */
    public static int m2069c(IntRange intRange, int i10) {
        return intRange.getEndInclusive().intValue() + i10;
    }

    /* JADX INFO: renamed from: d */
    public static long m2070d(long j10, InterC interC) {
        return interC.m1635l(Long.valueOf(j10)).longValue();
    }

    /* JADX INFO: renamed from: e */
    public static Object m2071e(long[] jArr, int i10, Function1 function1) {
        return function1.invoke(ULong.m6256boximpl(ULongArray.m6322getsVKNKU(jArr, i10)));
    }

    /* JADX INFO: renamed from: f */
    public static Object m2072f(short[] sArr, int i10, Function1 function1) {
        return function1.invoke(UShort.m6363boximpl(UShortArray.m6427getMh2AYeg(sArr, i10)));
    }

    /* JADX INFO: renamed from: g */
    public static String m2073g(StringBuilder sb, String str) {
        sb.append(str);
        return boot.m1614e(sb.toString());
    }

    /* JADX INFO: renamed from: h */
    public static String m2074h(byte[] bArr, C3277a c3277a, String str) {
        return c3277a.loadString(str, new String(bArr));
    }

    /* JADX INFO: renamed from: i */
    public static String m2075i(byte[] bArr, byte[] bArr2, StringBuilder sb) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        return sb.toString();
    }

    /* JADX INFO: renamed from: j */
    public static String m2076j(byte[] bArr, byte[] bArr2, StringBuilder sb, int i10) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        sb.append(i10);
        return sb.toString();
    }

    /* JADX INFO: renamed from: k */
    public static String m2077k(byte[] bArr, byte[] bArr2, StringBuilder sb, MainActivity mainActivity) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        sb.append(mainActivity.m1429A());
        return sb.toString();
    }

    /* JADX INFO: renamed from: l */
    public static String m2078l(byte[] bArr, byte[] bArr2, StringBuilder sb, String str) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: m */
    public static ArrayList m2079m(LinkedHashMap linkedHashMap, Object obj) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(obj, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: n */
    public static ArrayList m2080n(Map map, Object obj) {
        ArrayList arrayList = new ArrayList();
        map.put(obj, arrayList);
        return arrayList;
    }

    /* JADX INFO: renamed from: o */
    public static Iterator m2081o(Iterable iterable, Function1 function1) {
        iterable.getClass();
        function1.getClass();
        return iterable.iterator();
    }

    /* JADX INFO: renamed from: p */
    public static /* synthetic */ void m2082p(int i10, String str) {
        if (i10 != 0) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: q */
    public static /* synthetic */ void m2083q(Object obj) {
        if (obj == null) {
            return;
        }
        C2467b.m3822a();
    }

    /* JADX INFO: renamed from: r */
    public static void m2084r(byte[] bArr, StringBuilder sb) {
        sb.append(new String(bArr));
    }

    /* JADX INFO: renamed from: s */
    public static void m2085s(byte[] bArr, C3277a c3277a, String str, StringBuilder sb) {
        sb.append(c3277a.loadString(new String(bArr), str));
    }

    /* JADX INFO: renamed from: t */
    public static void m2086t(byte[] bArr, byte[] bArr2, StringBuilder sb, int i10) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        sb.append(i10);
    }

    /* JADX INFO: renamed from: u */
    public static void m2087u(byte[] bArr, byte[] bArr2, StringBuilder sb, String str) {
        sb.append(AbstractC1387m.m2421h(bArr, bArr2));
        sb.append(str);
    }

    /* JADX INFO: renamed from: v */
    public static void m2088v(byte[] bArr, byte[] bArr2, C3277a c3277a, boolean z9, MaterialSwitch materialSwitch) {
        materialSwitch.setChecked(c3277a.loadBoolean(AbstractC1387m.m2421h(bArr, bArr2), z9));
    }

    /* JADX INFO: renamed from: w */
    public static boolean m2089w(byte[] bArr, C3277a c3277a, String str, String str2) {
        return str2.equals(c3277a.loadString(new String(bArr), str));
    }

    /* JADX INFO: renamed from: x */
    public static byte[] m2090x(byte[] bArr, byte[] bArr2, C3277a c3277a, String str, int i10) {
        return Base64.decode(c3277a.loadString(str, AbstractC1387m.m2421h(bArr, bArr2)), i10);
    }

    /* JADX INFO: renamed from: y */
    public static /* synthetic */ String m2091y(int i10) {
        if (i10 == 1) {
            return "LOCAL";
        }
        if (i10 == 2) {
            return "REMOTE";
        }
        if (i10 == 3) {
            return "DATA_DISK_CACHE";
        }
        if (i10 != 4) {
            return i10 != 5 ? "null" : "MEMORY_CACHE";
        }
        return "RESOURCE_DISK_CACHE";
    }

    /* JADX INFO: renamed from: z */
    public static /* synthetic */ String m2092z(int i10) {
        switch (i10) {
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
