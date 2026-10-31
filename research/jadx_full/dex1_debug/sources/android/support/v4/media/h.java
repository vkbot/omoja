package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import b4.l;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
import e0.s3;
import f5.b0;
import i8.q;
import i9.c1;
import i9.m0;
import i9.r;
import i9.s;
import i9.t;
import i9.v0;
import j.g0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.Result;
import kotlin.Result$Companion;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import n.p;
import org.json.JSONObject;
import t4.n;
import x7.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h implements f2.b, m, x7.a, e5.b, x7.f, com.bumptech.glide.load.data.d {
    public static h e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79b;
    public Object c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(int i9) {
        this.f79b = i9;
        switch (i9) {
            case 3:
                this.c = new Rect();
                this.d = new Rect();
                break;
            case 5:
                LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
                this.c = linkedBlockingQueue;
                this.d = new FutureTask(new d7.b(0, linkedBlockingQueue));
                break;
            case 9:
                this.c = new ArrayList();
                break;
            case 25:
                this.c = new k.d(null);
                this.d = new HashMap();
                break;
            default:
                this.c = new Object();
                this.d = new Handler(Looper.getMainLooper(), new b4.k(0, this));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h j() {
        if (e == null) {
            e = new h(1);
        }
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o n(o oVar, float f8, float f9) {
        float f10 = oVar.f6339a;
        float f11 = oVar.f6340b;
        return new o(f10 < f8 ? f10 - 1.0f : f10 + 1.0f, f11 < f9 ? f11 - 1.0f : f11 + 1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String r(j7.b bVar, String str) {
        return new JSONObject().put(e0.m.h(new byte[]{69, 122, -87, 48, -121}, new byte[]{48, 20, -35, 89, -21, -63, 37, 94}), bVar.c).put(e0.m.h(new byte[]{51, 115, 89, -22, -53, -99}, new byte[]{64, 7, 56, -98, -66, -18, 55, -111}), str).toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o v(o oVar, o oVar2, int i9) {
        float f8 = oVar2.f6339a;
        float f9 = oVar.f6339a;
        float f10 = i9 + 1;
        float f11 = oVar2.f6340b;
        float f12 = oVar.f6340b;
        return new o(f9 + ((f8 - f9) / f10), f12 + ((f11 - f12) / f10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public void a() {
        switch (this.f79b) {
            case 12:
                ((x7.a) this.c).a();
                break;
            case 16:
                ((x7.f) this.c).a();
                break;
            default:
                ((x7.f) this.c).a();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.m, x7.a, x7.f
    public void b(z7.a aVar) {
        switch (this.f79b) {
            case 10:
                c8.a.c((i8.h) this.c, aVar);
                break;
            case 12:
                ((c8.d) this.d).d(aVar);
                break;
            case 16:
                c8.a.d((q) this.d, aVar);
                break;
            case 17:
                c8.a.d((i8.h) this.d, aVar);
                break;
            case 28:
                ((m) this.c).b(aVar);
                break;
            default:
                ((m) this.c).b(aVar);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.m, x7.f
    public void c(Object obj) {
        switch (this.f79b) {
            case 10:
                ((m) this.d).c(obj);
                break;
            case 16:
                ((x7.f) this.c).c(obj);
                break;
            case 17:
                ((x7.f) this.c).c(obj);
                break;
            case 28:
                ((m) this.c).c(obj);
                break;
            default:
                m mVar = (m) this.c;
                try {
                    ((b8.b) ((k8.a) this.d).c).accept(obj);
                    mVar.c(obj);
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    mVar.onError(th);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public void d(Exception exc) {
        g0 g0Var = (g0) this.d;
        n.q qVar = (n.q) this.c;
        n.q qVar2 = g0Var.f2777g;
        if (qVar2 == null || qVar2 != qVar) {
            return;
        }
        g0 g0Var2 = (g0) this.d;
        n.q qVar3 = (n.q) this.c;
        j.k kVar = g0Var2.c;
        j.e eVar = g0Var2.f2778h;
        com.bumptech.glide.load.data.e eVar2 = qVar3.c;
        kVar.b(eVar, exc, eVar2, eVar2.c());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0046  */
    /* JADX WARN: Code duplicated, block: B:20:0x0059  */
    public CctBackendFactory e(String str) {
        Bundle bundle;
        Map map;
        Object obj;
        if (((Map) this.d) == null) {
            Context context = (Context) this.c;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                    if (serviceInfo == null) {
                        Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                    if (bundle == null) {
                        Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                        map = Collections.EMPTY_MAP;
                    } else {
                        HashMap map2 = new HashMap();
                        for (String str2 : bundle.keySet()) {
                            obj = bundle.get(str2);
                            if (!(obj instanceof String) && str2.startsWith("backend:")) {
                                for (String str3 : ((String) obj).split(",", -1)) {
                                    String strTrim = str3.trim();
                                    if (!strTrim.isEmpty()) {
                                        map2.put(strTrim, str2.substring(8));
                                    }
                                }
                            }
                        }
                        map = map2;
                    }
                    this.d = map;
                }
            } catch (PackageManager$NameNotFoundException unused) {
                Log.w("BackendRegistry", "Application info not found.");
            }
            bundle = null;
            if (bundle == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                map = Collections.EMPTY_MAP;
            } else {
                HashMap map3 = new HashMap();
                while (r6.hasNext()) {
                    obj = bundle.get(str2);
                    if (!(obj instanceof String)) {
                    }
                }
                map = map3;
            }
            this.d = map;
        }
        String str4 = (String) ((Map) this.d).get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (CctBackendFactory) Class.forName(str4).asSubclass(CctBackendFactory.class).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e6) {
            Log.w("BackendRegistry", "Class " + str4 + " is not found.", e6);
            return null;
        } catch (IllegalAccessException e9) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e9);
            return null;
        } catch (InstantiationException e10) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e10);
            return null;
        } catch (NoSuchMethodException e11) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e11);
            return null;
        } catch (InvocationTargetException e12) {
            Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e12);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public void f(Object obj) {
        g0 g0Var = (g0) this.d;
        n.q qVar = (n.q) this.c;
        n.q qVar2 = g0Var.f2777g;
        if (qVar2 == null || qVar2 != qVar) {
            return;
        }
        g0 g0Var2 = (g0) this.d;
        n.q qVar3 = (n.q) this.c;
        j.m mVar = g0Var2.f2775b.f2791p;
        if (obj != null && mVar.a(qVar3.c.c())) {
            g0Var2.f2776f = obj;
            g0Var2.c.l(2);
        } else {
            j.k kVar = g0Var2.c;
            h.e eVar = qVar3.f3760a;
            com.bumptech.glide.load.data.e eVar2 = qVar3.c;
            kVar.a(eVar, obj, eVar2, eVar2.c(), g0Var2.f2778h);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e9.b g(KClass kClass) {
        Object objPutIfAbsent;
        switch (this.f79b) {
            case 18:
                Object objA = i9.q.a((t) this.d, JvmClassMappingKt.getJavaClass(kClass));
                objA.getClass();
                v0 v0Var = (v0) objA;
                Object objA2 = v0Var.a.get();
                if (objA2 == null) {
                    objA2 = v0Var.a(new r(0, this, kClass));
                }
                return ((i9.k) objA2).a;
            default:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.d;
                Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
                Object kVar = concurrentHashMap.get(javaClass);
                if (kVar == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (kVar = new i9.k((e9.b) ((Function1) this.c).invoke(kClass))))) != null) {
                    kVar = objPutIfAbsent;
                }
                return ((i9.k) kVar).a;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        switch (this.f79b) {
            case 7:
                return new e2.d((Context) ((e5.c) this.c).c, (a5.h) ((r5.c) this.d).get());
            default:
                n7.d fVar = (n7.d) ((g5.a) this.c).get();
                Iterator it = Arrays.asList(new u7.g((n7.v0) ((r5.c) this.d).get())).iterator();
                while (it.hasNext()) {
                    fVar = new n7.f(fVar, (u7.g) it.next());
                }
                return new y5.j(fVar, n7.c.f3892h.c(u7.e.c, u7.b.f5489b));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object h(k.i iVar) {
        HashMap map = (HashMap) this.d;
        k.d dVar = (k.d) map.get(iVar);
        if (dVar == null) {
            dVar = new k.d(iVar);
            map.put(iVar, dVar);
        } else {
            iVar.a();
        }
        k.d dVar2 = dVar.d;
        dVar2.c = dVar.c;
        dVar.c.d = dVar2;
        k.d dVar3 = (k.d) this.c;
        dVar.d = dVar3;
        k.d dVar4 = dVar3.c;
        dVar.c = dVar4;
        dVar4.d = dVar;
        dVar.d.c = dVar;
        ArrayList arrayList = dVar.f3131b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return dVar.f3131b.remove(size - 1);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object i(KClass kClass, ArrayList arrayList) {
        Object objM95constructorimpl;
        Object objM95constructorimpl2;
        Object objPutIfAbsent;
        int i9 = 0;
        switch (this.f79b) {
            case 19:
                Object objA = i9.q.a((t) this.d, JvmClassMappingKt.getJavaClass(kClass));
                objA.getClass();
                v0 v0Var = (v0) objA;
                Object objA2 = v0Var.a.get();
                if (objA2 == null) {
                    objA2 = v0Var.a(new s(0));
                }
                c1 c1Var = (c1) objA2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                int size = arrayList.size();
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    arrayList2.add(new m0((KType) obj));
                }
                ConcurrentHashMap concurrentHashMap = c1Var.a;
                Object obj2 = concurrentHashMap.get(arrayList2);
                if (obj2 == null) {
                    try {
                        Result$Companion result$Companion = Result.Companion;
                        objM95constructorimpl = Result.m95constructorimpl((e9.b) ((Function2) this.c).invoke(kClass, arrayList));
                    } catch (Throwable th) {
                        Result$Companion result$Companion2 = Result.Companion;
                        objM95constructorimpl = Result.m95constructorimpl(ResultKt.createFailure(th));
                    }
                    Result resultM94boximpl = Result.m94boximpl(objM95constructorimpl);
                    Object objPutIfAbsent2 = concurrentHashMap.putIfAbsent(arrayList2, resultM94boximpl);
                    obj2 = objPutIfAbsent2 == null ? resultM94boximpl : objPutIfAbsent2;
                    break;
                }
                obj2.getClass();
                return ((Result) obj2).getValue();
            default:
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.d;
                Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
                Object c1Var2 = concurrentHashMap2.get(javaClass);
                if (c1Var2 == null && (objPutIfAbsent = concurrentHashMap2.putIfAbsent(javaClass, (c1Var2 = new c1()))) != null) {
                    c1Var2 = objPutIfAbsent;
                }
                c1 c1Var3 = (c1) c1Var2;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                int size2 = arrayList.size();
                while (i9 < size2) {
                    Object obj3 = arrayList.get(i9);
                    i9++;
                    arrayList3.add(new m0((KType) obj3));
                }
                ConcurrentHashMap concurrentHashMap3 = c1Var3.a;
                Object obj4 = concurrentHashMap3.get(arrayList3);
                if (obj4 == null) {
                    try {
                        Result$Companion result$Companion3 = Result.Companion;
                        objM95constructorimpl2 = Result.m95constructorimpl((e9.b) ((Function2) this.c).invoke(kClass, arrayList));
                    } catch (Throwable th2) {
                        Result$Companion result$Companion4 = Result.Companion;
                        objM95constructorimpl2 = Result.m95constructorimpl(ResultKt.createFailure(th2));
                    }
                    Result resultM94boximpl2 = Result.m94boximpl(objM95constructorimpl2);
                    Object objPutIfAbsent3 = concurrentHashMap3.putIfAbsent(arrayList3, resultM94boximpl2);
                    obj4 = objPutIfAbsent3 == null ? resultM94boximpl2 : objPutIfAbsent3;
                    break;
                }
                obj4.getClass();
                return ((Result) obj4).getValue();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized String k(long j9, String str) {
        j7.b bVarA;
        String strH;
        try {
            bVarA = j7.b.a(str);
            long j10 = bVarA.c;
            if (j10 > j9 && j10 <= 150000 + j9) {
                p pVar = (p) this.c;
                String string = ((SharedPreferences) pVar.c).getString(bVarA.f3099a, null);
                if (string != null) {
                    strH = new JSONObject(string).getString(e0.m.h(new byte[]{60, 38, 106, -82, 11, 39}, new byte[]{79, 82, 11, -38, 126, 84, -30, 75}));
                } else if (((p) this.c).g(j9, bVarA.f3099a, r(bVarA, e0.m.h(new byte[]{-53, -78, -60, 103, -118, 72, -70}, new byte[]{-66, -36, -81, 9, -27, 63, -44, -109})))) {
                    try {
                        strH = ((y0.a) this.d).b(bVarA);
                    } catch (Exception unused) {
                        strH = e0.m.h(new byte[]{63, -117, 98, -110, 2, -17, -57}, new byte[]{74, -27, 9, -4, 109, -104, -87, -1});
                    }
                    p pVar2 = (p) this.c;
                    ((SharedPreferences) pVar2.c).edit().putString(bVarA.f3099a, r(bVarA, strH)).commit();
                } else {
                    strH = e0.m.h(new byte[]{47, 13, -8, -126, -11, 57, 76, 89, 57, 11, -27, -97, -26}, new byte[]{92, 121, -105, -16, -108, 94, 41, 6});
                }
            } else {
                strH = e0.m.h(new byte[]{-99, 39, -54, -85, -18, 4, -115}, new byte[]{-8, 95, -70, -62, -100, 97, -23, 105});
            }
        } catch (Throwable th) {
            throw th;
        }
        return j7.b.b(bVarA.f3099a, strH);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean l(b4.d dVar) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean m(o oVar) {
        float f8 = oVar.f6339a;
        if (f8 < 0.0f) {
            return false;
        }
        f6.b bVar = (f6.b) this.c;
        if (f8 >= bVar.f2258b) {
            return false;
        }
        float f9 = oVar.f6340b;
        return f9 > 0.0f && f9 < ((float) bVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void o(ArrayList arrayList) throws f7.b {
        s3 s3Var = new s3();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            byte b9 = 2;
            f7.a aVar = (f7.a) f7.a.a((CharSequence) obj).orElseThrow(new androidx.emoji2.text.flatbuffer.a(2));
            String str = aVar.f2275a;
            String str2 = aVar.f2276b;
            String lowerCase = str.toLowerCase(Locale.ENGLISH);
            lowerCase.getClass();
            switch (lowerCase.hashCode()) {
                case -1371213673:
                    b9 = lowerCase.equals("presharedkey") ? (byte) 0 : (byte) -1;
                    break;
                case -1336650364:
                    b9 = lowerCase.equals("allowedips") ? (byte) 1 : (byte) -1;
                    break;
                case 1446930262:
                    if (!lowerCase.equals("publickey")) {
                        b9 = -1;
                    }
                    break;
                case 1741102485:
                    b9 = lowerCase.equals("endpoint") ? (byte) 3 : (byte) -1;
                    break;
                case 2043986865:
                    b9 = lowerCase.equals("persistentkeepalive") ? (byte) 4 : (byte) -1;
                    break;
                default:
                    b9 = -1;
                    break;
            }
            switch (b9) {
                case 0:
                    try {
                        s3Var.f1952f = Optional.of(g7.b.c(str2));
                    } catch (g7.c e6) {
                        throw new f7.b(e6);
                    }
                    break;
                case 1:
                    try {
                        for (String str3 : f7.a.d.split(str2)) {
                            ((LinkedHashSet) s3Var.c).add(f7.f.a(str3));
                        }
                    } catch (f7.i e9) {
                        throw new f7.b(e9);
                    }
                    break;
                case 2:
                    try {
                        s3Var.f1953g = g7.b.c(str2);
                    } catch (g7.c e10) {
                        throw new f7.b(e10);
                    }
                    break;
                case 3:
                    try {
                        s3Var.d = Optional.of(f7.e.b(str2));
                    } catch (f7.i e11) {
                        throw new f7.b(e11);
                    }
                    break;
                case 4:
                    try {
                        int i10 = Integer.parseInt(str2);
                        if (i10 < 0 || i10 > 65535) {
                            String.valueOf(i10);
                            throw new f7.b(null);
                        }
                        s3Var.e = i10 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i10));
                    } catch (NumberFormatException e12) {
                        throw new f7.b(e12);
                    }
                    break;
                default:
                    throw new f7.b(null);
            }
        }
        if (((g7.b) s3Var.f1953g) == null) {
            throw new f7.b(null);
        }
        ((ArrayList) this.c).add(new f7.j(s3Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.m, x7.a, x7.f
    public void onError(Throwable th) {
        switch (this.f79b) {
            case 10:
                ((m) this.d).onError(th);
                return;
            case 12:
                x7.a aVar = (x7.a) this.c;
                try {
                    ((c8.d) this.d).d(c8.b.f543b);
                    aVar.a();
                    return;
                } catch (NullPointerException e6) {
                    throw e6;
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    a.a.s(th2);
                    NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
                    nullPointerException.initCause(th2);
                    throw nullPointerException;
                }
            case 16:
                ((x7.f) this.c).onError(th);
                return;
            case 17:
                ((x7.f) this.c).onError(th);
                return;
            case 28:
                try {
                    ((e0.g) ((k8.a) this.d).c).accept(th);
                    break;
                } catch (Throwable th3) {
                    com.bumptech.glide.d.v(th3);
                    th = new a8.c(th, th3);
                }
                ((m) this.c).onError(th);
                return;
            default:
                ((m) this.c).onError(th);
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void p(b4.d dVar) {
        synchronized (this.c) {
            try {
                if (l(dVar)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void q(k.i iVar, Object obj) {
        HashMap map = (HashMap) this.d;
        k.d dVar = (k.d) map.get(iVar);
        if (dVar == null) {
            dVar = new k.d(iVar);
            dVar.d = dVar;
            k.d dVar2 = (k.d) this.c;
            dVar.d = dVar2.d;
            dVar.c = dVar2;
            dVar2.d = dVar;
            dVar.d.c = dVar;
            map.put(iVar, dVar);
        } else {
            iVar.a();
        }
        if (dVar.f3131b == null) {
            dVar.f3131b = new ArrayList();
        }
        dVar.f3131b.add(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object s() {
        k.d dVar = (k.d) this.c;
        k.d dVar2 = dVar.d;
        while (true) {
            boolean zEquals = dVar2.equals(dVar);
            Object obj = dVar2.f3130a;
            if (zEquals) {
                return null;
            }
            ArrayList arrayList = dVar2.f3131b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? dVar2.f3131b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            k.d dVar3 = dVar2.d;
            dVar3.c = dVar2.c;
            dVar2.c.d = dVar3;
            ((HashMap) this.d).remove(obj);
            ((k.i) obj).a();
            dVar2 = dVar2.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void t(b4.d dVar) {
        synchronized (this.c) {
            try {
                if (l(dVar)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f79b) {
            case 25:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                k.d dVar = (k.d) this.c;
                k.d dVar2 = dVar.c;
                boolean z8 = false;
                while (!dVar2.equals(dVar)) {
                    sb.append('{');
                    sb.append(dVar2.f3130a);
                    sb.append(':');
                    ArrayList arrayList = dVar2.f3131b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    dVar2 = dVar2.c;
                    z8 = true;
                }
                if (z8) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void u(l lVar) {
        Handler handler = (Handler) this.d;
        lVar.getClass();
        handler.removeCallbacksAndMessages(lVar);
        handler.sendMessageDelayed(Message.obtain(handler, 0, lVar), 2750);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int w(o oVar, o oVar2) {
        f6.b bVar = (f6.b) this.c;
        int i9 = (int) oVar.f6339a;
        int i10 = (int) oVar.f6340b;
        int i11 = (int) oVar2.f6339a;
        int i12 = (int) oVar2.f6340b;
        int i13 = 0;
        boolean z8 = Math.abs(i12 - i10) > Math.abs(i11 - i9);
        if (z8) {
            i9 = i10;
            i10 = i9;
            i11 = i12;
            i12 = i11;
        }
        int iAbs = Math.abs(i11 - i9);
        int iAbs2 = Math.abs(i12 - i10);
        int i14 = (-iAbs) / 2;
        int i15 = i10 < i12 ? 1 : -1;
        int i16 = i9 >= i11 ? -1 : 1;
        boolean zB = bVar.b(z8 ? i10 : i9, z8 ? i9 : i10);
        while (i9 != i11) {
            boolean zB2 = bVar.b(z8 ? i10 : i9, z8 ? i9 : i10);
            if (zB2 != zB) {
                i13++;
                zB = zB2;
            }
            i14 += iAbs2;
            if (i14 > 0) {
                if (i10 == i12) {
                    return i13;
                }
                i10 += i15;
                i14 -= iAbs;
            }
            i9 += i16;
        }
        return i13;
    }

    public /* synthetic */ h(int i9, boolean z8) {
        this.f79b = i9;
    }

    public /* synthetic */ h(Object obj, Object obj2, Object obj3, int i9) {
        this.f79b = i9;
        this.c = obj2;
        this.d = obj3;
    }

    public /* synthetic */ h(Object obj, Object obj2, boolean z8, int i9) {
        this.f79b = i9;
        this.c = obj;
        this.d = obj2;
    }

    public h(g7.b bVar) {
        this.f79b = 11;
        this.c = bVar;
        byte[] bArr = new byte[32];
        byte[] bArr2 = bVar.f2402a;
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, bArr2.length);
        g7.a aVar = new g7.a();
        int[] iArr = aVar.f2400o;
        int[] iArr2 = aVar.f2401p;
        int[] iArr3 = aVar.f2398m;
        int[] iArr4 = aVar.f2397l;
        try {
            Arrays.fill(iArr4, 0);
            iArr4[0] = 9;
            Arrays.fill(iArr3, 0);
            iArr3[0] = 1;
            Arrays.fill(iArr, 0);
            System.arraycopy(iArr4, 0, aVar.f2399n, 0, iArr4.length);
            Arrays.fill(iArr2, 0);
            iArr2[0] = 1;
            aVar.d(bArrCopyOf);
            aVar.f(iArr2, iArr);
            aVar.e(iArr3, iArr3, iArr2);
            for (int i9 = 0; i9 < 32; i9++) {
                int i10 = i9 * 8;
                int i11 = i10 % 26;
                int i12 = i10 / 26;
                if (i11 <= 18) {
                    bArr[i9] = (byte) (iArr3[i12] >> i11);
                } else {
                    bArr[i9] = (byte) ((iArr3[i12 + 1] << (26 - i11)) | (iArr3[i12] >> i11));
                }
            }
            aVar.c();
            this.d = new g7.b(bArr);
        } catch (Throwable th) {
            aVar.c();
            throw th;
        }
    }

    public h(f6.b bVar) {
        this.f79b = 27;
        this.c = bVar;
        this.d = new g6.a(bVar);
    }

    public h(n nVar, b5.b bVar) {
        this.f79b = 14;
        b0 b0Var = new b0();
        b0Var.f2189a = nVar;
        nVar.a(new androidx.fragment.app.h(11, b0Var));
        this.c = b0Var;
        this.d = bVar;
    }

    public h(int i9, Function1 function1) {
        this.f79b = i9;
        function1.getClass();
        switch (i9) {
            case 20:
                this.c = function1;
                this.d = new ConcurrentHashMap();
                break;
            default:
                this.c = function1;
                this.d = new t();
                break;
        }
    }

    public /* synthetic */ h(int i9, Object obj, Object obj2) {
        this.f79b = i9;
        this.d = obj;
        this.c = obj2;
    }

    public h(Context context) {
        this.f79b = 6;
        this.d = null;
        this.c = context;
    }

    public h(int i9, Function2 function2) {
        this.f79b = i9;
        function2.getClass();
        switch (i9) {
            case 21:
                this.c = function2;
                this.d = new ConcurrentHashMap();
                break;
            default:
                this.c = function2;
                this.d = new t();
                break;
        }
    }
}
