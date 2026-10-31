package com.google.protobuf;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f1484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k1 f1485b;
    public static final k1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Class<?> cls;
        Class<?> cls2;
        k1 k1Var = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f1484a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                k1Var = (k1) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        f1485b = k1Var;
        c = new k1();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iA += n.a(((Integer) list.get(i9)).intValue());
        }
        return iA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int b(int i9, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (n.c(i9) + 4) * size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int c(int i9, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (n.c(i9) + 8) * size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iA += n.a(((Integer) list.get(i9)).intValue());
        }
        return iA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iE += n.e(((Long) list.get(i9)).longValue());
        }
        return iE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int f(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = 0;
        for (int i9 = 0; i9 < size; i9++) {
            int iIntValue = ((Integer) list.get(i9)).intValue();
            iD += n.d((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return iD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = 0;
        for (int i9 = 0; i9 < size; i9++) {
            long jLongValue = ((Long) list.get(i9)).longValue();
            iE += n.e((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iD += n.d(((Integer) list.get(i9)).intValue());
        }
        return iD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = 0;
        for (int i9 = 0; i9 < size; i9++) {
            iE += n.e(((Long) list.get(i9)).longValue());
        }
        return iE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static void j(k1 k1Var, Object obj, Object obj2) {
        k1Var.getClass();
        y yVar = (y) obj;
        j1 j1Var = yVar.unknownFields;
        j1 j1Var2 = ((y) obj2).unknownFields;
        j1 j1Var3 = j1.f1521f;
        if (!j1Var3.equals(j1Var2)) {
            if (j1Var3.equals(j1Var)) {
                int i9 = j1Var.f1522a + j1Var2.f1522a;
                int[] iArrCopyOf = Arrays.copyOf(j1Var.f1523b, i9);
                System.arraycopy(j1Var2.f1523b, 0, iArrCopyOf, j1Var.f1522a, j1Var2.f1522a);
                Object[] objArrCopyOf = Arrays.copyOf(j1Var.c, i9);
                System.arraycopy(j1Var2.c, 0, objArrCopyOf, j1Var.f1522a, j1Var2.f1522a);
                j1Var = new j1(i9, iArrCopyOf, objArrCopyOf, true);
            } else {
                j1Var.getClass();
                if (!j1Var2.equals(j1Var3)) {
                    if (!j1Var.e) {
                        androidx.navigation.b.a();
                        return;
                    }
                    int i10 = j1Var.f1522a + j1Var2.f1522a;
                    j1Var.a(i10);
                    System.arraycopy(j1Var2.f1523b, 0, j1Var.f1523b, j1Var.f1522a, j1Var2.f1522a);
                    System.arraycopy(j1Var2.c, 0, j1Var.c, j1Var.f1522a, j1Var2.f1522a);
                    j1Var.f1522a = i10;
                }
            }
        }
        yVar.unknownFields = j1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean k(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void l(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.h(i9, ((Boolean) list.get(i10)).booleanValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Boolean) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11++;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.g(((Boolean) list.get(i10)).booleanValue() ? (byte) 1 : (byte) 0);
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                double dDoubleValue = ((Double) list.get(i10)).doubleValue();
                nVar.getClass();
                nVar.n(i9, Double.doubleToRawLongBits(dDoubleValue));
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Double) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 8;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.o(Double.doubleToRawLongBits(((Double) list.get(i10)).doubleValue()));
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.p(i9, ((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iA = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iA += n.a(((Integer) list.get(i11)).intValue());
        }
        nVar.y(iA);
        while (i10 < list.size()) {
            nVar.q(((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void o(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.l(i9, ((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Integer) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 4;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.m(((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void p(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.n(i9, ((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Long) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 8;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.o(((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void q(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                float fFloatValue = ((Float) list.get(i10)).floatValue();
                nVar.getClass();
                nVar.l(i9, Float.floatToRawIntBits(fFloatValue));
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Float) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 4;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.m(Float.floatToRawIntBits(((Float) list.get(i10)).floatValue()));
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void r(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.p(i9, ((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iA = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iA += n.a(((Integer) list.get(i11)).intValue());
        }
        nVar.y(iA);
        while (i10 < list.size()) {
            nVar.q(((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void s(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.z(i9, ((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iE = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iE += n.e(((Long) list.get(i11)).longValue());
        }
        nVar.y(iE);
        while (i10 < list.size()) {
            nVar.A(((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void t(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.l(i9, ((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Integer) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 4;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.m(((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void u(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.n(i9, ((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Long) list.get(i12)).getClass();
            Logger logger = n.f1534b;
            i11 += 8;
        }
        nVar.y(i11);
        while (i10 < list.size()) {
            nVar.o(((Long) list.get(i10)).longValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                int iIntValue = ((Integer) list.get(i10)).intValue();
                nVar.x(i9, (iIntValue >> 31) ^ (iIntValue << 1));
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iD = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            int iIntValue2 = ((Integer) list.get(i11)).intValue();
            iD += n.d((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        nVar.y(iD);
        while (i10 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i10)).intValue();
            nVar.y((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void w(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                long jLongValue = ((Long) list.get(i10)).longValue();
                nVar.z(i9, (jLongValue >> 63) ^ (jLongValue << 1));
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iE = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            long jLongValue2 = ((Long) list.get(i11)).longValue();
            iE += n.e((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        nVar.y(iE);
        while (i10 < list.size()) {
            long jLongValue3 = ((Long) list.get(i10)).longValue();
            nVar.A((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void x(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.x(i9, ((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iD = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iD += n.d(((Integer) list.get(i11)).intValue());
        }
        nVar.y(iD);
        while (i10 < list.size()) {
            nVar.y(((Integer) list.get(i10)).intValue());
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y(int i9, List list, l0 l0Var, boolean z8) {
        if (list == null || list.isEmpty()) {
            return;
        }
        n nVar = (n) l0Var.f1527a;
        int i10 = 0;
        if (!z8) {
            while (i10 < list.size()) {
                nVar.z(i9, ((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        nVar.w(i9, 2);
        int iE = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            iE += n.e(((Long) list.get(i11)).longValue());
        }
        nVar.y(iE);
        while (i10 < list.size()) {
            nVar.A(((Long) list.get(i10)).longValue());
            i10++;
        }
    }
}
