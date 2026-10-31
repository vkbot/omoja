package p157o7;

import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import p148n7.C2544u;

/* JADX INFO: renamed from: o7.h3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2645h3 {

    /* JADX INFO: renamed from: d */
    public static final Logger f7506d = Logger.getLogger(C2645h3.class.getName());

    /* JADX INFO: renamed from: e */
    public static final C2722u2 f7507e = new C2722u2(17);

    /* JADX INFO: renamed from: f */
    public static final C2722u2 f7508f = new C2722u2(18);

    /* JADX INFO: renamed from: a */
    public final C2722u2 f7509a;

    /* JADX INFO: renamed from: b */
    public final C2722u2 f7510b;

    /* JADX INFO: renamed from: c */
    public final InetSocketAddress f7511c;

    public C2645h3() {
        String str = System.getenv("GRPC_PROXY_EXP");
        C2722u2 c2722u2 = f7508f;
        c2722u2.getClass();
        this.f7509a = c2722u2;
        C2722u2 c2722u3 = f7507e;
        c2722u3.getClass();
        this.f7510b = c2722u3;
        if (str == null) {
            this.f7511c = null;
            return;
        }
        String[] strArrSplit = str.split(":", 2);
        int i10 = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 80;
        f7506d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        this.f7511c = new InetSocketAddress(strArrSplit[0], i10);
    }

    /* JADX INFO: renamed from: a */
    public final C2544u m4165a(InetSocketAddress inetSocketAddress) {
        URL url;
        C2544u c2544u;
        if (inetSocketAddress != null) {
            InetSocketAddress inetSocketAddress2 = this.f7511c;
            if (inetSocketAddress2 != null) {
                return new C2544u(inetSocketAddress2, inetSocketAddress, null, null);
            }
            Logger logger = f7506d;
            try {
                try {
                    URI uri = new URI("https", null, AbstractC2743y0.m4260d(inetSocketAddress), inetSocketAddress.getPort(), null, null, null);
                    ProxySelector proxySelector = (ProxySelector) this.f7509a.m4246r();
                    if (proxySelector == null) {
                        logger.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                        return null;
                    }
                    List<Proxy> listSelect = proxySelector.select(uri);
                    if (listSelect.size() > 1) {
                        logger.warning("More than 1 proxy detected, gRPC will select the first one");
                    }
                    Proxy proxy = listSelect.get(0);
                    if (proxy.type() != Proxy.Type.DIRECT) {
                        InetSocketAddress inetSocketAddress3 = (InetSocketAddress) proxy.address();
                        String strM4260d = AbstractC2743y0.m4260d(inetSocketAddress3);
                        InetAddress address = inetSocketAddress3.getAddress();
                        int port = inetSocketAddress3.getPort();
                        this.f7510b.getClass();
                        try {
                            url = new URL("https", strM4260d, port, "");
                        } catch (MalformedURLException unused) {
                            logger.log(Level.WARNING, "failed to create URL for Authenticator: {0} {1}", new Object[]{"https", strM4260d});
                            url = null;
                        }
                        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(strM4260d, address, port, "https", "", null, url, Authenticator.RequestorType.PROXY);
                        if (inetSocketAddress3.isUnresolved()) {
                            inetSocketAddress3 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress3.getHostName()), inetSocketAddress3.getPort());
                        }
                        int i10 = C2544u.f7028f;
                        if (passwordAuthenticationRequestPasswordAuthentication == null) {
                            c2544u = new C2544u(inetSocketAddress3, inetSocketAddress, null, null);
                        } else {
                            c2544u = new C2544u(inetSocketAddress3, inetSocketAddress, passwordAuthenticationRequestPasswordAuthentication.getUserName(), passwordAuthenticationRequestPasswordAuthentication.getPassword() != null ? new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()) : null);
                        }
                        return c2544u;
                    }
                } catch (URISyntaxException e) {
                    logger.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e);
                    return null;
                }
            } catch (Throwable th) {
                logger.log(Level.WARNING, "Failed to get host for proxy lookup, proceeding without proxy", th);
                return null;
            }
        }
        return null;
    }
}
