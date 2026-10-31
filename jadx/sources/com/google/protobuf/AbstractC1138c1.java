package com.google.protobuf;

import androidx.navigation.C0674b;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.c1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1138c1 {

    /* JADX INFO: renamed from: a */
    public static final Class f2648a;

    /* JADX INFO: renamed from: b */
    public static final C1162k1 f2649b;

    /* JADX INFO: renamed from: c */
    public static final C1162k1 f2650c;

    static {
        Class<?> cls;
        Class<?> cls2;
        C1162k1 c1162k1 = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f2648a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                c1162k1 = (C1162k1) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        f2649b = c1162k1;
        f2650c = new C1162k1();
    }

    /* JADX INFO: renamed from: a */
    public static int m1911a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2046a = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iM2046a += AbstractC1169n.m2046a(((Integer) list.get(i10)).intValue());
        }
        return iM2046a;
    }

    /* JADX INFO: renamed from: b */
    public static int m1912b(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC1169n.m2048c(i10) + 4) * size;
    }

    /* JADX INFO: renamed from: c */
    public static int m1913c(int i10, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC1169n.m2048c(i10) + 8) * size;
    }

    /* JADX INFO: renamed from: d */
    public static int m1914d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2046a = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iM2046a += AbstractC1169n.m2046a(((Integer) list.get(i10)).intValue());
        }
        return iM2046a;
    }

    /* JADX INFO: renamed from: e */
    public static int m1915e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2050e = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iM2050e += AbstractC1169n.m2050e(((Long) list.get(i10)).longValue());
        }
        return iM2050e;
    }

    /* JADX INFO: renamed from: f */
    public static int m1916f(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2049d = 0;
        for (int i10 = 0; i10 < size; i10++) {
            int iIntValue = ((Integer) list.get(i10)).intValue();
            iM2049d += AbstractC1169n.m2049d((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return iM2049d;
    }

    /* JADX INFO: renamed from: g */
    public static int m1917g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2050e = 0;
        for (int i10 = 0; i10 < size; i10++) {
            long jLongValue = ((Long) list.get(i10)).longValue();
            iM2050e += AbstractC1169n.m2050e((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iM2050e;
    }

    /* JADX INFO: renamed from: h */
    public static int m1918h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2049d = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iM2049d += AbstractC1169n.m2049d(((Integer) list.get(i10)).intValue());
        }
        return iM2049d;
    }

    /* JADX INFO: renamed from: i */
    public static int m1919i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iM2050e = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iM2050e += AbstractC1169n.m2050e(((Long) list.get(i10)).longValue());
        }
        return iM2050e;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: j */
    public static void m1920j(C1162k1 c1162k1, Object obj, Object obj2) {
        c1162k1.getClass();
        AbstractC1202y abstractC1202y = (AbstractC1202y) obj;
        C1159j1 c1159j1 = abstractC1202y.unknownFields;
        C1159j1 c1159j2 = ((AbstractC1202y) obj2).unknownFields;
        C1159j1 c1159j3 = C1159j1.f2709f;
        if (!c1159j3.equals(c1159j2)) {
            if (c1159j3.equals(c1159j1)) {
                int i10 = c1159j1.f2710a + c1159j2.f2710a;
                int[] iArrCopyOf = Arrays.copyOf(c1159j1.f2711b, i10);
                System.arraycopy(c1159j2.f2711b, 0, iArrCopyOf, c1159j1.f2710a, c1159j2.f2710a);
                Object[] objArrCopyOf = Arrays.copyOf(c1159j1.f2712c, i10);
                System.arraycopy(c1159j2.f2712c, 0, objArrCopyOf, c1159j1.f2710a, c1159j2.f2710a);
                c1159j1 = new C1159j1(i10, iArrCopyOf, objArrCopyOf, true);
            } else {
                c1159j1.getClass();
                if (!c1159j2.equals(c1159j3)) {
                    if (!c1159j1.f2714e) {
                        C0674b.m835a();
                        return;
                    }
                    int i11 = c1159j1.f2710a + c1159j2.f2710a;
                    c1159j1.m2006a(i11);
                    System.arraycopy(c1159j2.f2711b, 0, c1159j1.f2711b, c1159j1.f2710a, c1159j2.f2710a);
                    System.arraycopy(c1159j2.f2712c, 0, c1159j1.f2712c, c1159j1.f2710a, c1159j2.f2710a);
                    c1159j1.f2710a = i11;
                }
            }
        }
        abstractC1202y.unknownFields = c1159j1;
    }

    /* JADX INFO: renamed from: k */
    public static boolean m1921k(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: renamed from: l */
    public static void m1922l(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2014h(i10, ((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Boolean) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12++;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2013g(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    /* JADX INFO: renamed from: m */
    public static void m1923m(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                double dDoubleValue = ((Double) list.get(i11)).doubleValue();
                abstractC1169n.getClass();
                abstractC1169n.mo2020n(i10, Double.doubleToRawLongBits(dDoubleValue));
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Double) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 8;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2021o(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m1924n(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2022p(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2046a = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM2046a += AbstractC1169n.m2046a(((Integer) list.get(i12)).intValue());
        }
        abstractC1169n.mo2031y(iM2046a);
        while (i11 < list.size()) {
            abstractC1169n.mo2023q(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m1925o(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2018l(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 4;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2019m(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: p */
    public static void m1926p(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2020n(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 8;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2021o(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: q */
    public static void m1927q(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                float fFloatValue = ((Float) list.get(i11)).floatValue();
                abstractC1169n.getClass();
                abstractC1169n.mo2018l(i10, Float.floatToRawIntBits(fFloatValue));
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Float) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 4;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2019m(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    /* JADX INFO: renamed from: r */
    public static void m1928r(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2022p(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2046a = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM2046a += AbstractC1169n.m2046a(((Integer) list.get(i12)).intValue());
        }
        abstractC1169n.mo2031y(iM2046a);
        while (i11 < list.size()) {
            abstractC1169n.mo2023q(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: s */
    public static void m1929s(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2032z(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2050e = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM2050e += AbstractC1169n.m2050e(((Long) list.get(i12)).longValue());
        }
        abstractC1169n.mo2031y(iM2050e);
        while (i11 < list.size()) {
            abstractC1169n.mo2010A(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: t */
    public static void m1930t(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2018l(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Integer) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 4;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2019m(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: u */
    public static void m1931u(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2020n(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            ((Long) list.get(i13)).getClass();
            Logger logger = AbstractC1169n.f2730b;
            i12 += 8;
        }
        abstractC1169n.mo2031y(i12);
        while (i11 < list.size()) {
            abstractC1169n.mo2021o(((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m1932v(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                int iIntValue = ((Integer) list.get(i11)).intValue();
                abstractC1169n.mo2030x(i10, (iIntValue >> 31) ^ (iIntValue << 1));
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2049d = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            int iIntValue2 = ((Integer) list.get(i12)).intValue();
            iM2049d += AbstractC1169n.m2049d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        abstractC1169n.mo2031y(iM2049d);
        while (i11 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i11)).intValue();
            abstractC1169n.mo2031y((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i11++;
        }
    }

    /* JADX INFO: renamed from: w */
    public static void m1933w(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                long jLongValue = ((Long) list.get(i11)).longValue();
                abstractC1169n.mo2032z(i10, (jLongValue >> 63) ^ (jLongValue << 1));
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2050e = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            long jLongValue2 = ((Long) list.get(i12)).longValue();
            iM2050e += AbstractC1169n.m2050e((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        abstractC1169n.mo2031y(iM2050e);
        while (i11 < list.size()) {
            long jLongValue3 = ((Long) list.get(i11)).longValue();
            abstractC1169n.mo2010A((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i11++;
        }
    }

    /* JADX INFO: renamed from: x */
    public static void m1934x(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2030x(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2049d = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM2049d += AbstractC1169n.m2049d(((Integer) list.get(i12)).intValue());
        }
        abstractC1169n.mo2031y(iM2049d);
        while (i11 < list.size()) {
            abstractC1169n.mo2031y(((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: y */
    public static void m1935y(int i10, List list, C1164l0 c1164l0, boolean z9) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC1169n abstractC1169n = (AbstractC1169n) c1164l0.f2720a;
        int i11 = 0;
        if (!z9) {
            while (i11 < list.size()) {
                abstractC1169n.mo2032z(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        abstractC1169n.mo2029w(i10, 2);
        int iM2050e = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM2050e += AbstractC1169n.m2050e(((Long) list.get(i12)).longValue());
        }
        abstractC1169n.mo2031y(iM2050e);
        while (i11 < list.size()) {
            abstractC1169n.mo2010A(((Long) list.get(i11)).longValue());
            i11++;
        }
    }
}
