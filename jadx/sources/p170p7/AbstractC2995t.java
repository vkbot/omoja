package p170p7;

import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import p099j1.C1929i;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p179q7.AbstractC3087n;
import p179q7.C3075b;
import p179q7.C3076c;
import p179q7.C3078e;
import p179q7.EnumC3085l;

/* JADX INFO: renamed from: p7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2995t {

    /* JADX INFO: renamed from: a */
    public static final List f8432a = Collections.unmodifiableList(Arrays.asList(EnumC3085l.HTTP_2));

    /* JADX INFO: renamed from: a */
    public static SSLSocket m4807a(SSLSocketFactory sSLSocketFactory, Socket socket, String str, int i10, C3076c c3076c) throws IOException {
        EnumC3085l enumC3085l;
        AbstractC2587b.m4042i(sSLSocketFactory, "sslSocketFactory");
        AbstractC2587b.m4042i(socket, "socket");
        AbstractC2587b.m4042i(c3076c, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i10, true);
        String[] strArr = c3076c.f8726b;
        String[] strArr2 = strArr != null ? (String[]) AbstractC3087n.m4922a(strArr, sSLSocket.getEnabledCipherSuites()) : null;
        String[] strArr3 = (String[]) AbstractC3087n.m4922a(c3076c.f8727c, sSLSocket.getEnabledProtocols());
        C3075b c3075b = new C3075b(c3076c);
        if (!c3075b.f8720a) {
            C1929i.m3030l("no cipher suites for cleartext connections");
            return null;
        }
        if (strArr2 == null) {
            c3075b.f8721b = null;
        } else {
            c3075b.f8721b = (String[]) strArr2.clone();
        }
        if (!c3075b.f8720a) {
            C1929i.m3030l("no TLS versions for cleartext connections");
            return null;
        }
        if (strArr3 == null) {
            c3075b.f8722c = null;
        } else {
            c3075b.f8722c = (String[]) strArr3.clone();
        }
        C3076c c3076c2 = new C3076c(c3075b);
        sSLSocket.setEnabledProtocols(c3076c2.f8727c);
        String[] strArr4 = c3076c2.f8726b;
        if (strArr4 != null) {
            sSLSocket.setEnabledCipherSuites(strArr4);
        }
        C2992q c2992q = C2992q.f8429c;
        boolean z9 = c3076c.f8728d;
        List list = f8432a;
        String strMo4805d = c2992q.mo4805d(sSLSocket, str, z9 ? list : null);
        if (strMo4805d.equals("http/1.0")) {
            enumC3085l = EnumC3085l.HTTP_1_0;
        } else if (strMo4805d.equals("http/1.1")) {
            enumC3085l = EnumC3085l.HTTP_1_1;
        } else if (strMo4805d.equals("h2")) {
            enumC3085l = EnumC3085l.HTTP_2;
        } else {
            if (!strMo4805d.equals("spdy/3.1")) {
                C2467b.m3820A("Unexpected protocol: ".concat(strMo4805d));
                return null;
            }
            enumC3085l = EnumC3085l.SPDY_3;
        }
        AbstractC2587b.m4045l("Only " + list + " are supported, but negotiated protocol is %s", list.contains(enumC3085l), strMo4805d);
        if (C3078e.f8736a.verify((str.startsWith("[") && str.endsWith("]")) ? str.substring(1, str.length() - 1) : str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: ".concat(str));
    }
}
