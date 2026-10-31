package p170p7;

import com.bumptech.glide.RunnableC1054m;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.net.ssl.SSLSocketFactory;
import p099j1.C1929i;
import p141n.C2455p;
import p155o4.AbstractC2587b;
import p157o7.C2617d;
import p157o7.C2623e;
import p157o7.C2655j1;
import p157o7.C2712s4;
import p157o7.C2722u2;
import p157o7.C2742y;
import p157o7.InterfaceC2612c0;
import p157o7.InterfaceC2706r4;
import p157o7.InterfaceC2747z;
import p179q7.C3076c;

/* JADX INFO: renamed from: p7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2982g implements InterfaceC2747z {

    /* JADX INFO: renamed from: b */
    public final C2455p f8312b;

    /* JADX INFO: renamed from: c */
    public final Executor f8313c;

    /* JADX INFO: renamed from: d */
    public final C2455p f8314d;

    /* JADX INFO: renamed from: e */
    public final ScheduledExecutorService f8315e;

    /* JADX INFO: renamed from: f */
    public final C2722u2 f8316f;

    /* JADX INFO: renamed from: g */
    public final SSLSocketFactory f8317g;

    /* JADX INFO: renamed from: h */
    public final C3076c f8318h;

    /* JADX INFO: renamed from: i */
    public final int f8319i;

    /* JADX INFO: renamed from: j */
    public final boolean f8320j;

    /* JADX INFO: renamed from: k */
    public final C2623e f8321k;

    /* JADX INFO: renamed from: l */
    public final long f8322l;

    /* JADX INFO: renamed from: m */
    public final int f8323m;

    /* JADX INFO: renamed from: n */
    public final int f8324n;

    /* JADX INFO: renamed from: o */
    public boolean f8325o;

    public C2982g(C2455p c2455p, C2455p c2455p2, SSLSocketFactory sSLSocketFactory, C3076c c3076c, int i10, boolean z9, long j10, long j11, int i11, int i12, C2722u2 c2722u2) {
        this.f8312b = c2455p;
        this.f8313c = (Executor) C2712s4.m4232a((InterfaceC2706r4) c2455p.f6648c);
        this.f8314d = c2455p2;
        this.f8315e = (ScheduledExecutorService) C2712s4.m4232a((InterfaceC2706r4) c2455p2.f6648c);
        this.f8317g = sSLSocketFactory;
        this.f8318h = c3076c;
        this.f8319i = i10;
        this.f8320j = z9;
        this.f8321k = new C2623e(j10);
        this.f8322l = j11;
        this.f8323m = i11;
        this.f8324n = i12;
        AbstractC2587b.m4042i(c2722u2, "transportTracerFactory");
        this.f8316f = c2722u2;
    }

    @Override // p157o7.InterfaceC2747z
    /* JADX INFO: renamed from: I */
    public final InterfaceC2612c0 mo4180I(SocketAddress socketAddress, C2742y c2742y, C2655j1 c2655j1) {
        if (this.f8325o) {
            C1929i.m3030l("The transport factory is closed.");
            return null;
        }
        C2623e c2623e = this.f8321k;
        long j10 = c2623e.f7360b.get();
        C2989n c2989n = new C2989n(this, (InetSocketAddress) socketAddress, c2742y.f7872a, c2742y.f7873b, c2742y.f7874c, new RunnableC1054m(24, new C2617d(c2623e, j10)));
        if (this.f8320j) {
            c2989n.f8378G = true;
            c2989n.f8379H = j10;
            c2989n.f8380I = this.f8322l;
        }
        return c2989n;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f8325o) {
            return;
        }
        this.f8325o = true;
        C2712s4.m4233b((InterfaceC2706r4) this.f8312b.f6648c, this.f8313c);
        C2712s4.m4233b((InterfaceC2706r4) this.f8314d.f6648c, this.f8315e);
    }
}
