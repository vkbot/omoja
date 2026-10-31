package p170p7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.EnumSet;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocketFactory;
import p099j1.C1929i;
import p141n.C2455p;
import p148n7.AbstractC2503e;
import p148n7.EnumC2529m1;
import p157o7.AbstractC2743y0;
import p157o7.C2638g2;
import p157o7.C2722u2;
import p157o7.C2736w4;
import p179q7.C3075b;
import p179q7.C3076c;
import p179q7.EnumC3074a;
import p179q7.EnumC3086m;
import p258z3.C3720f;

/* JADX INFO: renamed from: p7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2983h extends AbstractC2503e {

    /* JADX INFO: renamed from: n */
    public static final C3076c f8326n;

    /* JADX INFO: renamed from: o */
    public static final C2455p f8327o;

    /* JADX INFO: renamed from: b */
    public final C2638g2 f8328b;

    /* JADX INFO: renamed from: f */
    public SSLSocketFactory f8332f;

    /* JADX INFO: renamed from: c */
    public final C2722u2 f8329c = C2736w4.f7857e;

    /* JADX INFO: renamed from: d */
    public final C2455p f8330d = f8327o;

    /* JADX INFO: renamed from: e */
    public final C2455p f8331e = new C2455p(5, AbstractC2743y0.f7891q);

    /* JADX INFO: renamed from: g */
    public final C3076c f8333g = f8326n;

    /* JADX INFO: renamed from: h */
    public final int f8334h = 1;

    /* JADX INFO: renamed from: i */
    public final long f8335i = Long.MAX_VALUE;

    /* JADX INFO: renamed from: j */
    public final long f8336j = AbstractC2743y0.f7886l;

    /* JADX INFO: renamed from: k */
    public final int f8337k = 65535;

    /* JADX INFO: renamed from: l */
    public final int f8338l = 4194304;

    /* JADX INFO: renamed from: m */
    public final int f8339m = Integer.MAX_VALUE;

    static {
        Logger.getLogger(C2983h.class.getName());
        C3075b c3075b = new C3075b(C3076c.f8724e);
        c3075b.m4909a(EnumC3074a.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, EnumC3074a.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, EnumC3074a.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, EnumC3074a.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256);
        c3075b.m4910b(EnumC3086m.TLS_1_2);
        if (!c3075b.f8720a) {
            C1929i.m3030l("no TLS extensions for cleartext connections");
            return;
        }
        c3075b.f8723d = true;
        f8326n = new C3076c(c3075b);
        f8327o = new C2455p(5, new C3720f(15));
        EnumSet.of(EnumC2529m1.f6995b, EnumC2529m1.f6996c);
    }

    public C2983h(String str) {
        this.f8328b = new C2638g2(str, new C2981f(this), new C2981f(this));
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f8328b, "delegate");
        return c1073sM1263t.toString();
    }
}
