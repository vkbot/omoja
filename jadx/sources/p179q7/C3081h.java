package p179q7;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p142n0.C2467b;

/* JADX INFO: renamed from: q7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3081h extends C3084k {

    /* JADX INFO: renamed from: e */
    public final Method f8744e;

    /* JADX INFO: renamed from: f */
    public final Method f8745f;

    public C3081h(Provider provider, Method method, Method method2) {
        super(provider);
        this.f8744e = method;
        this.f8745f = method2;
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: c */
    public final void mo4917c(SSLSocket sSLSocket, String str, List list) {
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EnumC3085l enumC3085l = (EnumC3085l) it.next();
            if (enumC3085l != EnumC3085l.HTTP_1_0) {
                arrayList.add(enumC3085l.f8763b);
            }
        }
        try {
            this.f8744e.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException e) {
            C2467b.m3833w(e);
        } catch (InvocationTargetException e6) {
            C2467b.m3833w(e6);
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: d */
    public final String mo4918d(SSLSocket sSLSocket) {
        try {
            return (String) this.f8745f.invoke(sSLSocket, null);
        } catch (IllegalAccessException e) {
            C2467b.m3833w(e);
            return null;
        } catch (InvocationTargetException e6) {
            C2467b.m3833w(e6);
            return null;
        }
    }

    @Override // p179q7.C3084k
    /* JADX INFO: renamed from: e */
    public final int mo4919e() {
        return 1;
    }
}
