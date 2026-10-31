package u7;

import a9.w;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import n7.f1;
import n7.g1;
import n7.h1;
import n7.t;
import n7.v0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f5492a = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f5493b;
    public static final w c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        f5493b = !i4.d.a(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE")) && Boolean.parseBoolean(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE"));
        c = new w("internal-stub-type", 3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(t tVar, Throwable th) {
        try {
            tVar.a(null, th);
        } catch (Error | RuntimeException e) {
            f5492a.log(Level.SEVERE, "RuntimeException encountered while closing call", e);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a b(t tVar, y5.g gVar) {
        a aVar = new a(tVar);
        tVar.o(new d(aVar), new v0());
        tVar.k();
        try {
            tVar.m(gVar);
            tVar.g();
            return aVar;
        } catch (Error | RuntimeException e) {
            a(tVar, e);
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object c(a aVar) {
        try {
            return aVar.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw f1.f3923f.h("Thread interrupted").g(e).a();
        } catch (ExecutionException e6) {
            Throwable cause = e6.getCause();
            o4.b.i(cause, "t");
            for (Throwable cause2 = cause; cause2 != null; cause2 = cause2.getCause()) {
                if (cause2 instanceof g1) {
                    throw new h1(((g1) cause2).f3937b, null);
                }
                if (cause2 instanceof h1) {
                    h1 h1Var = (h1) cause2;
                    throw new h1(h1Var.f3939b, h1Var.c);
                }
            }
            throw f1.f3924g.h("unexpected exception").g(cause).a();
        }
    }
}
