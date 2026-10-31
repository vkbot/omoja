package com.google.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: com.google.protobuf.a2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class EnumC1131a2 {

    /* JADX INFO: renamed from: d */
    public static final C1198w1 f2627d;

    /* JADX INFO: renamed from: e */
    public static final C1201x1 f2628e;

    /* JADX INFO: renamed from: f */
    public static final C1204y1 f2629f;

    /* JADX INFO: renamed from: g */
    public static final /* synthetic */ EnumC1131a2[] f2630g;

    /* JADX INFO: renamed from: b */
    public final EnumC1135b2 f2631b;

    /* JADX INFO: renamed from: c */
    public final int f2632c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1131a2 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1131a2 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC1131a2 EF2;

    static {
        EnumC1131a2 enumC1131a2 = new EnumC1131a2("DOUBLE", 0, EnumC1135b2.f2639e, 1);
        EnumC1131a2 enumC1131a3 = new EnumC1131a2("FLOAT", 1, EnumC1135b2.f2638d, 5);
        EnumC1135b2 enumC1135b2 = EnumC1135b2.f2637c;
        EnumC1131a2 enumC1131a4 = new EnumC1131a2("INT64", 2, enumC1135b2, 0);
        EnumC1131a2 enumC1131a5 = new EnumC1131a2("UINT64", 3, enumC1135b2, 0);
        EnumC1135b2 enumC1135b3 = EnumC1135b2.f2636b;
        EnumC1131a2 enumC1131a6 = new EnumC1131a2("INT32", 4, enumC1135b3, 0);
        EnumC1131a2 enumC1131a7 = new EnumC1131a2("FIXED64", 5, enumC1135b2, 1);
        EnumC1131a2 enumC1131a8 = new EnumC1131a2("FIXED32", 6, enumC1135b3, 5);
        EnumC1131a2 enumC1131a9 = new EnumC1131a2("BOOL", 7, EnumC1135b2.f2640f, 0);
        C1198w1 c1198w1 = new C1198w1("STRING", 8, EnumC1135b2.f2641g, 2);
        f2627d = c1198w1;
        EnumC1135b2 enumC1135b4 = EnumC1135b2.f2644j;
        C1201x1 c1201x1 = new C1201x1("GROUP", 9, enumC1135b4, 3);
        f2628e = c1201x1;
        C1204y1 c1204y1 = new C1204y1("MESSAGE", 10, enumC1135b4, 2);
        f2629f = c1204y1;
        f2630g = new EnumC1131a2[]{enumC1131a2, enumC1131a3, enumC1131a4, enumC1131a5, enumC1131a6, enumC1131a7, enumC1131a8, enumC1131a9, c1198w1, c1201x1, c1204y1, new C1207z1("BYTES", 11, EnumC1135b2.f2642h, 2), new EnumC1131a2("UINT32", 12, enumC1135b3, 0), new EnumC1131a2("ENUM", 13, EnumC1135b2.f2643i, 0), new EnumC1131a2("SFIXED32", 14, enumC1135b3, 5), new EnumC1131a2("SFIXED64", 15, enumC1135b2, 1), new EnumC1131a2("SINT32", 16, enumC1135b3, 0), new EnumC1131a2("SINT64", 17, enumC1135b2, 0)};
    }

    public EnumC1131a2(String str, int i10, EnumC1135b2 enumC1135b2, int i11) {
        super(str, i10);
        this.f2631b = enumC1135b2;
        this.f2632c = i11;
    }

    public static EnumC1131a2 valueOf(String str) {
        return (EnumC1131a2) Enum.valueOf(EnumC1131a2.class, str);
    }

    public static EnumC1131a2[] values() {
        return (EnumC1131a2[]) f2630g.clone();
    }
}
