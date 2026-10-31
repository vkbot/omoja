package p170p7;

import com.bumptech.glide.RunnableC1054m;
import java.io.IOException;
import java.net.Socket;
import p130l9.C2240j0;
import p130l9.C2242l;
import p130l9.InterfaceC2230e0;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p157o7.ExecutorC2676m4;
import p232w7.AbstractC3536b;

/* JADX INFO: renamed from: p7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2978c implements InterfaceC2230e0 {

    /* JADX INFO: renamed from: d */
    public final ExecutorC2676m4 f8290d;

    /* JADX INFO: renamed from: e */
    public final C2989n f8291e;

    /* JADX INFO: renamed from: f */
    public final int f8292f;

    /* JADX INFO: renamed from: j */
    public InterfaceC2230e0 f8296j;

    /* JADX INFO: renamed from: k */
    public Socket f8297k;

    /* JADX INFO: renamed from: l */
    public boolean f8298l;

    /* JADX INFO: renamed from: m */
    public int f8299m;

    /* JADX INFO: renamed from: n */
    public int f8300n;

    /* JADX INFO: renamed from: b */
    public final Object f8288b = new Object();

    /* JADX INFO: renamed from: c */
    public final C2242l f8289c = new C2242l();

    /* JADX INFO: renamed from: g */
    public boolean f8293g = false;

    /* JADX INFO: renamed from: h */
    public boolean f8294h = false;

    /* JADX INFO: renamed from: i */
    public boolean f8295i = false;

    public C2978c(ExecutorC2676m4 executorC2676m4, C2989n c2989n) {
        AbstractC2587b.m4042i(executorC2676m4, "executor");
        this.f8290d = executorC2676m4;
        this.f8291e = c2989n;
        this.f8292f = 10000;
    }

    /* JADX INFO: renamed from: b */
    public final void m4773b(InterfaceC2230e0 interfaceC2230e0, Socket socket) {
        AbstractC2587b.m4046m(this.f8296j == null, "AsyncSink's becomeConnected should only be called once.");
        AbstractC2587b.m4042i(interfaceC2230e0, "sink");
        this.f8296j = interfaceC2230e0;
        this.f8297k = socket;
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f8295i) {
            return;
        }
        this.f8295i = true;
        this.f8290d.execute(new RunnableC1054m(23, this));
    }

    @Override // p130l9.InterfaceC2230e0, java.io.Flushable
    public final void flush() throws IOException {
        if (this.f8295i) {
            C2467b.m3820A("closed");
            return;
        }
        AbstractC3536b.m5642c();
        try {
            synchronized (this.f8288b) {
                if (this.f8294h) {
                    AbstractC3536b.f10507a.getClass();
                    return;
                }
                this.f8294h = true;
                this.f8290d.execute(new C2976a(this, 1));
                AbstractC3536b.f10507a.getClass();
            }
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p130l9.InterfaceC2230e0
    public final C2240j0 timeout() {
        return C2240j0.NONE;
    }

    @Override // p130l9.InterfaceC2230e0
    public final void write(C2242l c2242l, long j10) throws IOException {
        AbstractC2587b.m4042i(c2242l, "source");
        if (this.f8295i) {
            C2467b.m3820A("closed");
            return;
        }
        AbstractC3536b.m5642c();
        try {
            synchronized (this.f8288b) {
                try {
                    this.f8289c.write(c2242l, j10);
                    int i10 = this.f8300n + this.f8299m;
                    this.f8300n = i10;
                    boolean z9 = false;
                    this.f8299m = 0;
                    if (this.f8298l || i10 <= this.f8292f) {
                        if (!this.f8293g && !this.f8294h && this.f8289c.m3633y() > 0) {
                            this.f8293g = true;
                        }
                        AbstractC3536b.f10507a.getClass();
                        return;
                    }
                    this.f8298l = true;
                    z9 = true;
                    if (!z9) {
                        this.f8290d.execute(new C2976a(this, 0));
                        AbstractC3536b.f10507a.getClass();
                    } else {
                        try {
                            this.f8297k.close();
                        } catch (IOException e) {
                            this.f8291e.m4796n(e);
                        }
                        AbstractC3536b.f10507a.getClass();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
