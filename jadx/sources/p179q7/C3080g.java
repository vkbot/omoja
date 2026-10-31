package p179q7;

import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLSocket;
import p006a5.C0023h;

/* JADX INFO: renamed from: q7.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3080g extends C3084k {

    /* JADX INFO: renamed from: e */
    public final C0023h f8739e;

    /* JADX INFO: renamed from: f */
    public final C0023h f8740f;

    /* JADX INFO: renamed from: g */
    public final C0023h f8741g;

    /* JADX INFO: renamed from: h */
    public final C0023h f8742h;

    /* JADX INFO: renamed from: i */
    public final int f8743i;

    public C3080g(C0023h c0023h, C0023h c0023h2, C0023h c0023h3, C0023h c0023h4, Provider provider, int i10) {
        super(provider);
        this.f8739e = c0023h;
        this.f8740f = c0023h2;
        this.f8741g = c0023h3;
        this.f8742h = c0023h4;
        this.f8743i = i10;
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: c */
    public final void mo4917c(SSLSocket sSLSocket, String str, List list) {
        if (str != null) {
            this.f8739e.m81q(sSLSocket, Boolean.TRUE);
            this.f8740f.m81q(sSLSocket, str);
        }
        Class<?> cls = sSLSocket.getClass();
        C0023h c0023h = this.f8742h;
        if (c0023h.m79n(cls) != null) {
            c0023h.m82r(sSLSocket, C3084k.m4921b(list));
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: d */
    public final String mo4918d(SSLSocket sSLSocket) {
        byte[] bArr;
        Class<?> cls = sSLSocket.getClass();
        C0023h c0023h = this.f8741g;
        if (c0023h.m79n(cls) == null || (bArr = (byte[]) c0023h.m82r(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, AbstractC3087n.f8772b);
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: e */
    public final int mo4919e() {
        return this.f8743i;
    }
}
