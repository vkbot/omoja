package p170p7;

import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import p120l.C2187d;
import p148n7.C2508f1;
import p157o7.C2691p1;
import p186r7.C3116h;
import p186r7.EnumC3109a;

/* JADX INFO: renamed from: p7.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2988m implements Runnable {

    /* JADX INFO: renamed from: b */
    public final C2187d f8366b;

    /* JADX INFO: renamed from: c */
    public final C3116h f8367c;

    /* JADX INFO: renamed from: d */
    public boolean f8368d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ C2989n f8369e;

    public RunnableC2988m(C2989n c2989n, C3116h c3116h) {
        this.f8369e = c2989n;
        Level level = Level.FINE;
        this.f8366b = new C2187d(6);
        this.f8368d = true;
        this.f8367c = c3116h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2989n c2989n;
        C2508f1 c2508f1M3934h;
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName("OkHttpClientTransport");
        while (true) {
            try {
                boolean zM4960b = this.f8367c.m4960b(this);
                c2989n = this.f8369e;
                if (!zM4960b) {
                    break;
                }
                C2691p1 c2691p1 = c2989n.f8377F;
                if (c2691p1 != null) {
                    c2691p1.m4203a();
                }
            } catch (Throwable th) {
                try {
                    C2989n c2989n2 = this.f8369e;
                    EnumC3109a enumC3109a = EnumC3109a.PROTOCOL_ERROR;
                    C2508f1 c2508f1M3933g = C2508f1.f6944l.m3934h("error in frame handler").m3933g(th);
                    Map map = C2989n.f8370P;
                    c2989n2.m4799r(0, enumC3109a, c2508f1M3933g);
                    try {
                        this.f8367c.close();
                    } catch (IOException e) {
                        e = e;
                        C2989n.f8371Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                    } catch (RuntimeException e6) {
                        if (!"bio == null".equals(e6.getMessage())) {
                            throw e6;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        this.f8367c.close();
                    } catch (IOException e10) {
                        C2989n.f8371Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e10);
                    } catch (RuntimeException e11) {
                        if (!"bio == null".equals(e11.getMessage())) {
                            throw e11;
                        }
                    }
                    this.f8369e.f8394h.m1366l();
                    Thread.currentThread().setName(name);
                    throw th2;
                }
            }
        }
        synchronized (c2989n.f8397k) {
            c2508f1M3934h = this.f8369e.f8408v;
        }
        if (c2508f1M3934h == null) {
            c2508f1M3934h = C2508f1.f6945m.m3934h("End of stream or IOException");
        }
        this.f8369e.m4799r(0, EnumC3109a.INTERNAL_ERROR, c2508f1M3934h);
        try {
            this.f8367c.close();
        } catch (IOException e12) {
            e = e12;
            C2989n.f8371Q.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
        } catch (RuntimeException e13) {
            if (!"bio == null".equals(e13.getMessage())) {
                throw e13;
            }
        }
        this.f8369e.f8394h.m1366l();
        Thread.currentThread().setName(name);
    }
}
