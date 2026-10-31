package q7;

import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends k {
    public final a5.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a5.h f4905f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a5.h f4906g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a5.h f4907h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f4908i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(a5.h hVar, a5.h hVar2, a5.h hVar3, a5.h hVar4, Provider provider, int i9) {
        super(provider);
        this.e = hVar;
        this.f4905f = hVar2;
        this.f4906g = hVar3;
        this.f4907h = hVar4;
        this.f4908i = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final void c(SSLSocket sSLSocket, String str, List list) {
        if (str != null) {
            this.e.q(sSLSocket, Boolean.TRUE);
            this.f4905f.q(sSLSocket, str);
        }
        Class<?> cls = sSLSocket.getClass();
        a5.h hVar = this.f4907h;
        if (hVar.n(cls) != null) {
            hVar.r(sSLSocket, k.b(list));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final String d(SSLSocket sSLSocket) {
        byte[] bArr;
        Class<?> cls = sSLSocket.getClass();
        a5.h hVar = this.f4906g;
        if (hVar.n(cls) == null || (bArr = (byte[]) hVar.r(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, n.f4926b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final int e() {
        return this.f4908i;
    }
}
