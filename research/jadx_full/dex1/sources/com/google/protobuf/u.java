package com.google.protobuf;

import java.lang.reflect.Type;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF0' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u {
    public static final u c;
    public static final u d;
    public static final u[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Type[] f1570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ u[] f1571g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1572b;

    /* JADX INFO: Fake field, exist only in values array */
    u EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0 e0Var = e0.f1494f;
        u uVar = new u("DOUBLE", 0, 0, 1, e0Var);
        e0 e0Var2 = e0.e;
        u uVar2 = new u("FLOAT", 1, 1, 1, e0Var2);
        e0 e0Var3 = e0.d;
        u uVar3 = new u("INT64", 2, 2, 1, e0Var3);
        u uVar4 = new u("UINT64", 3, 3, 1, e0Var3);
        e0 e0Var4 = e0.c;
        u uVar5 = new u("INT32", 4, 4, 1, e0Var4);
        u uVar6 = new u("FIXED64", 5, 5, 1, e0Var3);
        u uVar7 = new u("FIXED32", 6, 6, 1, e0Var4);
        e0 e0Var5 = e0.f1495g;
        u uVar8 = new u("BOOL", 7, 7, 1, e0Var5);
        e0 e0Var6 = e0.f1496h;
        u uVar9 = new u("STRING", 8, 8, 1, e0Var6);
        e0 e0Var7 = e0.f1499k;
        u uVar10 = new u("MESSAGE", 9, 9, 1, e0Var7);
        e0 e0Var8 = e0.f1497i;
        u uVar11 = new u("BYTES", 10, 10, 1, e0Var8);
        u uVar12 = new u("UINT32", 11, 11, 1, e0Var4);
        e0 e0Var9 = e0.f1498j;
        u uVar13 = new u("ENUM", 12, 12, 1, e0Var9);
        u uVar14 = new u("SFIXED32", 13, 13, 1, e0Var4);
        u uVar15 = new u("SFIXED64", 14, 14, 1, e0Var3);
        u uVar16 = new u("SINT32", 15, 15, 1, e0Var4);
        u uVar17 = new u("SINT64", 16, 16, 1, e0Var3);
        u uVar18 = new u("GROUP", 17, 17, 1, e0Var7);
        u uVar19 = new u("DOUBLE_LIST", 18, 18, 2, e0Var);
        u uVar20 = new u("FLOAT_LIST", 19, 19, 2, e0Var2);
        u uVar21 = new u("INT64_LIST", 20, 20, 2, e0Var3);
        u uVar22 = new u("UINT64_LIST", 21, 21, 2, e0Var3);
        u uVar23 = new u("INT32_LIST", 22, 22, 2, e0Var4);
        u uVar24 = new u("FIXED64_LIST", 23, 23, 2, e0Var3);
        u uVar25 = new u("FIXED32_LIST", 24, 24, 2, e0Var4);
        u uVar26 = new u("BOOL_LIST", 25, 25, 2, e0Var5);
        u uVar27 = new u("STRING_LIST", 26, 26, 2, e0Var6);
        u uVar28 = new u("MESSAGE_LIST", 27, 27, 2, e0Var7);
        u uVar29 = new u("BYTES_LIST", 28, 28, 2, e0Var8);
        u uVar30 = new u("UINT32_LIST", 29, 29, 2, e0Var4);
        u uVar31 = new u("ENUM_LIST", 30, 30, 2, e0Var9);
        u uVar32 = new u("SFIXED32_LIST", 31, 31, 2, e0Var4);
        u uVar33 = new u("SFIXED64_LIST", 32, 32, 2, e0Var3);
        u uVar34 = new u("SINT32_LIST", 33, 33, 2, e0Var4);
        u uVar35 = new u("SINT64_LIST", 34, 34, 2, e0Var3);
        u uVar36 = new u("DOUBLE_LIST_PACKED", 35, 35, 3, e0Var);
        c = uVar36;
        u uVar37 = new u("FLOAT_LIST_PACKED", 36, 36, 3, e0Var2);
        u uVar38 = new u("INT64_LIST_PACKED", 37, 37, 3, e0Var3);
        u uVar39 = new u("UINT64_LIST_PACKED", 38, 38, 3, e0Var3);
        u uVar40 = new u("INT32_LIST_PACKED", 39, 39, 3, e0Var4);
        u uVar41 = new u("FIXED64_LIST_PACKED", 40, 40, 3, e0Var3);
        u uVar42 = new u("FIXED32_LIST_PACKED", 41, 41, 3, e0Var4);
        u uVar43 = new u("BOOL_LIST_PACKED", 42, 42, 3, e0Var5);
        u uVar44 = new u("UINT32_LIST_PACKED", 43, 43, 3, e0Var4);
        u uVar45 = new u("ENUM_LIST_PACKED", 44, 44, 3, e0Var9);
        u uVar46 = new u("SFIXED32_LIST_PACKED", 45, 45, 3, e0Var4);
        u uVar47 = new u("SFIXED64_LIST_PACKED", 46, 46, 3, e0Var3);
        u uVar48 = new u("SINT32_LIST_PACKED", 47, 47, 3, e0Var4);
        u uVar49 = new u("SINT64_LIST_PACKED", 48, 48, 3, e0Var3);
        d = uVar49;
        f1571g = new u[]{uVar, uVar2, uVar3, uVar4, uVar5, uVar6, uVar7, uVar8, uVar9, uVar10, uVar11, uVar12, uVar13, uVar14, uVar15, uVar16, uVar17, uVar18, uVar19, uVar20, uVar21, uVar22, uVar23, uVar24, uVar25, uVar26, uVar27, uVar28, uVar29, uVar30, uVar31, uVar32, uVar33, uVar34, uVar35, uVar36, uVar37, uVar38, uVar39, uVar40, uVar41, uVar42, uVar43, uVar44, uVar45, uVar46, uVar47, uVar48, uVar49, new u("GROUP_LIST", 49, 49, 2, e0Var7), new u("MAP", 50, 50, 4, e0.f1493b)};
        f1570f = new Type[0];
        u[] uVarArrValues = values();
        e = new u[uVarArrValues.length];
        for (u uVar50 : uVarArrValues) {
            e[uVar50.f1572b] = uVar50;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(String str, int i9, int i10, int i11, e0 e0Var) {
        super(str, i9);
        this.f1572b = i10;
        int iC = com.bumptech.glide.g.c(i11);
        if (iC == 1 || iC == 3) {
            e0Var.getClass();
        }
        if (i11 == 1) {
            e0Var.ordinal();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static u[] values() {
        return (u[]) f1571g.clone();
    }
}
