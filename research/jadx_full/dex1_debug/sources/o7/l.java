package o7;

import java.net.SocketAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l implements z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p7.g f4326b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(p7.g gVar, x1 x1Var) {
        this.f4326b = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.z
    public final c0 I(SocketAddress socketAddress, y yVar, j1 j1Var) {
        return new k(this, this.f4326b.I(socketAddress, yVar, j1Var), yVar.f4503a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4326b.close();
    }
}
