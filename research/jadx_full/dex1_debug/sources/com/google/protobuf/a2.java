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
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class a2 {
    public static final w1 d;
    public static final x1 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final y1 f1469f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ a2[] f1470g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b2 f1471b;
    public final int c;

    /* JADX INFO: Fake field, exist only in values array */
    a2 EF0;

    /* JADX INFO: Fake field, exist only in values array */
    a2 EF1;

    /* JADX INFO: Fake field, exist only in values array */
    a2 EF2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a2 a2Var = new a2("DOUBLE", 0, b2.e, 1);
        a2 a2Var2 = new a2("FLOAT", 1, b2.d, 5);
        b2 b2Var = b2.c;
        a2 a2Var3 = new a2("INT64", 2, b2Var, 0);
        a2 a2Var4 = new a2("UINT64", 3, b2Var, 0);
        b2 b2Var2 = b2.f1475b;
        a2 a2Var5 = new a2("INT32", 4, b2Var2, 0);
        a2 a2Var6 = new a2("FIXED64", 5, b2Var, 1);
        a2 a2Var7 = new a2("FIXED32", 6, b2Var2, 5);
        a2 a2Var8 = new a2("BOOL", 7, b2.f1476f, 0);
        w1 w1Var = new w1("STRING", 8, b2.f1477g, 2);
        d = w1Var;
        b2 b2Var3 = b2.f1480j;
        x1 x1Var = new x1("GROUP", 9, b2Var3, 3);
        e = x1Var;
        y1 y1Var = new y1("MESSAGE", 10, b2Var3, 2);
        f1469f = y1Var;
        f1470g = new a2[]{a2Var, a2Var2, a2Var3, a2Var4, a2Var5, a2Var6, a2Var7, a2Var8, w1Var, x1Var, y1Var, new z1("BYTES", 11, b2.f1478h, 2), new a2("UINT32", 12, b2Var2, 0), new a2("ENUM", 13, b2.f1479i, 0), new a2("SFIXED32", 14, b2Var2, 5), new a2("SFIXED64", 15, b2Var, 1), new a2("SINT32", 16, b2Var2, 0), new a2("SINT64", 17, b2Var, 0)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a2(String str, int i9, b2 b2Var, int i10) {
        super(str, i9);
        this.f1471b = b2Var;
        this.c = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a2 valueOf(String str) {
        return (a2) Enum.valueOf(a2.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a2[] values() {
        return (a2[]) f1470g.clone();
    }
}
