package p214u7;

import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p010a9.C0061w;
import p091i4.AbstractC1746d;
import p148n7.AbstractC2542t;
import p148n7.C2508f1;
import p148n7.C2511g1;
import p148n7.C2514h1;
import p148n7.C2547v0;
import p155o4.AbstractC2587b;
import p250y5.C3652g;

/* JADX INFO: renamed from: u7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3308e {

    /* JADX INFO: renamed from: a */
    public static final Logger f9690a = Logger.getLogger(AbstractC3308e.class.getName());

    /* JADX INFO: renamed from: b */
    public static final boolean f9691b;

    /* JADX INFO: renamed from: c */
    public static final C0061w f9692c;

    static {
        f9691b = !AbstractC1746d.m2871a(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE")) && Boolean.parseBoolean(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE"));
        f9692c = new C0061w("internal-stub-type", 3);
    }

    /* JADX INFO: renamed from: a */
    public static void m5234a(AbstractC2542t abstractC2542t, Throwable th) {
        try {
            abstractC2542t.mo3969a(null, th);
        } catch (Error | RuntimeException e) {
            f9690a.log(Level.SEVERE, "RuntimeException encountered while closing call", e);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    /* JADX INFO: renamed from: b */
    public static C3304a m5235b(AbstractC2542t abstractC2542t, C3652g c3652g) {
        C3304a c3304a = new C3304a(abstractC2542t);
        abstractC2542t.mo3984o(new C3307d(c3304a), new C2547v0());
        abstractC2542t.mo3971k();
        try {
            abstractC2542t.mo3972m(c3652g);
            abstractC2542t.mo3970g();
            return c3304a;
        } catch (Error | RuntimeException e) {
            m5234a(abstractC2542t, e);
            throw null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static Object m5236c(C3304a c3304a) {
        try {
            return c3304a.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw C2508f1.f6938f.m3934h("Thread interrupted").m3933g(e).m3930a();
        } catch (ExecutionException e6) {
            Throwable cause = e6.getCause();
            AbstractC2587b.m4042i(cause, "t");
            for (Throwable cause2 = cause; cause2 != null; cause2 = cause2.getCause()) {
                if (cause2 instanceof C2511g1) {
                    throw new C2514h1(((C2511g1) cause2).f6954b, null);
                }
                if (cause2 instanceof C2514h1) {
                    C2514h1 c2514h1 = (C2514h1) cause2;
                    throw new C2514h1(c2514h1.f6959b, c2514h1.f6960c);
                }
            }
            throw C2508f1.f6939g.m3934h("unexpected exception").m3933g(cause).m3930a();
        }
    }
}
