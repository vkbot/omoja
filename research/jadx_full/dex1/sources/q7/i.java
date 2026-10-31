package q7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends k {
    public final Method e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Method f4910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Method f4911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Class f4912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f4913i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(Method method, Method method2, Method method3, Class cls, Class cls2, Provider provider) {
        super(provider);
        this.e = method;
        this.f4910f = method2;
        this.f4911g = method3;
        this.f4912h = cls;
        this.f4913i = cls2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final void a(SSLSocket sSLSocket) {
        try {
            this.f4911g.invoke(null, sSLSocket);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException e) {
            k.f4916b.log(Level.FINE, "Failed to remove SSLSocket from Jetty ALPN", (Throwable) e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final void c(SSLSocket sSLSocket, String str, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            l lVar = (l) list.get(i9);
            if (lVar != l.HTTP_1_0) {
                arrayList.add(lVar.f4920b);
            }
        }
        try {
            this.e.invoke(null, sSLSocket, Proxy.newProxyInstance(k.class.getClassLoader(), new Class[]{this.f4912h, this.f4913i}, new j(arrayList)));
        } catch (IllegalAccessException e) {
            j1.i.e(e);
        } catch (InvocationTargetException e6) {
            j1.i.e(e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final String d(SSLSocket sSLSocket) {
        try {
            j jVar = (j) Proxy.getInvocationHandler(this.f4910f.invoke(null, sSLSocket));
            boolean z8 = jVar.f4915b;
            if (!z8 && jVar.c == null) {
                k.f4916b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            }
            if (z8) {
                return null;
            }
            return jVar.c;
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // q7.k
    public final int e() {
        return 1;
    }
}
