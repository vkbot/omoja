package p170p7;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import p155o4.AbstractC2587b;
import p157o7.AbstractC2743y0;
import p179q7.C3084k;

/* JADX INFO: renamed from: p7.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C2992q {

    /* JADX INFO: renamed from: b */
    public static final Logger f8428b;

    /* JADX INFO: renamed from: c */
    public static final C2992q f8429c;

    /* JADX INFO: renamed from: a */
    public final C3084k f8430a;

    static {
        C2992q c2992q;
        Logger logger = Logger.getLogger(C2992q.class.getName());
        f8428b = logger;
        C3084k c3084k = C3084k.f8756d;
        ClassLoader classLoader = C2992q.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e6) {
                logger.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e6);
                c2992q = new C2992q(c3084k);
            }
        }
        c2992q = new C2991p(c3084k);
        f8429c = c2992q;
    }

    public C2992q(C3084k c3084k) {
        AbstractC2587b.m4042i(c3084k, "platform");
        this.f8430a = c3084k;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m4806c(String str) {
        if (str.contains("_")) {
            return false;
        }
        try {
            AbstractC2587b.m4038e("Userinfo must not be present on authority: '%s'", AbstractC2743y0.m4257a(str).getAuthority().indexOf(64) == -1, str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: a */
    public void mo4803a(SSLSocket sSLSocket, String str, List list) {
        this.f8430a.mo4917c(sSLSocket, str, list);
    }

    /* JADX INFO: renamed from: b */
    public String mo4804b(SSLSocket sSLSocket) {
        return this.f8430a.mo4918d(sSLSocket);
    }

    /* JADX INFO: renamed from: d */
    public String mo4805d(SSLSocket sSLSocket, String str, List list) {
        C3084k c3084k = this.f8430a;
        if (list != null) {
            mo4803a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strMo4804b = mo4804b(sSLSocket);
            if (strMo4804b != null) {
                c3084k.mo4920a(sSLSocket);
                return strMo4804b;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } catch (Throwable th) {
            c3084k.mo4920a(sSLSocket);
            throw th;
        }
    }
}
