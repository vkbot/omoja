package p7;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import o7.y0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f4691b;
    public static final q c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q7.k f4692a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        q qVar;
        Logger logger = Logger.getLogger(q.class.getName());
        f4691b = logger;
        q7.k kVar = q7.k.d;
        ClassLoader classLoader = q.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e6) {
                logger.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e6);
                qVar = new q(kVar);
            }
        }
        qVar = new p(kVar);
        c = qVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(q7.k kVar) {
        o4.b.i(kVar, "platform");
        this.f4692a = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean c(String str) {
        if (str.contains("_")) {
            return false;
        }
        try {
            o4.b.e("Userinfo must not be present on authority: '%s'", y0.a(str).getAuthority().indexOf(64) == -1, str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(SSLSocket sSLSocket, String str, List list) {
        this.f4692a.c(sSLSocket, str, list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String b(SSLSocket sSLSocket) {
        return this.f4692a.d(sSLSocket);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String d(SSLSocket sSLSocket, String str, List list) {
        q7.k kVar = this.f4692a;
        if (list != null) {
            a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strB = b(sSLSocket);
            if (strB != null) {
                kVar.a(sSLSocket);
                return strB;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } catch (Throwable th) {
            kVar.a(sSLSocket);
            throw th;
        }
    }
}
