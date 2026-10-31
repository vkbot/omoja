package p148n7;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import p091i4.AbstractC1749g;
import p142n0.C2467b;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.f1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2508f1 {

    /* JADX INFO: renamed from: d */
    public static final List f6936d;

    /* JADX INFO: renamed from: e */
    public static final C2508f1 f6937e;

    /* JADX INFO: renamed from: f */
    public static final C2508f1 f6938f;

    /* JADX INFO: renamed from: g */
    public static final C2508f1 f6939g;

    /* JADX INFO: renamed from: h */
    public static final C2508f1 f6940h;

    /* JADX INFO: renamed from: i */
    public static final C2508f1 f6941i;

    /* JADX INFO: renamed from: j */
    public static final C2508f1 f6942j;

    /* JADX INFO: renamed from: k */
    public static final C2508f1 f6943k;

    /* JADX INFO: renamed from: l */
    public static final C2508f1 f6944l;

    /* JADX INFO: renamed from: m */
    public static final C2508f1 f6945m;

    /* JADX INFO: renamed from: n */
    public static final C2543t0 f6946n;

    /* JADX INFO: renamed from: o */
    public static final C2543t0 f6947o;

    /* JADX INFO: renamed from: a */
    public final EnumC2505e1 f6948a;

    /* JADX INFO: renamed from: b */
    public final String f6949b;

    /* JADX INFO: renamed from: c */
    public final Throwable f6950c;

    static {
        TreeMap treeMap = new TreeMap();
        for (EnumC2505e1 enumC2505e1 : EnumC2505e1.values()) {
            C2508f1 c2508f1 = (C2508f1) treeMap.put(Integer.valueOf(enumC2505e1.f6927b), new C2508f1(enumC2505e1, null, null));
            if (c2508f1 != null) {
                C2467b.m3830t("Code value duplication between ", c2508f1.f6948a.name(), " & ", enumC2505e1.name());
                return;
            }
        }
        f6936d = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        f6937e = EnumC2505e1.OK.m3924a();
        f6938f = EnumC2505e1.CANCELLED.m3924a();
        f6939g = EnumC2505e1.UNKNOWN.m3924a();
        EnumC2505e1.INVALID_ARGUMENT.m3924a();
        f6940h = EnumC2505e1.DEADLINE_EXCEEDED.m3924a();
        EnumC2505e1.NOT_FOUND.m3924a();
        EnumC2505e1.ALREADY_EXISTS.m3924a();
        f6941i = EnumC2505e1.PERMISSION_DENIED.m3924a();
        EnumC2505e1.UNAUTHENTICATED.m3924a();
        f6942j = EnumC2505e1.RESOURCE_EXHAUSTED.m3924a();
        f6943k = EnumC2505e1.FAILED_PRECONDITION.m3924a();
        EnumC2505e1.ABORTED.m3924a();
        EnumC2505e1.OUT_OF_RANGE.m3924a();
        EnumC2505e1.UNIMPLEMENTED.m3924a();
        f6944l = EnumC2505e1.INTERNAL.m3924a();
        f6945m = EnumC2505e1.UNAVAILABLE.m3924a();
        EnumC2505e1.DATA_LOSS.m3924a();
        f6946n = new C2543t0("grpc-status", false, new C2512h(10));
        f6947o = new C2543t0("grpc-message", false, new C2512h(1));
    }

    public C2508f1(EnumC2505e1 enumC2505e1, String str, Throwable th) {
        AbstractC2587b.m4042i(enumC2505e1, "code");
        this.f6948a = enumC2505e1;
        this.f6949b = str;
        this.f6950c = th;
    }

    /* JADX INFO: renamed from: c */
    public static String m3927c(C2508f1 c2508f1) {
        String str = c2508f1.f6949b;
        EnumC2505e1 enumC2505e1 = c2508f1.f6948a;
        if (str == null) {
            return enumC2505e1.toString();
        }
        return enumC2505e1 + ": " + c2508f1.f6949b;
    }

    /* JADX INFO: renamed from: d */
    public static C2508f1 m3928d(int i10) {
        if (i10 >= 0) {
            List list = f6936d;
            if (i10 < list.size()) {
                return (C2508f1) list.get(i10);
            }
        }
        return f6939g.m3934h("Unknown code " + i10);
    }

    /* JADX INFO: renamed from: e */
    public static C2508f1 m3929e(Throwable th) {
        AbstractC2587b.m4042i(th, "t");
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof C2511g1) {
                return ((C2511g1) cause).f6954b;
            }
            if (cause instanceof C2514h1) {
                return ((C2514h1) cause).f6959b;
            }
        }
        return f6939g.m3933g(th);
    }

    /* JADX INFO: renamed from: a */
    public final C2514h1 m3930a() {
        return new C2514h1(this, null);
    }

    /* JADX INFO: renamed from: b */
    public final C2508f1 m3931b(String str) {
        Throwable th = this.f6950c;
        String str2 = this.f6949b;
        EnumC2505e1 enumC2505e1 = this.f6948a;
        return str2 == null ? new C2508f1(enumC2505e1, str, th) : new C2508f1(enumC2505e1, AbstractC0074a.m149D(str2, "\n", str), th);
    }

    /* JADX INFO: renamed from: f */
    public final boolean m3932f() {
        return EnumC2505e1.OK == this.f6948a;
    }

    /* JADX INFO: renamed from: g */
    public final C2508f1 m3933g(Throwable th) {
        return AbstractC1031d.m1276f(this.f6950c, th) ? this : new C2508f1(this.f6948a, this.f6949b, th);
    }

    /* JADX INFO: renamed from: h */
    public final C2508f1 m3934h(String str) {
        return AbstractC1031d.m1276f(this.f6949b, str) ? this : new C2508f1(this.f6948a, str, this.f6950c);
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f6948a.name(), "code");
        c1073sM1263t.m1347c(this.f6949b, "description");
        Throwable th = this.f6950c;
        Object string = th;
        if (th != null) {
            Object obj = AbstractC1749g.f4564a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        c1073sM1263t.m1347c(string, "cause");
        return c1073sM1263t.toString();
    }
}
