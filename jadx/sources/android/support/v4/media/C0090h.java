package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.emoji2.text.flatbuffer.C0489a;
import androidx.fragment.app.C0566h;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.load.data.InterfaceC1043d;
import com.bumptech.glide.load.data.InterfaceC1044e;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.google.android.datatransport.runtime.backends.TransportBackendDiscovery;
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
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.json.JSONObject;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p009a8.C0031c;
import p019b4.AbstractC0893d;
import p019b4.AbstractC0901l;
import p019b4.C0900k;
import p020b5.InterfaceC0903b;
import p023b8.InterfaceC0928b;
import p033c8.C1014d;
import p033c8.EnumC1011a;
import p033c8.EnumC1012b;
import p044d7.CallableC1311b;
import p047e0.AbstractC1387m;
import p047e0.C1357g;
import p047e0.C1421s3;
import p049e2.C1456d;
import p052e5.C1496c;
import p052e5.InterfaceC1495b;
import p055e9.InterfaceC1506b;
import p059f2.InterfaceC1534b;
import p062f5.C1541b0;
import p063f6.C1578b;
import p064f7.C1584a;
import p064f7.C1585b;
import p064f7.C1588e;
import p064f7.C1589f;
import p064f7.C1592i;
import p064f7.C1593j;
import p072g5.C1619a;
import p073g6.C1621a;
import p074g7.C1622a;
import p074g7.C1623b;
import p074g7.C1624c;
import p077h.InterfaceC1643e;
import p095i8.C1783h;
import p095i8.C1792q;
import p096i9.C1809c1;
import p096i9.C1834k;
import p096i9.C1841m0;
import p096i9.C1855r;
import p096i9.C1858s;
import p096i9.C1861t;
import p096i9.C1868v0;
import p097j.C1890e;
import p097j.C1895g0;
import p097j.C1901m;
import p097j.RunnableC1899k;
import p105j7.C1997b;
import p108k.C2016d;
import p108k.InterfaceC2021i;
import p116k8.C2057a;
import p141n.C2455p;
import p141n.C2456q;
import p148n7.AbstractC2500d;
import p148n7.C2497c;
import p148n7.C2506f;
import p148n7.C2547v0;
import p184r5.C3105c;
import p200t4.C3253n;
import p214u7.AbstractC3308e;
import p214u7.C3310g;
import p214u7.EnumC3305b;
import p242x7.InterfaceC3584a;
import p242x7.InterfaceC3589f;
import p242x7.InterfaceC3596m;
import p245y0.C3623a;
import p250y5.C3655j;
import p260z5.C3759o;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: android.support.v4.media.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0090h implements InterfaceC1534b, InterfaceC3596m, InterfaceC3584a, InterfaceC1495b, InterfaceC3589f, InterfaceC1043d {

    /* JADX INFO: renamed from: e */
    public static C0090h f189e;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f190b;

    /* JADX INFO: renamed from: c */
    public Object f191c;

    /* JADX INFO: renamed from: d */
    public Object f192d;

    public C0090h(int i10) {
        this.f190b = i10;
        switch (i10) {
            case 3:
                this.f191c = new Rect();
                this.f192d = new Rect();
                break;
            case 5:
                LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
                this.f191c = linkedBlockingQueue;
                this.f192d = new FutureTask(new CallableC1311b(0, linkedBlockingQueue));
                break;
            case 9:
                this.f191c = new ArrayList();
                break;
            case 25:
                this.f191c = new C2016d(null);
                this.f192d = new HashMap();
                break;
            default:
                this.f191c = new Object();
                this.f192d = new Handler(Looper.getMainLooper(), new C0900k(0, this));
                break;
        }
    }

    /* JADX INFO: renamed from: j */
    public static C0090h m233j() {
        if (f189e == null) {
            f189e = new C0090h(1);
        }
        return f189e;
    }

    /* JADX INFO: renamed from: n */
    public static C3759o m234n(C3759o c3759o, float f8, float f10) {
        float f11 = c3759o.f11214a;
        float f12 = c3759o.f11215b;
        return new C3759o(f11 < f8 ? f11 - 1.0f : f11 + 1.0f, f12 < f10 ? f12 - 1.0f : f12 + 1.0f);
    }

    /* JADX INFO: renamed from: r */
    public static String m235r(C1997b c1997b, String str) {
        return new JSONObject().put(AbstractC1387m.m2421h(new byte[]{69, 122, -87, 48, -121}, new byte[]{48, 20, -35, 89, -21, -63, 37, 94}), c1997b.f5440c).put(AbstractC1387m.m2421h(new byte[]{51, 115, 89, -22, -53, -99}, new byte[]{64, 7, 56, -98, -66, -18, 55, -111}), str).toString();
    }

    /* JADX INFO: renamed from: v */
    public static C3759o m236v(C3759o c3759o, C3759o c3759o2, int i10) {
        float f8 = c3759o2.f11214a;
        float f10 = c3759o.f11214a;
        float f11 = i10 + 1;
        float f12 = c3759o2.f11215b;
        float f13 = c3759o.f11215b;
        return new C3759o(f10 + ((f8 - f10) / f11), f13 + ((f12 - f13) / f11));
    }

    @Override // p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public void mo237a() {
        switch (this.f190b) {
            case 12:
                ((InterfaceC3584a) this.f191c).mo237a();
                break;
            case 16:
                ((InterfaceC3589f) this.f191c).mo237a();
                break;
            default:
                ((InterfaceC3589f) this.f191c).mo237a();
                break;
        }
    }

    @Override // p242x7.InterfaceC3596m, p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public void mo238b(InterfaceC3762a interfaceC3762a) {
        switch (this.f190b) {
            case 10:
                EnumC1011a.m1217c((C1783h) this.f191c, interfaceC3762a);
                break;
            case 12:
                ((C1014d) this.f192d).m1225d(interfaceC3762a);
                break;
            case 16:
                EnumC1011a.m1218d((C1792q) this.f192d, interfaceC3762a);
                break;
            case 17:
                EnumC1011a.m1218d((C1783h) this.f192d, interfaceC3762a);
                break;
            case 28:
                ((InterfaceC3596m) this.f191c).mo238b(interfaceC3762a);
                break;
            default:
                ((InterfaceC3596m) this.f191c).mo238b(interfaceC3762a);
                break;
        }
    }

    @Override // p242x7.InterfaceC3596m, p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public void mo239c(Object obj) {
        switch (this.f190b) {
            case 10:
                ((InterfaceC3596m) this.f192d).mo239c(obj);
                break;
            case 16:
                ((InterfaceC3589f) this.f191c).mo239c(obj);
                break;
            case 17:
                ((InterfaceC3589f) this.f191c).mo239c(obj);
                break;
            case 28:
                ((InterfaceC3596m) this.f191c).mo239c(obj);
                break;
            default:
                InterfaceC3596m interfaceC3596m = (InterfaceC3596m) this.f191c;
                try {
                    ((InterfaceC0928b) ((C2057a) this.f192d).f5621c).accept(obj);
                    interfaceC3596m.mo239c(obj);
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    interfaceC3596m.onError(th);
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: d */
    public void mo240d(Exception exc) {
        C1895g0 c1895g0 = (C1895g0) this.f192d;
        C2456q c2456q = (C2456q) this.f191c;
        C2456q c2456q2 = c1895g0.f4909g;
        if (c2456q2 == null || c2456q2 != c2456q) {
            return;
        }
        C1895g0 c1895g1 = (C1895g0) this.f192d;
        C2456q c2456q3 = (C2456q) this.f191c;
        RunnableC1899k runnableC1899k = c1895g1.f4905c;
        C1890e c1890e = c1895g1.f4910h;
        InterfaceC1044e interfaceC1044e = c2456q3.f6651c;
        runnableC1899k.mo2936b(c1890e, exc, interfaceC1044e, interfaceC1044e.mo1322c());
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0046  */
    /* JADX WARN: Code duplicated, block: B:20:0x0059  */
    /* JADX INFO: renamed from: e */
    public CctBackendFactory m241e(String str) {
        Bundle bundle;
        Map map;
        Object obj;
        if (((Map) this.f192d) == null) {
            Context context = (Context) this.f191c;
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
                    this.f192d = map;
                }
            } catch (PackageManager.NameNotFoundException unused) {
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
            this.f192d = map;
        }
        String str4 = (String) ((Map) this.f192d).get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (CctBackendFactory) Class.forName(str4).asSubclass(CctBackendFactory.class).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            Log.w("BackendRegistry", "Class " + str4 + " is not found.", e);
            return null;
        } catch (IllegalAccessException e6) {
            Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e6);
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

    @Override // com.bumptech.glide.load.data.InterfaceC1043d
    /* JADX INFO: renamed from: f */
    public void mo242f(Object obj) {
        C1895g0 c1895g0 = (C1895g0) this.f192d;
        C2456q c2456q = (C2456q) this.f191c;
        C2456q c2456q2 = c1895g0.f4909g;
        if (c2456q2 == null || c2456q2 != c2456q) {
            return;
        }
        C1895g0 c1895g1 = (C1895g0) this.f192d;
        C2456q c2456q3 = (C2456q) this.f191c;
        C1901m c1901m = c1895g1.f4904b.f4926p;
        if (obj != null && c1901m.m2960a(c2456q3.f6651c.mo1322c())) {
            c1895g1.f4908f = obj;
            c1895g1.f4905c.m2954l(2);
        } else {
            RunnableC1899k runnableC1899k = c1895g1.f4905c;
            InterfaceC1643e interfaceC1643e = c2456q3.f6649a;
            InterfaceC1044e interfaceC1044e = c2456q3.f6651c;
            runnableC1899k.mo2935a(interfaceC1643e, obj, interfaceC1044e, interfaceC1044e.mo1322c(), c1895g1.f4910h);
        }
    }

    /* JADX INFO: renamed from: g */
    public InterfaceC1506b m243g(KClass kClass) {
        Object objPutIfAbsent;
        switch (this.f190b) {
            case 18:
                Object obj = ((C1861t) this.f192d).get(JvmClassMappingKt.getJavaClass(kClass));
                obj.getClass();
                C1868v0 c1868v0 = (C1868v0) obj;
                Object objM2928a = c1868v0.f4841a.get();
                if (objM2928a == null) {
                    objM2928a = c1868v0.m2928a(new C1855r(0, this, kClass));
                }
                return ((C1834k) objM2928a).f4785a;
            default:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f192d;
                Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
                Object c1834k = concurrentHashMap.get(javaClass);
                if (c1834k == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(javaClass, (c1834k = new C1834k((InterfaceC1506b) ((Function1) this.f191c).invoke(kClass))))) != null) {
                    c1834k = objPutIfAbsent;
                }
                return ((C1834k) c1834k).f4785a;
        }
    }

    @Override // p204t8.InterfaceC3268a
    public Object get() {
        switch (this.f190b) {
            case 7:
                return new C1456d((Context) ((C1496c) this.f191c).f3693c, (C0023h) ((C3105c) this.f192d).get());
            default:
                AbstractC2500d c2506f = (AbstractC2500d) ((C1619a) this.f191c).get();
                Iterator it = Arrays.asList(new C3310g((C2547v0) ((C3105c) this.f192d).get())).iterator();
                while (it.hasNext()) {
                    c2506f = new C2506f(c2506f, (C3310g) it.next());
                }
                return new C3655j(c2506f, C2497c.f6890h.m3886c(AbstractC3308e.f9692c, EnumC3305b.f9682b));
        }
    }

    /* JADX INFO: renamed from: h */
    public Object m244h(InterfaceC2021i interfaceC2021i) {
        HashMap map = (HashMap) this.f192d;
        C2016d c2016d = (C2016d) map.get(interfaceC2021i);
        if (c2016d == null) {
            c2016d = new C2016d(interfaceC2021i);
            map.put(interfaceC2021i, c2016d);
        } else {
            interfaceC2021i.mo3102a();
        }
        C2016d c2016d2 = c2016d.f5502d;
        c2016d2.f5501c = c2016d.f5501c;
        c2016d.f5501c.f5502d = c2016d2;
        C2016d c2016d3 = (C2016d) this.f191c;
        c2016d.f5502d = c2016d3;
        C2016d c2016d4 = c2016d3.f5501c;
        c2016d.f5501c = c2016d4;
        c2016d4.f5502d = c2016d;
        c2016d.f5502d.f5501c = c2016d;
        ArrayList arrayList = c2016d.f5500b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return c2016d.f5500b.remove(size - 1);
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    public Object m245i(KClass kClass, ArrayList arrayList) {
        Object objM6088constructorimpl;
        Object objM6088constructorimpl2;
        Object objPutIfAbsent;
        int i10 = 0;
        switch (this.f190b) {
            case 19:
                Object obj = ((C1861t) this.f192d).get(JvmClassMappingKt.getJavaClass(kClass));
                obj.getClass();
                C1868v0 c1868v0 = (C1868v0) obj;
                Object objM2928a = c1868v0.f4841a.get();
                if (objM2928a == null) {
                    objM2928a = c1868v0.m2928a(new C1858s(0));
                }
                C1809c1 c1809c1 = (C1809c1) objM2928a;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj2 = arrayList.get(i10);
                    i10++;
                    arrayList2.add(new C1841m0((KType) obj2));
                }
                ConcurrentHashMap concurrentHashMap = c1809c1.f4735a;
                Object obj3 = concurrentHashMap.get(arrayList2);
                if (obj3 == null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM6088constructorimpl = Result.m6088constructorimpl((InterfaceC1506b) ((Function2) this.f191c).invoke(kClass, arrayList));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM6088constructorimpl = Result.m6088constructorimpl(ResultKt.createFailure(th));
                    }
                    Result resultM6087boximpl = Result.m6087boximpl(objM6088constructorimpl);
                    Object objPutIfAbsent2 = concurrentHashMap.putIfAbsent(arrayList2, resultM6087boximpl);
                    obj3 = objPutIfAbsent2 == null ? resultM6087boximpl : objPutIfAbsent2;
                    break;
                }
                obj3.getClass();
                return ((Result) obj3).getValue();
            default:
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) this.f192d;
                Class javaClass = JvmClassMappingKt.getJavaClass(kClass);
                Object c1809c2 = concurrentHashMap2.get(javaClass);
                if (c1809c2 == null && (objPutIfAbsent = concurrentHashMap2.putIfAbsent(javaClass, (c1809c2 = new C1809c1()))) != null) {
                    c1809c2 = objPutIfAbsent;
                }
                C1809c1 c1809c3 = (C1809c1) c1809c2;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                int size2 = arrayList.size();
                while (i10 < size2) {
                    Object obj4 = arrayList.get(i10);
                    i10++;
                    arrayList3.add(new C1841m0((KType) obj4));
                }
                ConcurrentHashMap concurrentHashMap3 = c1809c3.f4735a;
                Object obj5 = concurrentHashMap3.get(arrayList3);
                if (obj5 == null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM6088constructorimpl2 = Result.m6088constructorimpl((InterfaceC1506b) ((Function2) this.f191c).invoke(kClass, arrayList));
                    } catch (Throwable th2) {
                        Result.Companion companion4 = Result.INSTANCE;
                        objM6088constructorimpl2 = Result.m6088constructorimpl(ResultKt.createFailure(th2));
                    }
                    Result resultM6087boximpl2 = Result.m6087boximpl(objM6088constructorimpl2);
                    Object objPutIfAbsent3 = concurrentHashMap3.putIfAbsent(arrayList3, resultM6087boximpl2);
                    obj5 = objPutIfAbsent3 == null ? resultM6087boximpl2 : objPutIfAbsent3;
                    break;
                }
                obj5.getClass();
                return ((Result) obj5).getValue();
        }
    }

    /* JADX INFO: renamed from: k */
    public synchronized String m246k(long j10, String str) {
        C1997b c1997bM3088a;
        String strM2421h;
        try {
            c1997bM3088a = C1997b.m3088a(str);
            long j11 = c1997bM3088a.f5440c;
            if (j11 > j10 && j11 <= 150000 + j10) {
                C2455p c2455p = (C2455p) this.f191c;
                String string = ((SharedPreferences) c2455p.f6648c).getString(c1997bM3088a.f5438a, null);
                if (string != null) {
                    strM2421h = new JSONObject(string).getString(AbstractC1387m.m2421h(new byte[]{60, 38, 106, -82, 11, 39}, new byte[]{79, 82, 11, -38, 126, 84, -30, 75}));
                } else if (((C2455p) this.f191c).m3810g(j10, c1997bM3088a.f5438a, m235r(c1997bM3088a, AbstractC1387m.m2421h(new byte[]{-53, -78, -60, 103, -118, 72, -70}, new byte[]{-66, -36, -81, 9, -27, 63, -44, -109})))) {
                    try {
                        strM2421h = ((C3623a) this.f192d).m5796b(c1997bM3088a);
                    } catch (Exception unused) {
                        strM2421h = AbstractC1387m.m2421h(new byte[]{63, -117, 98, -110, 2, -17, -57}, new byte[]{74, -27, 9, -4, 109, -104, -87, -1});
                    }
                    C2455p c2455p2 = (C2455p) this.f191c;
                    ((SharedPreferences) c2455p2.f6648c).edit().putString(c1997bM3088a.f5438a, m235r(c1997bM3088a, strM2421h)).commit();
                } else {
                    strM2421h = AbstractC1387m.m2421h(new byte[]{47, 13, -8, -126, -11, 57, 76, 89, 57, 11, -27, -97, -26}, new byte[]{92, 121, -105, -16, -108, 94, 41, 6});
                }
            } else {
                strM2421h = AbstractC1387m.m2421h(new byte[]{-99, 39, -54, -85, -18, 4, -115}, new byte[]{-8, 95, -70, -62, -100, 97, -23, 105});
            }
        } catch (Throwable th) {
            throw th;
        }
        return C1997b.m3089b(c1997bM3088a.f5438a, strM2421h);
    }

    /* JADX INFO: renamed from: l */
    public boolean m247l(AbstractC0893d abstractC0893d) {
        return false;
    }

    /* JADX INFO: renamed from: m */
    public boolean m248m(C3759o c3759o) {
        float f8 = c3759o.f11214a;
        if (f8 < 0.0f) {
            return false;
        }
        C1578b c1578b = (C1578b) this.f191c;
        if (f8 >= c1578b.f3900b) {
            return false;
        }
        float f10 = c3759o.f11215b;
        return f10 > 0.0f && f10 < ((float) c1578b.f3901c);
    }

    /* JADX INFO: renamed from: o */
    public void m249o(ArrayList arrayList) throws C1585b {
        C1421s3 c1421s3 = new C1421s3();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            int i11 = 2;
            C1584a c1584a = (C1584a) C1584a.m2669a((CharSequence) obj).orElseThrow(new C0489a(i11));
            String str = c1584a.f3934a;
            String str2 = c1584a.f3935b;
            String lowerCase = str.toLowerCase(Locale.ENGLISH);
            lowerCase.getClass();
            switch (lowerCase.hashCode()) {
                case -1371213673:
                    i11 = lowerCase.equals("presharedkey") ? 0 : -1;
                    break;
                case -1336650364:
                    i11 = lowerCase.equals("allowedips") ? 1 : -1;
                    break;
                case 1446930262:
                    if (!lowerCase.equals("publickey")) {
                        i11 = -1;
                    }
                    break;
                case 1741102485:
                    i11 = lowerCase.equals("endpoint") ? 3 : -1;
                    break;
                case 2043986865:
                    i11 = lowerCase.equals("persistentkeepalive") ? 4 : -1;
                    break;
                default:
                    i11 = -1;
                    break;
            }
            switch (i11) {
                case 0:
                    try {
                        c1421s3.f3416f = Optional.of(C1623b.m2712c(str2));
                    } catch (C1624c e) {
                        throw new C1585b(e);
                    }
                    break;
                case 1:
                    try {
                        for (String str3 : C1584a.f3933d.split(str2)) {
                            ((LinkedHashSet) c1421s3.f3413c).add(C1589f.m2674a(str3));
                        }
                    } catch (C1592i e6) {
                        throw new C1585b(e6);
                    }
                    break;
                case 2:
                    try {
                        c1421s3.f3417g = C1623b.m2712c(str2);
                    } catch (C1624c e10) {
                        throw new C1585b(e10);
                    }
                    break;
                case 3:
                    try {
                        c1421s3.f3414d = Optional.of(C1588e.m2672b(str2));
                    } catch (C1592i e11) {
                        throw new C1585b(e11);
                    }
                    break;
                case 4:
                    try {
                        int i12 = Integer.parseInt(str2);
                        if (i12 < 0 || i12 > 65535) {
                            String.valueOf(i12);
                            throw new C1585b(null);
                        }
                        c1421s3.f3415e = i12 == 0 ? Optional.empty() : Optional.of(Integer.valueOf(i12));
                    } catch (NumberFormatException e12) {
                        throw new C1585b(e12);
                    }
                    break;
                default:
                    throw new C1585b(null);
            }
        }
        if (((C1623b) c1421s3.f3417g) == null) {
            throw new C1585b(null);
        }
        ((ArrayList) this.f191c).add(new C1593j(c1421s3));
    }

    @Override // p242x7.InterfaceC3596m, p242x7.InterfaceC3584a, p242x7.InterfaceC3589f
    public void onError(Throwable th) {
        switch (this.f190b) {
            case 10:
                ((InterfaceC3596m) this.f192d).onError(th);
                return;
            case 12:
                InterfaceC3584a interfaceC3584a = (InterfaceC3584a) this.f191c;
                try {
                    ((C1014d) this.f192d).m1225d(EnumC1012b.f1015b);
                    interfaceC3584a.mo237a();
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    AbstractC0000a.m18s(th2);
                    NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
                    nullPointerException.initCause(th2);
                    throw nullPointerException;
                }
            case 16:
                ((InterfaceC3589f) this.f191c).onError(th);
                return;
            case 17:
                ((InterfaceC3589f) this.f191c).onError(th);
                return;
            case 28:
                try {
                    ((C1357g) ((C2057a) this.f192d).f5621c).accept(th);
                    break;
                } catch (Throwable th3) {
                    AbstractC1031d.m1292v(th3);
                    th = new C0031c(th, th3);
                }
                ((InterfaceC3596m) this.f191c).onError(th);
                return;
            default:
                ((InterfaceC3596m) this.f191c).onError(th);
                return;
        }
    }

    /* JADX INFO: renamed from: p */
    public void m250p(AbstractC0893d abstractC0893d) {
        synchronized (this.f191c) {
            try {
                if (m247l(abstractC0893d)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public void m251q(InterfaceC2021i interfaceC2021i, Object obj) {
        HashMap map = (HashMap) this.f192d;
        C2016d c2016d = (C2016d) map.get(interfaceC2021i);
        if (c2016d == null) {
            c2016d = new C2016d(interfaceC2021i);
            c2016d.f5502d = c2016d;
            C2016d c2016d2 = (C2016d) this.f191c;
            c2016d.f5502d = c2016d2.f5502d;
            c2016d.f5501c = c2016d2;
            c2016d2.f5502d = c2016d;
            c2016d.f5502d.f5501c = c2016d;
            map.put(interfaceC2021i, c2016d);
        } else {
            interfaceC2021i.mo3102a();
        }
        if (c2016d.f5500b == null) {
            c2016d.f5500b = new ArrayList();
        }
        c2016d.f5500b.add(obj);
    }

    /* JADX INFO: renamed from: s */
    public Object m252s() {
        C2016d c2016d = (C2016d) this.f191c;
        C2016d c2016d2 = c2016d.f5502d;
        while (true) {
            boolean zEquals = c2016d2.equals(c2016d);
            Object obj = c2016d2.f5499a;
            if (zEquals) {
                return null;
            }
            ArrayList arrayList = c2016d2.f5500b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? c2016d2.f5500b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            C2016d c2016d3 = c2016d2.f5502d;
            c2016d3.f5501c = c2016d2.f5501c;
            c2016d2.f5501c.f5502d = c2016d3;
            ((HashMap) this.f192d).remove(obj);
            ((InterfaceC2021i) obj).mo3102a();
            c2016d2 = c2016d2.f5502d;
        }
    }

    /* JADX INFO: renamed from: t */
    public void m253t(AbstractC0893d abstractC0893d) {
        synchronized (this.f191c) {
            try {
                if (m247l(abstractC0893d)) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        switch (this.f190b) {
            case 25:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                C2016d c2016d = (C2016d) this.f191c;
                C2016d c2016d2 = c2016d.f5501c;
                boolean z9 = false;
                while (!c2016d2.equals(c2016d)) {
                    sb.append('{');
                    sb.append(c2016d2.f5499a);
                    sb.append(':');
                    ArrayList arrayList = c2016d2.f5500b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    c2016d2 = c2016d2.f5501c;
                    z9 = true;
                }
                if (z9) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* JADX INFO: renamed from: u */
    public void m254u(AbstractC0901l abstractC0901l) {
        Handler handler = (Handler) this.f192d;
        abstractC0901l.getClass();
        handler.removeCallbacksAndMessages(abstractC0901l);
        handler.sendMessageDelayed(Message.obtain(handler, 0, abstractC0901l), 2750);
    }

    /* JADX INFO: renamed from: w */
    public int m255w(C3759o c3759o, C3759o c3759o2) {
        C1578b c1578b = (C1578b) this.f191c;
        int i10 = (int) c3759o.f11214a;
        int i11 = (int) c3759o.f11215b;
        int i12 = (int) c3759o2.f11214a;
        int i13 = (int) c3759o2.f11215b;
        int i14 = 0;
        boolean z9 = Math.abs(i13 - i11) > Math.abs(i12 - i10);
        if (z9) {
            i10 = i11;
            i11 = i10;
            i12 = i13;
            i13 = i12;
        }
        int iAbs = Math.abs(i12 - i10);
        int iAbs2 = Math.abs(i13 - i11);
        int i15 = (-iAbs) / 2;
        int i16 = i11 < i13 ? 1 : -1;
        int i17 = i10 >= i12 ? -1 : 1;
        boolean zM2658b = c1578b.m2658b(z9 ? i11 : i10, z9 ? i10 : i11);
        while (i10 != i12) {
            boolean zM2658b2 = c1578b.m2658b(z9 ? i11 : i10, z9 ? i10 : i11);
            if (zM2658b2 != zM2658b) {
                i14++;
                zM2658b = zM2658b2;
            }
            i15 += iAbs2;
            if (i15 > 0) {
                if (i11 == i13) {
                    return i14;
                }
                i11 += i16;
                i15 -= iAbs;
            }
            i10 += i17;
        }
        return i14;
    }

    public /* synthetic */ C0090h(int i10, boolean z9) {
        this.f190b = i10;
    }

    public /* synthetic */ C0090h(Object obj, Object obj2, Object obj3, int i10) {
        this.f190b = i10;
        this.f191c = obj2;
        this.f192d = obj3;
    }

    public /* synthetic */ C0090h(Object obj, Object obj2, boolean z9, int i10) {
        this.f190b = i10;
        this.f191c = obj;
        this.f192d = obj2;
    }

    public C0090h(C1623b c1623b) {
        this.f190b = 11;
        this.f191c = c1623b;
        byte[] bArr = new byte[32];
        byte[] bArr2 = c1623b.f4118a;
        byte[] bArrCopyOf = Arrays.copyOf(bArr2, bArr2.length);
        C1622a c1622a = new C1622a();
        int[] iArr = c1622a.f4116o;
        int[] iArr2 = c1622a.f4117p;
        int[] iArr3 = c1622a.f4114m;
        int[] iArr4 = c1622a.f4113l;
        try {
            Arrays.fill(iArr4, 0);
            iArr4[0] = 9;
            Arrays.fill(iArr3, 0);
            iArr3[0] = 1;
            Arrays.fill(iArr, 0);
            System.arraycopy(iArr4, 0, c1622a.f4115n, 0, iArr4.length);
            Arrays.fill(iArr2, 0);
            iArr2[0] = 1;
            c1622a.m2705d(bArrCopyOf);
            c1622a.m2707f(iArr2, iArr);
            c1622a.m2706e(iArr3, iArr3, iArr2);
            for (int i10 = 0; i10 < 32; i10++) {
                int i11 = i10 * 8;
                int i12 = i11 % 26;
                int i13 = i11 / 26;
                if (i12 <= 18) {
                    bArr[i10] = (byte) (iArr3[i13] >> i12);
                } else {
                    bArr[i10] = (byte) ((iArr3[i13 + 1] << (26 - i12)) | (iArr3[i13] >> i12));
                }
            }
            c1622a.m2704c();
            this.f192d = new C1623b(bArr);
        } catch (Throwable th) {
            c1622a.m2704c();
            throw th;
        }
    }

    public C0090h(C1578b c1578b) {
        this.f190b = 27;
        this.f191c = c1578b;
        this.f192d = new C1621a(c1578b);
    }

    public C0090h(C3253n c3253n, InterfaceC0903b interfaceC0903b) {
        this.f190b = 14;
        C1541b0 c1541b0 = new C1541b0();
        c1541b0.f3794a = c3253n;
        c3253n.m5188a(new C0566h(11, c1541b0));
        this.f191c = c1541b0;
        this.f192d = interfaceC0903b;
    }

    public C0090h(int i10, Function1 function1) {
        this.f190b = i10;
        function1.getClass();
        switch (i10) {
            case 20:
                this.f191c = function1;
                this.f192d = new ConcurrentHashMap();
                break;
            default:
                this.f191c = function1;
                this.f192d = new C1861t();
                break;
        }
    }

    public /* synthetic */ C0090h(int i10, Object obj, Object obj2) {
        this.f190b = i10;
        this.f192d = obj;
        this.f191c = obj2;
    }

    public C0090h(Context context) {
        this.f190b = 6;
        this.f192d = null;
        this.f191c = context;
    }

    public C0090h(int i10, Function2 function2) {
        this.f190b = i10;
        function2.getClass();
        switch (i10) {
            case 21:
                this.f191c = function2;
                this.f192d = new ConcurrentHashMap();
                break;
            default:
                this.f191c = function2;
                this.f192d = new C1861t();
                break;
        }
    }
}
