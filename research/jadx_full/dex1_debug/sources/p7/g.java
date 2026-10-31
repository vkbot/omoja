package p7;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLSocketFactory;
import o7.c0;
import o7.j1;
import o7.r4;
import o7.s4;
import o7.u2;
import o7.y;
import o7.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n.p f4623b;
    public final Executor c;
    public final n.p d;
    public final ScheduledExecutorService e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final u2 f4624f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SSLSocketFactory f4625g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final q7.c f4626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f4628j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final o7.e f4629k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f4630l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4631m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f4632n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4633o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(n.p pVar, n.p pVar2, SSLSocketFactory sSLSocketFactory, q7.c cVar, int i9, boolean z8, long j9, long j10, int i10, int i11, u2 u2Var) {
        this.f4623b = pVar;
        this.c = (Executor) s4.a((r4) pVar.c);
        this.d = pVar2;
        this.e = (ScheduledExecutorService) s4.a((r4) pVar2.c);
        this.f4625g = sSLSocketFactory;
        this.f4626h = cVar;
        this.f4627i = i9;
        this.f4628j = z8;
        this.f4629k = new o7.e(j9);
        this.f4630l = j10;
        this.f4631m = i10;
        this.f4632n = i11;
        o4.b.i(u2Var, "transportTracerFactory");
        this.f4624f = u2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.z
    public final c0 I(SocketAddress socketAddress, y yVar, j1 j1Var) {
        if (this.f4633o) {
            j1.i.l("The transport factory is closed.");
            return null;
        }
        o7.e eVar = this.f4629k;
        long j9 = eVar.f4192b.get();
        n nVar = new n(this, (InetSocketAddress) socketAddress, yVar.f4503a, yVar.f4504b, yVar.c, new com.bumptech.glide.m(24, new o7.d(eVar, j9)));
        if (this.f4628j) {
            nVar.G = true;
            nVar.H = j9;
            nVar.I = this.f4630l;
        }
        return nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4633o) {
            return;
        }
        this.f4633o = true;
        s4.b((r4) this.f4623b.c, this.c);
        s4.b((r4) this.d.c, this.e);
    }
}
