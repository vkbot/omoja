package o7;

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
public final class x0 {
    public static final x0 d;
    public static final x0[] e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ x0[] f4496f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4497b;
    public final n7.f1 c;

    /* JADX INFO: Fake field, exist only in values array */
    x0 EF0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        n7.f1 f1Var = n7.f1.f3930m;
        x0 x0Var = new x0("NO_ERROR", 0, 0, f1Var);
        n7.f1 f1Var2 = n7.f1.f3929l;
        x0 x0Var2 = new x0("PROTOCOL_ERROR", 1, 1, f1Var2);
        x0 x0Var3 = new x0("INTERNAL_ERROR", 2, 2, f1Var2);
        d = x0Var3;
        f4496f = new x0[]{x0Var, x0Var2, x0Var3, new x0("FLOW_CONTROL_ERROR", 3, 3, f1Var2), new x0("SETTINGS_TIMEOUT", 4, 4, f1Var2), new x0("STREAM_CLOSED", 5, 5, f1Var2), new x0("FRAME_SIZE_ERROR", 6, 6, f1Var2), new x0("REFUSED_STREAM", 7, 7, f1Var), new x0("CANCEL", 8, 8, n7.f1.f3923f), new x0("COMPRESSION_ERROR", 9, 9, f1Var2), new x0("CONNECT_ERROR", 10, 10, f1Var2), new x0("ENHANCE_YOUR_CALM", 11, 11, n7.f1.f3927j.h("Bandwidth exhausted")), new x0("INADEQUATE_SECURITY", 12, 12, n7.f1.f3926i.h("Permission denied as protocol is not secure enough to call")), new x0("HTTP_1_1_REQUIRED", 13, 13, n7.f1.f3924g)};
        x0[] x0VarArrValues = values();
        x0[] x0VarArr = new x0[x0VarArrValues[x0VarArrValues.length - 1].f4497b + 1];
        for (x0 x0Var4 : x0VarArrValues) {
            x0VarArr[x0Var4.f4497b] = x0Var4;
        }
        e = x0VarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x0(String str, int i9, int i10, n7.f1 f1Var) {
        super(str, i9);
        this.f4497b = i10;
        String str2 = "HTTP/2 error code: " + name();
        this.c = f1Var.h(f1Var.f3934b != null ? ai.onnxruntime.a.p(ai.onnxruntime.a.w(str2, " ("), f1Var.f3934b, ")") : str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x0 valueOf(String str) {
        return (x0) Enum.valueOf(x0.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x0[] values() {
        return (x0[]) f4496f.clone();
    }
}
