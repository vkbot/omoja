package p148n7;

import java.util.List;

/* JADX INFO: renamed from: n7.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2519j0 {

    /* JADX INFO: renamed from: b */
    public static final C2491a f6974b = new C2491a("internal:health-checking-config");

    /* JADX INFO: renamed from: c */
    public static final C2512h f6975c = new C2512h(5);

    /* JADX INFO: renamed from: d */
    public static final C2491a f6976d = new C2491a("internal:has-health-check-producer-listener");

    /* JADX INFO: renamed from: e */
    public static final C2491a f6977e = new C2491a("io.grpc.IS_PETIOLE_POLICY");

    /* JADX INFO: renamed from: a */
    public int f6978a;

    /* JADX INFO: renamed from: a */
    public C2508f1 mo3944a(C2510g0 c2510g0) {
        List list = c2510g0.f6951a;
        if (!list.isEmpty() || mo3945b()) {
            int i10 = this.f6978a;
            this.f6978a = i10 + 1;
            if (i10 == 0) {
                mo3947d(c2510g0);
            }
            this.f6978a = 0;
            return C2508f1.f6937e;
        }
        C2508f1 c2508f1M3934h = C2508f1.f6945m.m3934h("NameResolver returned no usable address. addrs=" + list + ", attrs=" + c2510g0.f6952b);
        mo3946c(c2508f1M3934h);
        return c2508f1M3934h;
    }

    /* JADX INFO: renamed from: b */
    public boolean mo3945b() {
        return false;
    }

    /* JADX INFO: renamed from: c */
    public abstract void mo3946c(C2508f1 c2508f1);

    /* JADX INFO: renamed from: d */
    public void mo3947d(C2510g0 c2510g0) {
        int i10 = this.f6978a;
        this.f6978a = i10 + 1;
        if (i10 == 0) {
            mo3944a(c2510g0);
        }
        this.f6978a = 0;
    }

    /* JADX INFO: renamed from: f */
    public abstract void mo3949f();

    /* JADX INFO: renamed from: e */
    public void mo3948e() {
    }
}
