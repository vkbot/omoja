package p179q7;

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
import org.apache.commons.net.imap.IMAPSClient;
import p006a5.C0023h;
import p130l9.C2242l;
import p142n0.C2467b;

/* JADX INFO: renamed from: q7.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C3084k {

    /* JADX INFO: renamed from: b */
    public static final Logger f8754b;

    /* JADX INFO: renamed from: c */
    public static final String[] f8755c;

    /* JADX INFO: renamed from: d */
    public static final C3084k f8756d;

    /* JADX INFO: renamed from: a */
    public final Provider f8757a;

    static {
        Object obj;
        Provider provider;
        Provider provider2;
        C3084k c3084k;
        int i10;
        Logger logger = Logger.getLogger(C3084k.class.getName());
        f8754b = logger;
        f8755c = new String[]{"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        int i11 = 0;
        loop0: while (true) {
            obj = null;
            if (i11 >= length) {
                logger.log(Level.WARNING, "Unable to find Conscrypt");
                provider = null;
                break;
            }
            Provider provider3 = providers[i11];
            for (String str : f8755c) {
                if (str.equals(provider3.getClass().getName())) {
                    logger.log(Level.FINE, "Found registered provider {0}", str);
                    provider = provider3;
                    break loop0;
                }
            }
            i11++;
        }
        int i12 = 2;
        if (provider != null) {
            int i13 = 25;
            C0023h c0023h = new C0023h(obj, "setUseSessionTickets", new Class[]{Boolean.TYPE}, i13);
            C0023h c0023h2 = new C0023h(obj, "setHostname", new Class[]{String.class}, i13);
            C0023h c0023h3 = new C0023h(byte[].class, "getAlpnSelectedProtocol", new Class[0], i13);
            C0023h c0023h4 = new C0023h(obj, "setAlpnProtocols", new Class[]{byte[].class}, i13);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                cls.getMethod("tagSocket", Socket.class);
                cls.getMethod("untagSocket", Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
            if (!provider.getName().equals("GmsCore_OpenSSL") && !provider.getName().equals("Conscrypt") && !provider.getName().equals("Ssl_Guard")) {
                try {
                    C3084k.class.getClassLoader().loadClass("android.net.Network");
                } catch (ClassNotFoundException e) {
                    logger.log(Level.FINE, "Can't find class", (Throwable) e);
                    try {
                        C3084k.class.getClassLoader().loadClass("android.app.ActivityOptions");
                    } catch (ClassNotFoundException e6) {
                        logger.log(Level.FINE, "Can't find class", (Throwable) e6);
                        i12 = 3;
                    }
                    i10 = i12;
                }
            }
            i10 = 1;
            c3084k = new C3080g(c0023h, c0023h2, c0023h3, c0023h4, provider, i10);
        } else {
            try {
                Provider provider4 = SSLContext.getDefault().getProvider();
                try {
                    try {
                        SSLContext sSLContext = SSLContext.getInstance(IMAPSClient.DEFAULT_PROTOCOL, provider4);
                        sSLContext.init(null, null, null);
                        ((Method) AccessController.doPrivileged(new C3079f(0))).invoke(sSLContext.createSSLEngine(), null);
                        c3084k = new C3081h(provider4, (Method) AccessController.doPrivileged(new C3079f(1)), (Method) AccessController.doPrivileged(new C3079f(2)));
                    } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException unused2) {
                        Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                        try {
                            c3084k = new C3082i(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider4);
                        } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                            provider2 = provider4;
                            c3084k = new C3084k(provider2);
                        }
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    provider2 = provider4;
                    c3084k = new C3084k(provider2);
                }
            } catch (NoSuchAlgorithmException e10) {
                C2467b.m3833w(e10);
                return;
            }
        }
        f8756d = c3084k;
    }

    public C3084k(Provider provider) {
        this.f8757a = provider;
    }

    /* JADX INFO: renamed from: b */
    public static byte[] m4921b(List list) {
        C2242l c2242l = new C2242l();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            EnumC3085l enumC3085l = (EnumC3085l) list.get(i10);
            if (enumC3085l != EnumC3085l.HTTP_1_0) {
                c2242l.m3621m0(enumC3085l.f8763b.length());
                c2242l.m3630u0(enumC3085l.f8763b);
            }
        }
        return c2242l.m3613f0(c2242l.f5878c);
    }

    /* JADX INFO: renamed from: d */
    public String mo4918d(SSLSocket sSLSocket) {
        return null;
    }

    /* JADX INFO: renamed from: e */
    public int mo4919e() {
        return 3;
    }

    /* JADX INFO: renamed from: a */
    public void mo4920a(SSLSocket sSLSocket) {
    }

    /* JADX INFO: renamed from: c */
    public void mo4917c(SSLSocket sSLSocket, String str, List list) {
    }
}
