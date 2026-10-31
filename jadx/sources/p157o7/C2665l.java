package p157o7;

import java.net.SocketAddress;
import p170p7.C2982g;

/* JADX INFO: renamed from: o7.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2665l implements InterfaceC2747z {

    /* JADX INFO: renamed from: b */
    public final C2982g f7595b;

    public C2665l(C2982g c2982g, ExecutorC2739x1 executorC2739x1) {
        this.f7595b = c2982g;
    }

    @Override // p157o7.InterfaceC2747z
    /* JADX INFO: renamed from: I */
    public final InterfaceC2612c0 mo4180I(SocketAddress socketAddress, C2742y c2742y, C2655j1 c2655j1) {
        return new C2659k(this, this.f7595b.mo4180I(socketAddress, c2742y, c2655j1), c2742y.f7872a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f7595b.close();
    }
}
