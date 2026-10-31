package p7;

import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import n7.f1;
import o7.p1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l.d f4658b;
    public final r7.h c;
    public boolean d;
    public final /* synthetic */ n e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(n nVar, r7.h hVar) {
        this.e = nVar;
        Level level = Level.FINE;
        this.f4658b = new l.d(6);
        this.d = true;
        this.c = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        n nVar;
        f1 f1VarH;
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("OkHttpClientTransport");
        while (true) {
            try {
                boolean zB = this.c.b(this);
                nVar = this.e;
                if (!zB) {
                    break;
                }
                p1 p1Var = nVar.F;
                if (p1Var != null) {
                    p1Var.a();
                }
            } catch (Throwable th) {
                try {
                    n nVar2 = this.e;
                    r7.a aVar = r7.a.PROTOCOL_ERROR;
                    f1 f1VarG = f1.f3929l.h("error in frame handler").g(th);
                    Map map = n.P;
                    nVar2.r(0, aVar, f1VarG);
                    try {
                        this.c.close();
                    } catch (IOException e) {
                        e = e;
                        n.Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                    } catch (RuntimeException e6) {
                        if (!"bio == null".equals(e6.getMessage())) {
                            throw e6;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        this.c.close();
                    } catch (IOException e9) {
                        n.Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e9);
                    } catch (RuntimeException e10) {
                        if (!"bio == null".equals(e10.getMessage())) {
                            throw e10;
                        }
                    }
                    this.e.f4663h.l();
                    Thread.currentThread().setName(name);
                    throw th2;
                }
            }
        }
        synchronized (nVar.f4666k) {
            f1VarH = this.e.f4675v;
        }
        if (f1VarH == null) {
            f1VarH = f1.f3930m.h("End of stream or IOException");
        }
        this.e.r(0, r7.a.INTERNAL_ERROR, f1VarH);
        try {
            this.c.close();
        } catch (IOException e11) {
            e = e11;
            n.Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
        } catch (RuntimeException e12) {
            if (!"bio == null".equals(e12.getMessage())) {
                throw e12;
            }
        }
        this.e.f4663h.l();
        Thread.currentThread().setName(name);
    }
}
