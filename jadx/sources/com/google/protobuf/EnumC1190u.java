package com.google.protobuf;

import com.bumptech.glide.AbstractC1034g;
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
/* JADX INFO: renamed from: com.google.protobuf.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC1190u {

    /* JADX INFO: renamed from: c */
    public static final EnumC1190u f2777c;

    /* JADX INFO: renamed from: d */
    public static final EnumC1190u f2778d;

    /* JADX INFO: renamed from: e */
    public static final EnumC1190u[] f2779e;

    /* JADX INFO: renamed from: f */
    public static final Type[] f2780f;

    /* JADX INFO: renamed from: g */
    public static final /* synthetic */ EnumC1190u[] f2781g;

    /* JADX INFO: renamed from: b */
    public final int f2782b;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1190u EF0;

    static {
        EnumC1143e0 enumC1143e0 = EnumC1143e0.f2667f;
        EnumC1190u enumC1190u = new EnumC1190u("DOUBLE", 0, 0, 1, enumC1143e0);
        EnumC1143e0 enumC1143e1 = EnumC1143e0.f2666e;
        EnumC1190u enumC1190u2 = new EnumC1190u("FLOAT", 1, 1, 1, enumC1143e1);
        EnumC1143e0 enumC1143e2 = EnumC1143e0.f2665d;
        EnumC1190u enumC1190u3 = new EnumC1190u("INT64", 2, 2, 1, enumC1143e2);
        EnumC1190u enumC1190u4 = new EnumC1190u("UINT64", 3, 3, 1, enumC1143e2);
        EnumC1143e0 enumC1143e3 = EnumC1143e0.f2664c;
        EnumC1190u enumC1190u5 = new EnumC1190u("INT32", 4, 4, 1, enumC1143e3);
        EnumC1190u enumC1190u6 = new EnumC1190u("FIXED64", 5, 5, 1, enumC1143e2);
        EnumC1190u enumC1190u7 = new EnumC1190u("FIXED32", 6, 6, 1, enumC1143e3);
        EnumC1143e0 enumC1143e4 = EnumC1143e0.f2668g;
        EnumC1190u enumC1190u8 = new EnumC1190u("BOOL", 7, 7, 1, enumC1143e4);
        EnumC1143e0 enumC1143e5 = EnumC1143e0.f2669h;
        EnumC1190u enumC1190u9 = new EnumC1190u("STRING", 8, 8, 1, enumC1143e5);
        EnumC1143e0 enumC1143e6 = EnumC1143e0.f2672k;
        EnumC1190u enumC1190u10 = new EnumC1190u("MESSAGE", 9, 9, 1, enumC1143e6);
        EnumC1143e0 enumC1143e7 = EnumC1143e0.f2670i;
        EnumC1190u enumC1190u11 = new EnumC1190u("BYTES", 10, 10, 1, enumC1143e7);
        EnumC1190u enumC1190u12 = new EnumC1190u("UINT32", 11, 11, 1, enumC1143e3);
        EnumC1143e0 enumC1143e8 = EnumC1143e0.f2671j;
        EnumC1190u enumC1190u13 = new EnumC1190u("ENUM", 12, 12, 1, enumC1143e8);
        EnumC1190u enumC1190u14 = new EnumC1190u("SFIXED32", 13, 13, 1, enumC1143e3);
        EnumC1190u enumC1190u15 = new EnumC1190u("SFIXED64", 14, 14, 1, enumC1143e2);
        EnumC1190u enumC1190u16 = new EnumC1190u("SINT32", 15, 15, 1, enumC1143e3);
        EnumC1190u enumC1190u17 = new EnumC1190u("SINT64", 16, 16, 1, enumC1143e2);
        EnumC1190u enumC1190u18 = new EnumC1190u("GROUP", 17, 17, 1, enumC1143e6);
        EnumC1190u enumC1190u19 = new EnumC1190u("DOUBLE_LIST", 18, 18, 2, enumC1143e0);
        EnumC1190u enumC1190u20 = new EnumC1190u("FLOAT_LIST", 19, 19, 2, enumC1143e1);
        EnumC1190u enumC1190u21 = new EnumC1190u("INT64_LIST", 20, 20, 2, enumC1143e2);
        EnumC1190u enumC1190u22 = new EnumC1190u("UINT64_LIST", 21, 21, 2, enumC1143e2);
        EnumC1190u enumC1190u23 = new EnumC1190u("INT32_LIST", 22, 22, 2, enumC1143e3);
        EnumC1190u enumC1190u24 = new EnumC1190u("FIXED64_LIST", 23, 23, 2, enumC1143e2);
        EnumC1190u enumC1190u25 = new EnumC1190u("FIXED32_LIST", 24, 24, 2, enumC1143e3);
        EnumC1190u enumC1190u26 = new EnumC1190u("BOOL_LIST", 25, 25, 2, enumC1143e4);
        EnumC1190u enumC1190u27 = new EnumC1190u("STRING_LIST", 26, 26, 2, enumC1143e5);
        EnumC1190u enumC1190u28 = new EnumC1190u("MESSAGE_LIST", 27, 27, 2, enumC1143e6);
        EnumC1190u enumC1190u29 = new EnumC1190u("BYTES_LIST", 28, 28, 2, enumC1143e7);
        EnumC1190u enumC1190u30 = new EnumC1190u("UINT32_LIST", 29, 29, 2, enumC1143e3);
        EnumC1190u enumC1190u31 = new EnumC1190u("ENUM_LIST", 30, 30, 2, enumC1143e8);
        EnumC1190u enumC1190u32 = new EnumC1190u("SFIXED32_LIST", 31, 31, 2, enumC1143e3);
        EnumC1190u enumC1190u33 = new EnumC1190u("SFIXED64_LIST", 32, 32, 2, enumC1143e2);
        EnumC1190u enumC1190u34 = new EnumC1190u("SINT32_LIST", 33, 33, 2, enumC1143e3);
        EnumC1190u enumC1190u35 = new EnumC1190u("SINT64_LIST", 34, 34, 2, enumC1143e2);
        EnumC1190u enumC1190u36 = new EnumC1190u("DOUBLE_LIST_PACKED", 35, 35, 3, enumC1143e0);
        f2777c = enumC1190u36;
        EnumC1190u enumC1190u37 = new EnumC1190u("FLOAT_LIST_PACKED", 36, 36, 3, enumC1143e1);
        EnumC1190u enumC1190u38 = new EnumC1190u("INT64_LIST_PACKED", 37, 37, 3, enumC1143e2);
        EnumC1190u enumC1190u39 = new EnumC1190u("UINT64_LIST_PACKED", 38, 38, 3, enumC1143e2);
        EnumC1190u enumC1190u40 = new EnumC1190u("INT32_LIST_PACKED", 39, 39, 3, enumC1143e3);
        EnumC1190u enumC1190u41 = new EnumC1190u("FIXED64_LIST_PACKED", 40, 40, 3, enumC1143e2);
        EnumC1190u enumC1190u42 = new EnumC1190u("FIXED32_LIST_PACKED", 41, 41, 3, enumC1143e3);
        EnumC1190u enumC1190u43 = new EnumC1190u("BOOL_LIST_PACKED", 42, 42, 3, enumC1143e4);
        EnumC1190u enumC1190u44 = new EnumC1190u("UINT32_LIST_PACKED", 43, 43, 3, enumC1143e3);
        EnumC1190u enumC1190u45 = new EnumC1190u("ENUM_LIST_PACKED", 44, 44, 3, enumC1143e8);
        EnumC1190u enumC1190u46 = new EnumC1190u("SFIXED32_LIST_PACKED", 45, 45, 3, enumC1143e3);
        EnumC1190u enumC1190u47 = new EnumC1190u("SFIXED64_LIST_PACKED", 46, 46, 3, enumC1143e2);
        EnumC1190u enumC1190u48 = new EnumC1190u("SINT32_LIST_PACKED", 47, 47, 3, enumC1143e3);
        EnumC1190u enumC1190u49 = new EnumC1190u("SINT64_LIST_PACKED", 48, 48, 3, enumC1143e2);
        f2778d = enumC1190u49;
        f2781g = new EnumC1190u[]{enumC1190u, enumC1190u2, enumC1190u3, enumC1190u4, enumC1190u5, enumC1190u6, enumC1190u7, enumC1190u8, enumC1190u9, enumC1190u10, enumC1190u11, enumC1190u12, enumC1190u13, enumC1190u14, enumC1190u15, enumC1190u16, enumC1190u17, enumC1190u18, enumC1190u19, enumC1190u20, enumC1190u21, enumC1190u22, enumC1190u23, enumC1190u24, enumC1190u25, enumC1190u26, enumC1190u27, enumC1190u28, enumC1190u29, enumC1190u30, enumC1190u31, enumC1190u32, enumC1190u33, enumC1190u34, enumC1190u35, enumC1190u36, enumC1190u37, enumC1190u38, enumC1190u39, enumC1190u40, enumC1190u41, enumC1190u42, enumC1190u43, enumC1190u44, enumC1190u45, enumC1190u46, enumC1190u47, enumC1190u48, enumC1190u49, new EnumC1190u("GROUP_LIST", 49, 49, 2, enumC1143e6), new EnumC1190u("MAP", 50, 50, 4, EnumC1143e0.f2663b)};
        f2780f = new Type[0];
        EnumC1190u[] enumC1190uArrValues = values();
        f2779e = new EnumC1190u[enumC1190uArrValues.length];
        for (EnumC1190u enumC1190u50 : enumC1190uArrValues) {
            f2779e[enumC1190u50.f2782b] = enumC1190u50;
        }
    }

    public EnumC1190u(String str, int i10, int i11, int i12, EnumC1143e0 enumC1143e0) {
        super(str, i10);
        this.f2782b = i11;
        int iM1296c = AbstractC1034g.m1296c(i12);
        if (iM1296c == 1 || iM1296c == 3) {
            enumC1143e0.getClass();
        }
        if (i12 == 1) {
            enumC1143e0.ordinal();
        }
    }

    public static EnumC1190u valueOf(String str) {
        return (EnumC1190u) Enum.valueOf(EnumC1190u.class, str);
    }

    public static EnumC1190u[] values() {
        return (EnumC1190u[]) f2781g.clone();
    }
}
