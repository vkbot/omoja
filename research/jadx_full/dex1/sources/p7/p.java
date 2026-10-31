package p7;

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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends q {
    public static final a5.h d;
    public static final a5.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a5.h f4680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a5.h f4681g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a5.h f4682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a5.h f4683i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Method f4684j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Method f4685k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Method f4686l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Method f4687m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Method f4688n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Method f4689o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Constructor f4690p;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Logger logger = q.f4691b;
        Class cls = Boolean.TYPE;
        Constructor<?> constructor = null;
        d = new a5.h(null, "setUseSessionTickets", new Class[]{cls}, 25);
        e = new a5.h(null, "setHostname", new Class[]{String.class}, 25);
        f4680f = new a5.h(byte[].class, "getAlpnSelectedProtocol", new Class[0], 25);
        f4681g = new a5.h(null, "setAlpnProtocols", new Class[]{byte[].class}, 25);
        f4682h = new a5.h(byte[].class, "getNpnSelectedProtocol", new Class[0], 25);
        f4683i = new a5.h(null, "setNpnProtocols", new Class[]{byte[].class}, 25);
        try {
            method = SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
            try {
                method2 = SSLParameters.class.getMethod("getApplicationProtocols", null);
                try {
                    method3 = SSLSocket.class.getMethod("getApplicationProtocol", null);
                    try {
                        Class<?> cls2 = Class.forName("android.net.ssl.SSLSockets");
                        method4 = cls2.getMethod("isSupportedSocket", SSLSocket.class);
                        try {
                            method5 = cls2.getMethod("setUseSessionTickets", SSLSocket.class, cls);
                        } catch (ClassNotFoundException e6) {
                            e = e6;
                            logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                            method5 = null;
                        } catch (NoSuchMethodException e9) {
                            e = e9;
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
                    f4686l = method;
                    f4687m = method2;
                    f4688n = method3;
                    f4684j = method4;
                    f4685k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    try {
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    } catch (ClassNotFoundException e13) {
                        e = e13;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                    } catch (NoSuchMethodException e14) {
                        e = e14;
                        logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                    }
                    f4689o = method6;
                    f4690p = constructor;
                } catch (NoSuchMethodException e15) {
                    e = e15;
                    method3 = null;
                    method4 = method3;
                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                    method5 = null;
                    f4686l = method;
                    f4687m = method2;
                    f4688n = method3;
                    f4684j = method4;
                    f4685k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    f4689o = method6;
                    f4690p = constructor;
                }
            } catch (ClassNotFoundException e16) {
                e = e16;
                method2 = null;
                method3 = method2;
                method4 = method3;
                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                method5 = null;
                f4686l = method;
                f4687m = method2;
                f4688n = method3;
                f4684j = method4;
                f4685k = method5;
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                f4689o = method6;
                f4690p = constructor;
            } catch (NoSuchMethodException e17) {
                e = e17;
                method2 = null;
                method3 = method2;
                method4 = method3;
                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                method5 = null;
                f4686l = method;
                f4687m = method2;
                f4688n = method3;
                f4684j = method4;
                f4685k = method5;
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                f4689o = method6;
                f4690p = constructor;
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
        f4686l = method;
        f4687m = method2;
        f4688n = method3;
        f4684j = method4;
        f4685k = method5;
        try {
            method6 = SSLParameters.class.getMethod("setServerNames", List.class);
            constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
        } catch (ClassNotFoundException e20) {
            e = e20;
            method6 = null;
        } catch (NoSuchMethodException e21) {
            e = e21;
            method6 = null;
        }
        f4689o = method6;
        f4690p = constructor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // p7.q
    public final void a(SSLSocket sSLSocket, String str, List list) {
        Constructor constructor;
        Method method;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((q7.l) it.next()).f4920b);
        }
        boolean z8 = false;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        if (str != null) {
            try {
                try {
                    if (q.c(str)) {
                        Method method2 = f4684j;
                        if (method2 == null || !((Boolean) method2.invoke(null, sSLSocket)).booleanValue()) {
                            d.q(sSLSocket, Boolean.TRUE);
                        } else {
                            f4685k.invoke(null, sSLSocket, Boolean.TRUE);
                        }
                        Method method3 = f4689o;
                        if (method3 == null || (constructor = f4690p) == null) {
                            e.q(sSLSocket, str);
                        } else {
                            method3.invoke(sSLParameters, Collections.singletonList(constructor.newInstance(str)));
                        }
                    }
                } catch (InvocationTargetException e6) {
                    n0.b.w(e6);
                    return;
                }
            } catch (IllegalAccessException e9) {
                n0.b.w(e9);
                return;
            } catch (InstantiationException e10) {
                n0.b.w(e10);
                return;
            }
        }
        Method method4 = f4688n;
        if (method4 != null) {
            try {
                method4.invoke(sSLSocket, null);
                f4686l.invoke(sSLParameters, strArr);
                z8 = true;
            } catch (InvocationTargetException e11) {
                if (!(e11.getTargetException() instanceof UnsupportedOperationException)) {
                    throw e11;
                }
                q.f4691b.log(Level.FINER, "setApplicationProtocol unsupported, will try old methods");
            }
        }
        sSLSocket.setSSLParameters(sSLParameters);
        if (z8 && (method = f4687m) != null && Arrays.equals(strArr, (String[]) method.invoke(sSLSocket.getSSLParameters(), null))) {
            return;
        }
        Object[] objArr = {q7.k.b(list)};
        q7.k kVar = this.f4692a;
        if (kVar.e() == 1) {
            f4681g.r(sSLSocket, objArr);
        }
        if (kVar.e() != 3) {
            f4683i.r(sSLSocket, objArr);
        } else {
            ai.onnxruntime.b.h("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // p7.q
    public final String b(SSLSocket sSLSocket) {
        Logger logger = q.f4691b;
        Method method = f4688n;
        if (method != null) {
            try {
                return (String) method.invoke(sSLSocket, null);
            } catch (IllegalAccessException e6) {
                n0.b.w(e6);
                return null;
            } catch (InvocationTargetException e9) {
                if (!(e9.getTargetException() instanceof UnsupportedOperationException)) {
                    n0.b.w(e9);
                    return null;
                }
                logger.log(Level.FINER, "Socket unsupported for getApplicationProtocol, will try old methods");
            }
        }
        q7.k kVar = this.f4692a;
        if (kVar.e() == 1) {
            try {
                byte[] bArr = (byte[]) f4680f.r(sSLSocket, new Object[0]);
                if (bArr != null) {
                    return new String(bArr, q7.n.f4926b);
                }
            } catch (Exception e10) {
                logger.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e10);
            }
        }
        if (kVar.e() != 3) {
            try {
                byte[] bArr2 = (byte[]) f4682h.r(sSLSocket, new Object[0]);
                if (bArr2 != null) {
                    return new String(bArr2, q7.n.f4926b);
                }
            } catch (Exception e11) {
                logger.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e11);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // p7.q
    public final String d(SSLSocket sSLSocket, String str, List list) {
        String strB = b(sSLSocket);
        return strB == null ? super.d(sSLSocket, str, list) : strB;
    }
}
