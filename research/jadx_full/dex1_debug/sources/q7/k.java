package q7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedActionException;
import java.security.Provider;
import java.security.Security;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f4916b;
    public static final String[] c;
    public static final k d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f4917a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Provider provider;
        Provider provider2;
        k kVar;
        int i9;
        Logger logger = Logger.getLogger(k.class.getName());
        f4916b = logger;
        c = new String[]{"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        int i10 = 0;
        loop0: while (true) {
            if (i10 >= length) {
                logger.log(Level.WARNING, "Unable to find Conscrypt");
                provider = null;
                break;
            }
            Provider provider3 = providers[i10];
            for (String str : c) {
                if (str.equals(provider3.getClass().getName())) {
                    logger.log(Level.FINE, "Found registered provider {0}", str);
                    provider = provider3;
                    break loop0;
                }
            }
            i10++;
        }
        int i11 = 2;
        if (provider != null) {
            a5.h hVar = new a5.h(null, "setUseSessionTickets", new Class[]{Boolean.TYPE}, 25);
            a5.h hVar2 = new a5.h(null, "setHostname", new Class[]{String.class}, 25);
            a5.h hVar3 = new a5.h(byte[].class, "getAlpnSelectedProtocol", new Class[0], 25);
            a5.h hVar4 = new a5.h(null, "setAlpnProtocols", new Class[]{byte[].class}, 25);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                cls.getMethod("tagSocket", Socket.class);
                cls.getMethod("untagSocket", Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
            if (!provider.getName().equals("GmsCore_OpenSSL") && !provider.getName().equals("Conscrypt") && !provider.getName().equals("Ssl_Guard")) {
                try {
                    k.class.getClassLoader().loadClass("android.net.Network");
                } catch (ClassNotFoundException e) {
                    logger.log(Level.FINE, "Can't find class", (Throwable) e);
                    try {
                        k.class.getClassLoader().loadClass("android.app.ActivityOptions");
                    } catch (ClassNotFoundException e6) {
                        logger.log(Level.FINE, "Can't find class", (Throwable) e6);
                        i11 = 3;
                    }
                    i9 = i11;
                }
            }
            i9 = 1;
            kVar = new g(hVar, hVar2, hVar3, hVar4, provider, i9);
        } else {
            try {
                Provider provider4 = SSLContext.getDefault().getProvider();
                try {
                    try {
                        SSLContext sSLContext = SSLContext.getInstance("TLS", provider4);
                        sSLContext.init(null, null, null);
                        ((Method) AccessController.doPrivileged(new f(0))).invoke(sSLContext.createSSLEngine(), null);
                        kVar = new h(provider4, (Method) AccessController.doPrivileged(new f(1)), (Method) AccessController.doPrivileged(new f(2)));
                    } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                        provider2 = provider4;
                        kVar = new k(provider2);
                    }
                } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException unused3) {
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    try {
                        kVar = new i(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider4);
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                        provider2 = provider4;
                        kVar = new k(provider2);
                    }
                }
            } catch (NoSuchAlgorithmException e9) {
                n0.b.w(e9);
                return;
            }
        }
        d = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(Provider provider) {
        this.f4917a = provider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] b(List list) {
        l9.l lVar = new l9.l();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            l lVar2 = (l) list.get(i9);
            if (lVar2 != l.HTTP_1_0) {
                lVar.m0(lVar2.f4920b.length());
                lVar.u0(lVar2.f4920b);
            }
        }
        return lVar.f0(lVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String d(SSLSocket sSLSocket) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int e() {
        return 3;
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List list) {
    }
}
