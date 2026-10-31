package o4;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
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
import j1.i;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import t4.l;
import u4.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f4086j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ArrayMap f4087k = new ArrayMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4089b;
    public final h c;
    public final t4.e d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final l f4091g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k5.b f4092h;
    public final AtomicBoolean e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f4090f = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f4093i = new CopyOnWriteArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:44:0x00b5 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.List] */
    public f(Context context, String str, h hVar) {
        ?? arrayList;
        new CopyOnWriteArrayList();
        this.f4088a = context;
        Bundle bundle = null;
        if (TextUtils.isEmpty(str)) {
            i.k("Given String is empty or null");
            throw null;
        }
        this.f4089b = str;
        this.c = hVar;
        a aVar = FirebaseInitProvider.f1466b;
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
        } catch (PackageManager$NameNotFoundException unused) {
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
            arrayList2.add(new l5.b(1, (String) it.next()));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        j jVar = j.f5471b;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        arrayList3.add(new l5.b(2, new FirebaseCommonRegistrar()));
        arrayList3.add(new l5.b(2, new ExecutorsRegistrar()));
        arrayList4.add(t4.a.c(context, Context.class, new Class[0]));
        arrayList4.add(t4.a.c(this, f.class, new Class[0]));
        arrayList4.add(t4.a.c(hVar, h.class, new Class[0]));
        w7.c cVar = new w7.c(17);
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.c.get()) {
            arrayList4.add(t4.a.c(aVar, a.class, new Class[0]));
        }
        t4.e eVar = new t4.e(arrayList3, arrayList4, cVar);
        this.d = eVar;
        Trace.endSection();
        this.f4091g = new l(new c5.b(this, context));
        this.f4092h = eVar.c(c5.d.class);
        c cVar2 = new c(this);
        a();
        if (this.e.get()) {
            q2.a.f4868f.f4869b.get();
        }
        this.f4093i.add(cVar2);
        Trace.endSection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: V */
    /* JADX WARN: Multi-variable type inference failed */
    public static f b() {
        f fVar;
        synchronized (f4086j) {
            try {
                fVar = (f) f4087k.get("[DEFAULT]");
                if (fVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + s2.a.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((c5.d) fVar.f4092h.get()).b();
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f e(Context context) {
        synchronized (f4086j) {
            try {
                if (f4087k.containsKey("[DEFAULT]")) {
                    return b();
                }
                h hVarA = h.a(context);
                if (hVarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return f(context, hVarA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f f(Context context, h hVar) {
        f fVar;
        AtomicReference atomicReference = d.f4083a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = d.f4083a;
            if (atomicReference2.get() == null) {
                d dVar = new d();
                do {
                    if (atomicReference2.compareAndSet(null, dVar)) {
                        q2.a aVar = q2.a.f4868f;
                        synchronized (aVar) {
                            try {
                                if (!aVar.e) {
                                    application.registerActivityLifecycleCallbacks(aVar);
                                    application.registerComponentCallbacks(aVar);
                                    aVar.e = true;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        synchronized (aVar) {
                            aVar.d.add(dVar);
                        }
                        break;
                    }
                } while (atomicReference2.get() == null);
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f4086j) {
            ArrayMap arrayMap = f4087k;
            String str = "FirebaseApp name [DEFAULT] already exists!";
            if (arrayMap.containsKey("[DEFAULT]")) {
                throw new IllegalStateException(str);
            }
            r2.a.c(context, "Application context cannot be null.");
            fVar = new f(context, "[DEFAULT]", hVar);
            arrayMap.put("[DEFAULT]", fVar);
        }
        fVar.d();
        return fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        if (this.f4090f.get()) {
            i.l("FirebaseApp was deleted");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String c() {
        StringBuilder sb = new StringBuilder();
        a();
        byte[] bytes = this.f4089b.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        a();
        byte[] bytes2 = this.c.f4097b.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d() {
        HashMap map;
        if (!UserManagerCompat.isUserUnlocked(this.f4088a)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            a();
            sb.append(this.f4089b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.f4088a;
            AtomicReference atomicReference = e.f4084b;
            if (atomicReference.get() == null) {
                e eVar = new e(context);
                while (!atomicReference.compareAndSet(null, eVar)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        a();
        sb2.append(this.f4089b);
        Log.i("FirebaseApp", sb2.toString());
        t4.e eVar2 = this.d;
        a();
        boolean zEquals = "[DEFAULT]".equals(this.f4089b);
        AtomicReference atomicReference2 = eVar2.f5391f;
        Boolean boolValueOf = Boolean.valueOf(zEquals);
        while (!atomicReference2.compareAndSet(null, boolValueOf)) {
            if (atomicReference2.get() != null) {
                ((c5.d) this.f4092h.get()).b();
            }
        }
        synchronized (eVar2) {
            map = new HashMap(eVar2.f5389a);
        }
        eVar2.i(map, zEquals);
        ((c5.d) this.f4092h.get()).b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        fVar.a();
        return this.f4089b.equals(fVar.f4089b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f4089b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        l.d dVar = new l.d((Object) this);
        dVar.f(this.f4089b, "name");
        dVar.f(this.c, "options");
        return dVar.toString();
    }
}
