package n7;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f1 {
    public static final List d;
    public static final f1 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final f1 f3923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final f1 f3924g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final f1 f3925h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final f1 f3926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final f1 f3927j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final f1 f3928k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final f1 f3929l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final f1 f3930m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final t0 f3931n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final t0 f3932o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e1 f3933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3934b;
    public final Throwable c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        TreeMap treeMap = new TreeMap();
        for (e1 e1Var : e1.values()) {
            f1 f1Var = (f1) treeMap.put(Integer.valueOf(e1Var.f3918b), new f1(e1Var, null, null));
            if (f1Var != null) {
                n0.b.t("Code value duplication between ", f1Var.f3933a.name(), " & ", e1Var.name());
                return;
            }
        }
        d = Collections.unmodifiableList(new ArrayList(treeMap.values()));
        e = e1.OK.a();
        f3923f = e1.CANCELLED.a();
        f3924g = e1.UNKNOWN.a();
        e1.INVALID_ARGUMENT.a();
        f3925h = e1.DEADLINE_EXCEEDED.a();
        e1.NOT_FOUND.a();
        e1.ALREADY_EXISTS.a();
        f3926i = e1.PERMISSION_DENIED.a();
        e1.UNAUTHENTICATED.a();
        f3927j = e1.RESOURCE_EXHAUSTED.a();
        f3928k = e1.FAILED_PRECONDITION.a();
        e1.ABORTED.a();
        e1.OUT_OF_RANGE.a();
        e1.UNIMPLEMENTED.a();
        f3929l = e1.INTERNAL.a();
        f3930m = e1.UNAVAILABLE.a();
        e1.DATA_LOSS.a();
        f3931n = new t0("grpc-status", false, new h(10));
        f3932o = new t0("grpc-message", false, new h(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f1(e1 e1Var, String str, Throwable th) {
        o4.b.i(e1Var, "code");
        this.f3933a = e1Var;
        this.f3934b = str;
        this.c = th;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(f1 f1Var) {
        String str = f1Var.f3934b;
        e1 e1Var = f1Var.f3933a;
        if (str == null) {
            return e1Var.toString();
        }
        return e1Var + ": " + f1Var.f3934b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f1 d(int i9) {
        if (i9 >= 0) {
            List list = d;
            if (i9 < list.size()) {
                return (f1) list.get(i9);
            }
        }
        return f3924g.h("Unknown code " + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f1 e(Throwable th) {
        o4.b.i(th, "t");
        for (Throwable cause = th; cause != null; cause = cause.getCause()) {
            if (cause instanceof g1) {
                return ((g1) cause).f3937b;
            }
            if (cause instanceof h1) {
                return ((h1) cause).f3939b;
            }
        }
        return f3924g.g(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h1 a() {
        return new h1(this, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f1 b(String str) {
        Throwable th = this.c;
        String str2 = this.f3934b;
        e1 e1Var = this.f3933a;
        return str2 == null ? new f1(e1Var, str, th) : new f1(e1Var, ai.onnxruntime.a.D(str2, "\n", str), th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f() {
        return e1.OK == this.f3933a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f1 g(Throwable th) {
        return com.bumptech.glide.d.f(this.c, th) ? this : new f1(this.f3933a, this.f3934b, th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final f1 h(String str) {
        return com.bumptech.glide.d.f(this.f3934b, str) ? this : new f1(this.f3933a, str, this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3933a.name(), "code");
        sVarT.c(this.f3934b, "description");
        Throwable th = this.c;
        Object string = th;
        if (th != null) {
            Object obj = i4.g.f2663a;
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            string = stringWriter.toString();
        }
        sVarT.c(string, "cause");
        return sVarT.toString();
    }
}
