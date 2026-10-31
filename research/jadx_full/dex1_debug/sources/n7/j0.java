package n7;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f3946b = new a("internal:health-checking-config");
    public static final h c = new h(5);
    public static final a d = new a("internal:has-health-check-producer-listener");
    public static final a e = new a("io.grpc.IS_PETIOLE_POLICY");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3947a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f1 a(g0 g0Var) {
        List list = g0Var.f3935a;
        if (!list.isEmpty() || b()) {
            int i9 = this.f3947a;
            this.f3947a = i9 + 1;
            if (i9 == 0) {
                d(g0Var);
            }
            this.f3947a = 0;
            return f1.e;
        }
        f1 f1VarH = f1.f3930m.h("NameResolver returned no usable address. addrs=" + list + ", attrs=" + g0Var.f3936b);
        c(f1VarH);
        return f1VarH;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean b() {
        return false;
    }

    public abstract void c(f1 f1Var);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(g0 g0Var) {
        int i9 = this.f3947a;
        this.f3947a = i9 + 1;
        if (i9 == 0) {
            a(g0Var);
        }
        this.f3947a = 0;
    }

    public abstract void f();

    public void e() {
    }
}
