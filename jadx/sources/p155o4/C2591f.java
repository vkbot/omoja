package p155o4;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p030c5.C0987b;
import p030c5.C0989d;
import p099j1.C1929i;
import p114k5.InterfaceC2050b;
import p120l.C2187d;
import p126l5.C2207b;
import p174q2.ComponentCallbacks2C3057a;
import p181r2.AbstractC3093a;
import p191s2.AbstractC3185a;
import p200t4.C3240a;
import p200t4.C3244e;
import p200t4.C3251l;
import p211u4.EnumC3297j;
import p232w7.C3537c;

/* JADX INFO: renamed from: o4.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2591f {

    /* JADX INFO: renamed from: j */
    public static final Object f7206j = new Object();

    /* JADX INFO: renamed from: k */
    public static final ArrayMap f7207k = new ArrayMap();

    /* JADX INFO: renamed from: a */
    public final Context f7208a;

    /* JADX INFO: renamed from: b */
    public final String f7209b;

    /* JADX INFO: renamed from: c */
    public final C2593h f7210c;

    /* JADX INFO: renamed from: d */
    public final C3244e f7211d;

    /* JADX INFO: renamed from: g */
    public final C3251l f7214g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC2050b f7215h;

    /* JADX INFO: renamed from: e */
    public final AtomicBoolean f7212e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f */
    public final AtomicBoolean f7213f = new AtomicBoolean();

    /* JADX INFO: renamed from: i */
    public final CopyOnWriteArrayList f7216i = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.List] */
    public C2591f(Context context, String str, C2593h c2593h) {
        ?? arrayList;
        new CopyOnWriteArrayList();
        this.f7208a = context;
        Bundle bundle = null;
        if (TextUtils.isEmpty(str)) {
            C1929i.m3029k("Given String is empty or null");
            throw null;
        }
        this.f7209b = str;
        this.f7210c = c2593h;
        C2586a c2586a = FirebaseInitProvider.f2621b;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", ComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new C2207b(1, (String) it.next()));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        EnumC3297j enumC3297j = EnumC3297j.f9650b;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        int i10 = 2;
        arrayList3.add(new C2207b(i10, new FirebaseCommonRegistrar()));
        arrayList3.add(new C2207b(i10, new ExecutorsRegistrar()));
        arrayList4.add(C3240a.m5182c(context, Context.class, new Class[0]));
        arrayList4.add(C3240a.m5182c(this, C2591f.class, new Class[0]));
        arrayList4.add(C3240a.m5182c(c2593h, C2593h.class, new Class[0]));
        C3537c c3537c = new C3537c(17);
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.f2622c.get()) {
            arrayList4.add(C3240a.m5182c(c2586a, C2586a.class, new Class[0]));
        }
        C3244e c3244e = new C3244e(arrayList3, arrayList4, c3537c);
        this.f7211d = c3244e;
        Trace.endSection();
        this.f7214g = new C3251l(new C0987b(this, context));
        this.f7215h = c3244e.mo2241c(C0989d.class);
        C2588c c2588c = new C2588c(this);
        m4064a();
        if (this.f7212e.get()) {
            ComponentCallbacks2C3057a.f8674f.f8675b.get();
        }
        this.f7216i.add(c2588c);
        Trace.endSection();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static C2591f m4061b() {
        C2591f c2591f;
        synchronized (f7206j) {
            try {
                c2591f = (C2591f) f7207k.get("[DEFAULT]");
                if (c2591f == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + AbstractC3185a.m5111a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((C0989d) c2591f.f7215h.get()).m1132b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2591f;
    }

    /* JADX INFO: renamed from: e */
    public static C2591f m4062e(Context context) {
        synchronized (f7206j) {
            try {
                if (f7207k.containsKey("[DEFAULT]")) {
                    return m4061b();
                }
                C2593h c2593hM4067a = C2593h.m4067a(context);
                if (c2593hM4067a == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return m4063f(context, c2593hM4067a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public static C2591f m4063f(Context context, C2593h c2593h) {
        C2591f c2591f;
        AtomicReference atomicReference = C2589d.f7203a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = C2589d.f7203a;
            if (atomicReference2.get() == null) {
                C2589d c2589d = new C2589d();
                do {
                    if (atomicReference2.compareAndSet(null, c2589d)) {
                        ComponentCallbacks2C3057a componentCallbacks2C3057a = ComponentCallbacks2C3057a.f8674f;
                        synchronized (componentCallbacks2C3057a) {
                            try {
                                if (!componentCallbacks2C3057a.f8678e) {
                                    application.registerActivityLifecycleCallbacks(componentCallbacks2C3057a);
                                    application.registerComponentCallbacks(componentCallbacks2C3057a);
                                    componentCallbacks2C3057a.f8678e = true;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        synchronized (componentCallbacks2C3057a) {
                            componentCallbacks2C3057a.f8677d.add(c2589d);
                        }
                        break;
                    }
                } while (atomicReference2.get() == null);
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f7206j) {
            ArrayMap arrayMap = f7207k;
            String str = "FirebaseApp name [DEFAULT] already exists!";
            if (arrayMap.containsKey("[DEFAULT]")) {
                throw new IllegalStateException(str);
            }
            AbstractC3093a.m4927c(context, "Application context cannot be null.");
            c2591f = new C2591f(context, "[DEFAULT]", c2593h);
            arrayMap.put("[DEFAULT]", c2591f);
        }
        c2591f.m4066d();
        return c2591f;
    }

    /* JADX INFO: renamed from: a */
    public final void m4064a() {
        if (this.f7213f.get()) {
            C1929i.m3030l("FirebaseApp was deleted");
        }
    }

    /* JADX INFO: renamed from: c */
    public final String m4065c() {
        StringBuilder sb = new StringBuilder();
        m4064a();
        byte[] bytes = this.f7209b.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        m4064a();
        byte[] bytes2 = this.f7210c.f7223b.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    /* JADX INFO: renamed from: d */
    public final void m4066d() {
        HashMap map;
        if (!UserManagerCompat.isUserUnlocked(this.f7208a)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            m4064a();
            sb.append(this.f7209b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.f7208a;
            AtomicReference atomicReference = C2590e.f7204b;
            if (atomicReference.get() == null) {
                C2590e c2590e = new C2590e(context);
                while (!atomicReference.compareAndSet(null, c2590e)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(c2590e, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        m4064a();
        sb2.append(this.f7209b);
        Log.i("FirebaseApp", sb2.toString());
        C3244e c3244e = this.f7211d;
        m4064a();
        boolean zEquals = "[DEFAULT]".equals(this.f7209b);
        AtomicReference atomicReference2 = c3244e.f9522f;
        Boolean boolValueOf = Boolean.valueOf(zEquals);
        while (!atomicReference2.compareAndSet(null, boolValueOf)) {
            if (atomicReference2.get() != null) {
                ((C0989d) this.f7215h.get()).m1132b();
            }
        }
        synchronized (c3244e) {
            map = new HashMap(c3244e.f9517a);
        }
        c3244e.m5183i(map, zEquals);
        ((C0989d) this.f7215h.get()).m1132b();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2591f)) {
            return false;
        }
        C2591f c2591f = (C2591f) obj;
        c2591f.m4064a();
        return this.f7209b.equals(c2591f.f7209b);
    }

    public final int hashCode() {
        return this.f7209b.hashCode();
    }

    public final String toString() {
        C2187d c2187d = new C2187d((Object) this);
        c2187d.m3479f(this.f7209b, "name");
        c2187d.m3479f(this.f7210c, "options");
        return c2187d.toString();
    }
}
