package p170p7;

import ai.onnxruntime.C0075b;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p006a5.C0023h;
import p142n0.C2467b;
import p179q7.AbstractC3087n;
import p179q7.C3084k;
import p179q7.EnumC3085l;

/* JADX INFO: renamed from: p7.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2991p extends C2992q {

    /* JADX INFO: renamed from: d */
    public static final C0023h f8415d;

    /* JADX INFO: renamed from: e */
    public static final C0023h f8416e;

    /* JADX INFO: renamed from: f */
    public static final C0023h f8417f;

    /* JADX INFO: renamed from: g */
    public static final C0023h f8418g;

    /* JADX INFO: renamed from: h */
    public static final C0023h f8419h;

    /* JADX INFO: renamed from: i */
    public static final C0023h f8420i;

    /* JADX INFO: renamed from: j */
    public static final Method f8421j;

    /* JADX INFO: renamed from: k */
    public static final Method f8422k;

    /* JADX INFO: renamed from: l */
    public static final Method f8423l;

    /* JADX INFO: renamed from: m */
    public static final Method f8424m;

    /* JADX INFO: renamed from: n */
    public static final Method f8425n;

    /* JADX INFO: renamed from: o */
    public static final Method f8426o;

    /* JADX INFO: renamed from: p */
    public static final Constructor f8427p;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Logger logger = C2992q.f8428b;
        Class cls = Boolean.TYPE;
        Constructor<?> constructor = null;
        int i10 = 25;
        f8415d = new C0023h(constructor, "setUseSessionTickets", new Class[]{cls}, i10);
        f8416e = new C0023h(constructor, "setHostname", new Class[]{String.class}, i10);
        Class<byte[]> cls2 = byte[].class;
        f8417f = new C0023h(cls2, "getAlpnSelectedProtocol", new Class[0], i10);
        f8418g = new C0023h(constructor, "setAlpnProtocols", new Class[]{byte[].class}, i10);
        f8419h = new C0023h(cls2, "getNpnSelectedProtocol", new Class[0], i10);
        f8420i = new C0023h(constructor, "setNpnProtocols", new Class[]{byte[].class}, i10);
        try {
            try {
                method = SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
                try {
                    method2 = SSLParameters.class.getMethod("getApplicationProtocols", null);
                    try {
                        try {
                            method3 = SSLSocket.class.getMethod("getApplicationProtocol", null);
                            try {
                                Class<?> cls3 = Class.forName("android.net.ssl.SSLSockets");
                                method4 = cls3.getMethod("isSupportedSocket", SSLSocket.class);
                                try {
                                    method5 = cls3.getMethod("setUseSessionTickets", SSLSocket.class, cls);
                                } catch (ClassNotFoundException e) {
                                    e = e;
                                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                    method5 = null;
                                } catch (NoSuchMethodException e6) {
                                    e = e6;
                                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                    method5 = null;
                                }
                            } catch (ClassNotFoundException e10) {
                                e = e10;
                                method4 = null;
                            } catch (NoSuchMethodException e11) {
                                e = e11;
                                method4 = null;
                            }
                        } catch (ClassNotFoundException e12) {
                            e = e12;
                            method3 = null;
                            method4 = method3;
                            logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                            method5 = null;
                            f8423l = method;
                            f8424m = method2;
                            f8425n = method3;
                            f8421j = method4;
                            f8422k = method5;
                            method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                            constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                            f8426o = method6;
                            f8427p = constructor;
                        } catch (NoSuchMethodException e13) {
                            e = e13;
                            method3 = null;
                            method4 = method3;
                            logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                            method5 = null;
                            f8423l = method;
                            f8424m = method2;
                            f8425n = method3;
                            f8421j = method4;
                            f8422k = method5;
                            method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                            constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                            f8426o = method6;
                            f8427p = constructor;
                        }
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    } catch (ClassNotFoundException e14) {
                        e = e14;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                    } catch (NoSuchMethodException e15) {
                        e = e15;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                    }
                } catch (ClassNotFoundException e16) {
                    e = e16;
                    method2 = null;
                    method3 = method2;
                    method4 = method3;
                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                    method5 = null;
                    f8423l = method;
                    f8424m = method2;
                    f8425n = method3;
                    f8421j = method4;
                    f8422k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    f8426o = method6;
                    f8427p = constructor;
                } catch (NoSuchMethodException e17) {
                    e = e17;
                    method2 = null;
                    method3 = method2;
                    method4 = method3;
                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                    method5 = null;
                    f8423l = method;
                    f8424m = method2;
                    f8425n = method3;
                    f8421j = method4;
                    f8422k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    f8426o = method6;
                    f8427p = constructor;
                }
            } catch (ClassNotFoundException e18) {
                e = e18;
                method = null;
                method2 = null;
            } catch (NoSuchMethodException e19) {
                e = e19;
                method = null;
                method2 = null;
            }
            method6 = SSLParameters.class.getMethod("setServerNames", List.class);
        } catch (ClassNotFoundException e20) {
            e = e20;
            method6 = null;
        } catch (NoSuchMethodException e21) {
            e = e21;
            method6 = null;
        }
        f8423l = method;
        f8424m = method2;
        f8425n = method3;
        f8421j = method4;
        f8422k = method5;
        f8426o = method6;
        f8427p = constructor;
    }

    @Override // p170p7.C2992q
    /* JADX INFO: renamed from: a */
    public final void mo4803a(SSLSocket sSLSocket, String str, List list) {
        Constructor constructor;
        Method method;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((EnumC3085l) it.next()).f8763b);
        }
        boolean z9 = false;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        if (str != null) {
            try {
                try {
                    if (C2992q.m4806c(str)) {
                        Method method2 = f8421j;
                        if (method2 == null || !((Boolean) method2.invoke(null, sSLSocket)).booleanValue()) {
                            f8415d.m81q(sSLSocket, Boolean.TRUE);
                        } else {
                            f8422k.invoke(null, sSLSocket, Boolean.TRUE);
                        }
                        Method method3 = f8426o;
                        if (method3 == null || (constructor = f8427p) == null) {
                            f8416e.m81q(sSLSocket, str);
                        } else {
                            method3.invoke(sSLParameters, Collections.singletonList(constructor.newInstance(str)));
                        }
                    }
                } catch (IllegalAccessException e) {
                    C2467b.m3833w(e);
                    return;
                } catch (InstantiationException e6) {
                    C2467b.m3833w(e6);
                    return;
                }
            } catch (InvocationTargetException e10) {
                C2467b.m3833w(e10);
                return;
            }
        }
        Method method4 = f8425n;
        if (method4 != null) {
            try {
                method4.invoke(sSLSocket, null);
                f8423l.invoke(sSLParameters, strArr);
                z9 = true;
            } catch (InvocationTargetException e11) {
                if (!(e11.getTargetException() instanceof UnsupportedOperationException)) {
                    throw e11;
                }
                C2992q.f8428b.log(Level.FINER, "setApplicationProtocol unsupported, will try old methods");
            }
        }
        sSLSocket.setSSLParameters(sSLParameters);
        if (z9 && (method = f8424m) != null && Arrays.equals(strArr, (String[]) method.invoke(sSLSocket.getSSLParameters(), null))) {
            return;
        }
        Object[] objArr = {C3084k.m4921b(list)};
        C3084k c3084k = this.f8430a;
        if (c3084k.mo4919e() == 1) {
            f8418g.m82r(sSLSocket, objArr);
        }
        if (c3084k.mo4919e() != 3) {
            f8420i.m82r(sSLSocket, objArr);
        } else {
            C0075b.m183h("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
        }
    }

    @Override // p170p7.C2992q
    /* JADX INFO: renamed from: b */
    public final String mo4804b(SSLSocket sSLSocket) {
        Logger logger = C2992q.f8428b;
        Method method = f8425n;
        if (method != null) {
            try {
                return (String) method.invoke(sSLSocket, null);
            } catch (IllegalAccessException e) {
                C2467b.m3833w(e);
                return null;
            } catch (InvocationTargetException e6) {
                if (!(e6.getTargetException() instanceof UnsupportedOperationException)) {
                    C2467b.m3833w(e6);
                    return null;
                }
                logger.log(Level.FINER, "Socket unsupported for getApplicationProtocol, will try old methods");
            }
        }
        C3084k c3084k = this.f8430a;
        if (c3084k.mo4919e() == 1) {
            try {
                byte[] bArr = (byte[]) f8417f.m82r(sSLSocket, new Object[0]);
                if (bArr != null) {
                    return new String(bArr, AbstractC3087n.f8772b);
                }
            } catch (Exception e10) {
                logger.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e10);
            }
        }
        if (c3084k.mo4919e() != 3) {
            try {
                byte[] bArr2 = (byte[]) f8419h.m82r(sSLSocket, new Object[0]);
                if (bArr2 != null) {
                    return new String(bArr2, AbstractC3087n.f8772b);
                }
            } catch (Exception e11) {
                logger.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e11);
            }
        }
        return null;
    }

    @Override // p170p7.C2992q
    /* JADX INFO: renamed from: d */
    public final String mo4805d(SSLSocket sSLSocket, String str, List list) {
        String strMo4804b = mo4804b(sSLSocket);
        return strMo4804b == null ? super.mo4805d(sSLSocket, str, list) : strMo4804b;
    }
}
