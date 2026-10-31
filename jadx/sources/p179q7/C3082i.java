package p179q7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import p099j1.C1929i;

/* JADX INFO: renamed from: q7.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3082i extends C3084k {

    /* JADX INFO: renamed from: e */
    public final Method f8746e;

    /* JADX INFO: renamed from: f */
    public final Method f8747f;

    /* JADX INFO: renamed from: g */
    public final Method f8748g;

    /* JADX INFO: renamed from: h */
    public final Class f8749h;

    /* JADX INFO: renamed from: i */
    public final Class f8750i;

    public C3082i(Method method, Method method2, Method method3, Class cls, Class cls2, Provider provider) {
        super(provider);
        this.f8746e = method;
        this.f8747f = method2;
        this.f8748g = method3;
        this.f8749h = cls;
        this.f8750i = cls2;
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: a */
    public final void mo4920a(SSLSocket sSLSocket) {
        try {
            this.f8748g.invoke(null, sSLSocket);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException e) {
            C3084k.f8754b.log(Level.FINE, "Failed to remove SSLSocket from Jetty ALPN", (Throwable) e);
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: c */
    public final void mo4917c(SSLSocket sSLSocket, String str, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            EnumC3085l enumC3085l = (EnumC3085l) list.get(i10);
            if (enumC3085l != EnumC3085l.HTTP_1_0) {
                arrayList.add(enumC3085l.f8763b);
            }
        }
        try {
            this.f8746e.invoke(null, sSLSocket, Proxy.newProxyInstance(C3084k.class.getClassLoader(), new Class[]{this.f8749h, this.f8750i}, new C3083j(arrayList)));
        } catch (IllegalAccessException e) {
            C1929i.m3023e(e);
        } catch (InvocationTargetException e6) {
            C1929i.m3023e(e6);
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: d */
    public final String mo4918d(SSLSocket sSLSocket) {
        try {
            C3083j c3083j = (C3083j) Proxy.getInvocationHandler(this.f8747f.invoke(null, sSLSocket));
            boolean z9 = c3083j.f8752b;
            if (!z9 && c3083j.f8753c == null) {
                C3084k.f8754b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            }
            if (z9) {
                return null;
            }
            return c3083j.f8753c;
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException unused2) {
            throw new AssertionError();
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: e */
    public final int mo4919e() {
        return 1;
    }
}
