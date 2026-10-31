package p7;

import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f4694a = Collections.unmodifiableList(Arrays.asList(q7.l.HTTP_2));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SSLSocket a(SSLSocketFactory sSLSocketFactory, Socket socket, String str, int i9, q7.c cVar) throws IOException {
        q7.l lVar;
        o4.b.i(sSLSocketFactory, "sslSocketFactory");
        o4.b.i(socket, "socket");
        o4.b.i(cVar, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i9, true);
        String[] strArr = cVar.f4897b;
        String[] strArr2 = strArr != null ? (String[]) q7.n.a(strArr, sSLSocket.getEnabledCipherSuites()) : null;
        String[] strArr3 = (String[]) q7.n.a(cVar.c, sSLSocket.getEnabledProtocols());
        q7.b bVar = new q7.b(cVar);
        if (!bVar.f4894a) {
            j1.i.l("no cipher suites for cleartext connections");
            return null;
        }
        if (strArr2 == null) {
            bVar.f4895b = null;
        } else {
            bVar.f4895b = (String[]) strArr2.clone();
        }
        if (!bVar.f4894a) {
            j1.i.l("no TLS versions for cleartext connections");
            return null;
        }
        if (strArr3 == null) {
            bVar.c = null;
        } else {
            bVar.c = (String[]) strArr3.clone();
        }
        q7.c cVar2 = new q7.c(bVar);
        sSLSocket.setEnabledProtocols(cVar2.c);
        String[] strArr4 = cVar2.f4897b;
        if (strArr4 != null) {
            sSLSocket.setEnabledCipherSuites(strArr4);
        }
        q qVar = q.c;
        boolean z8 = cVar.d;
        List list = f4694a;
        String strD = qVar.d(sSLSocket, str, z8 ? list : null);
        if (strD.equals("http/1.0")) {
            lVar = q7.l.HTTP_1_0;
        } else if (strD.equals("http/1.1")) {
            lVar = q7.l.HTTP_1_1;
        } else if (strD.equals("h2")) {
            lVar = q7.l.HTTP_2;
        } else {
            if (!strD.equals("spdy/3.1")) {
                n0.b.A("Unexpected protocol: ".concat(strD));
                return null;
            }
            lVar = q7.l.SPDY_3;
        }
        o4.b.l("Only " + list + " are supported, but negotiated protocol is %s", list.contains(lVar), strD);
        if (q7.e.f4902a.verify((str.startsWith("[") && str.endsWith("]")) ? str.substring(1, str.length() - 1) : str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: ".concat(str));
    }
}
