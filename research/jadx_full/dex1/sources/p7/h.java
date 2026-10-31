package p7;

import java.util.EnumSet;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocketFactory;
import n7.m1;
import o7.g2;
import o7.u2;
import o7.w4;
import o7.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends n7.e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final q7.c f4634n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final n.p f4635o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g2 f4636b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SSLSocketFactory f4637f;
    public final u2 c = w4.e;
    public final n.p d = f4635o;
    public final n.p e = new n.p(5, y0.f4518q);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final q7.c f4638g = f4634n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4639h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f4640i = Long.MAX_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f4641j = y0.f4513l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f4642k = 65535;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4643l = 4194304;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4644m = Integer.MAX_VALUE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger.getLogger(h.class.getName());
        q7.b bVar = new q7.b(q7.c.e);
        bVar.a(q7.a.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, q7.a.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, q7.a.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, q7.a.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, q7.a.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, q7.a.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256);
        bVar.b(q7.m.TLS_1_2);
        if (!bVar.f4894a) {
            j1.i.l("no TLS extensions for cleartext connections");
            return;
        }
        bVar.d = true;
        f4634n = new q7.c(bVar);
        f4635o = new n.p(5, new z3.f(15));
        EnumSet.of(m1.f3957b, m1.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(String str) {
        this.f4636b = new g2(str, new f(this), new f(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4636b, "delegate");
        return sVarT.toString();
    }
}
