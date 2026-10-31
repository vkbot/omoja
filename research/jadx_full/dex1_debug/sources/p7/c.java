package p7;

import java.io.IOException;
import java.net.Socket;
import l9.e0;
import l9.j0;
import o7.m4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements e0 {
    public final m4 d;
    public final n e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4609f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public e0 f4613j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Socket f4614k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4615l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4616m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4617n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4608b = new Object();
    public final l9.l c = new l9.l();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4610g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4611h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4612i = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(m4 m4Var, n nVar) {
        o4.b.i(m4Var, "executor");
        this.d = m4Var;
        this.e = nVar;
        this.f4609f = 10000;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(e0 e0Var, Socket socket) {
        o4.b.m(this.f4613j == null, "AsyncSink's becomeConnected should only be called once.");
        o4.b.i(e0Var, "sink");
        this.f4613j = e0Var;
        this.f4614k = socket;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void close() {
        if (this.f4612i) {
            return;
        }
        this.f4612i = true;
        this.d.execute(new com.bumptech.glide.m(23, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void flush() throws IOException {
        if (this.f4612i) {
            n0.b.A("closed");
            return;
        }
        w7.b.c();
        try {
            synchronized (this.f4608b) {
                if (this.f4611h) {
                    w7.b.f5947a.getClass();
                    return;
                }
                this.f4611h = true;
                this.d.execute(new a(this, 1));
                w7.b.f5947a.getClass();
            }
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j0 timeout() {
        return j0.NONE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void write(l9.l lVar, long j9) throws IOException {
        o4.b.i(lVar, "source");
        if (this.f4612i) {
            n0.b.A("closed");
            return;
        }
        w7.b.c();
        try {
            synchronized (this.f4608b) {
                try {
                    this.c.write(lVar, j9);
                    int i9 = this.f4617n + this.f4616m;
                    this.f4617n = i9;
                    boolean z8 = false;
                    this.f4616m = 0;
                    if (this.f4615l || i9 <= this.f4609f) {
                        if (!this.f4610g && !this.f4611h && this.c.y() > 0) {
                            this.f4610g = true;
                        }
                        w7.b.f5947a.getClass();
                        return;
                    }
                    this.f4615l = true;
                    z8 = true;
                    if (!z8) {
                        this.d.execute(new a(this, 0));
                        w7.b.f5947a.getClass();
                    } else {
                        try {
                            this.f4614k.close();
                        } catch (IOException e) {
                            this.e.n(e);
                        }
                        w7.b.f5947a.getClass();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
