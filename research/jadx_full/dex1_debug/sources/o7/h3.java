package o7;

import java.net.Authenticator;
import java.net.Authenticator$RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy$Type;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h3 {
    public static final Logger d = Logger.getLogger(h3.class.getName());
    public static final u2 e = new u2(17);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final u2 f4273f = new u2(18);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2 f4274a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u2 f4275b;
    public final InetSocketAddress c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h3() {
        String str = System.getenv("GRPC_PROXY_EXP");
        u2 u2Var = f4273f;
        u2Var.getClass();
        this.f4274a = u2Var;
        u2 u2Var2 = e;
        u2Var2.getClass();
        this.f4275b = u2Var2;
        if (str == null) {
            this.c = null;
            return;
        }
        String[] strArrSplit = str.split(":", 2);
        int i9 = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 80;
        d.warning("Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM.");
        this.c = new InetSocketAddress(strArrSplit[0], i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n7.u a(InetSocketAddress inetSocketAddress) {
        URL url;
        n7.u uVar;
        if (inetSocketAddress != null) {
            InetSocketAddress inetSocketAddress2 = this.c;
            if (inetSocketAddress2 != null) {
                return new n7.u(inetSocketAddress2, inetSocketAddress, null, null);
            }
            Logger logger = d;
            try {
                try {
                    URI uri = new URI("https", null, y0.d(inetSocketAddress), inetSocketAddress.getPort(), null, null, null);
                    ProxySelector proxySelector = (ProxySelector) this.f4274a.r();
                    if (proxySelector == null) {
                        logger.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                        return null;
                    }
                    List<Proxy> listSelect = proxySelector.select(uri);
                    if (listSelect.size() > 1) {
                        logger.warning("More than 1 proxy detected, gRPC will select the first one");
                    }
                    Proxy proxy = listSelect.get(0);
                    if (proxy.type() != Proxy$Type.DIRECT) {
                        InetSocketAddress inetSocketAddress3 = (InetSocketAddress) proxy.address();
                        String strD = y0.d(inetSocketAddress3);
                        InetAddress address = inetSocketAddress3.getAddress();
                        int port = inetSocketAddress3.getPort();
                        this.f4275b.getClass();
                        try {
                            url = new URL("https", strD, port, "");
                        } catch (MalformedURLException unused) {
                            logger.log(Level.WARNING, "failed to create URL for Authenticator: {0} {1}", new Object[]{"https", strD});
                            url = null;
                        }
                        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(strD, address, port, "https", "", null, url, Authenticator$RequestorType.PROXY);
                        if (inetSocketAddress3.isUnresolved()) {
                            inetSocketAddress3 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress3.getHostName()), inetSocketAddress3.getPort());
                        }
                        int i9 = n7.u.f3974f;
                        if (passwordAuthenticationRequestPasswordAuthentication == null) {
                            uVar = new n7.u(inetSocketAddress3, inetSocketAddress, null, null);
                        } else {
                            uVar = new n7.u(inetSocketAddress3, inetSocketAddress, passwordAuthenticationRequestPasswordAuthentication.getUserName(), passwordAuthenticationRequestPasswordAuthentication.getPassword() != null ? new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()) : null);
                        }
                        return uVar;
                    }
                } catch (URISyntaxException e6) {
                    logger.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e6);
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
