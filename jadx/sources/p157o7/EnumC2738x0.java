package p157o7;

import ai.onnxruntime.AbstractC0074a;
import p148n7.C2508f1;

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
/* JADX INFO: renamed from: o7.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC2738x0 {

    /* JADX INFO: renamed from: d */
    public static final EnumC2738x0 f7861d;

    /* JADX INFO: renamed from: e */
    public static final EnumC2738x0[] f7862e;

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ EnumC2738x0[] f7863f;

    /* JADX INFO: renamed from: b */
    public final int f7864b;

    /* JADX INFO: renamed from: c */
    public final C2508f1 f7865c;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC2738x0 EF0;

    static {
        C2508f1 c2508f1 = C2508f1.f6945m;
        EnumC2738x0 enumC2738x0 = new EnumC2738x0("NO_ERROR", 0, 0, c2508f1);
        C2508f1 c2508f2 = C2508f1.f6944l;
        EnumC2738x0 enumC2738x1 = new EnumC2738x0("PROTOCOL_ERROR", 1, 1, c2508f2);
        EnumC2738x0 enumC2738x2 = new EnumC2738x0("INTERNAL_ERROR", 2, 2, c2508f2);
        f7861d = enumC2738x2;
        f7863f = new EnumC2738x0[]{enumC2738x0, enumC2738x1, enumC2738x2, new EnumC2738x0("FLOW_CONTROL_ERROR", 3, 3, c2508f2), new EnumC2738x0("SETTINGS_TIMEOUT", 4, 4, c2508f2), new EnumC2738x0("STREAM_CLOSED", 5, 5, c2508f2), new EnumC2738x0("FRAME_SIZE_ERROR", 6, 6, c2508f2), new EnumC2738x0("REFUSED_STREAM", 7, 7, c2508f1), new EnumC2738x0("CANCEL", 8, 8, C2508f1.f6938f), new EnumC2738x0("COMPRESSION_ERROR", 9, 9, c2508f2), new EnumC2738x0("CONNECT_ERROR", 10, 10, c2508f2), new EnumC2738x0("ENHANCE_YOUR_CALM", 11, 11, C2508f1.f6942j.m3934h("Bandwidth exhausted")), new EnumC2738x0("INADEQUATE_SECURITY", 12, 12, C2508f1.f6941i.m3934h("Permission denied as protocol is not secure enough to call")), new EnumC2738x0("HTTP_1_1_REQUIRED", 13, 13, C2508f1.f6939g)};
        EnumC2738x0[] enumC2738x0ArrValues = values();
        EnumC2738x0[] enumC2738x0Arr = new EnumC2738x0[enumC2738x0ArrValues[enumC2738x0ArrValues.length - 1].f7864b + 1];
        for (EnumC2738x0 enumC2738x3 : enumC2738x0ArrValues) {
            enumC2738x0Arr[enumC2738x3.f7864b] = enumC2738x3;
        }
        f7862e = enumC2738x0Arr;
    }

    public EnumC2738x0(String str, int i10, int i11, C2508f1 c2508f1) {
        super(str, i10);
        this.f7864b = i11;
        String str2 = "HTTP/2 error code: " + name();
        this.f7865c = c2508f1.m3934h(c2508f1.f6949b != null ? AbstractC0074a.m165p(AbstractC0074a.m172w(str2, " ("), c2508f1.f6949b, ")") : str2);
    }

    public static EnumC2738x0 valueOf(String str) {
        return (EnumC2738x0) Enum.valueOf(EnumC2738x0.class, str);
    }

    public static EnumC2738x0[] values() {
        return (EnumC2738x0[]) f7863f.clone();
    }
}
