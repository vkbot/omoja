package com.bumptech.glide;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.manager.t;
import j.r;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile b f547i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile boolean f548j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k.b f549b;
    public final l.f c;
    public final e d;
    public final k.g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.manager.m f550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final c5.e f551g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f552h = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, r rVar, l.f fVar, k.b bVar, k.g gVar, com.bumptech.glide.manager.m mVar, c5.e eVar, p2.e eVar2, ArrayMap arrayMap, List list, ArrayList arrayList, o4.b bVar2, r5.c cVar) {
        this.f549b = bVar;
        this.e = gVar;
        this.c = fVar;
        this.f550f = mVar;
        this.f551g = eVar;
        this.d = new e(context, gVar, new t(this, arrayList, bVar2), new w7.c(19), eVar2, arrayMap, list, rVar, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f547i == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
            } catch (InstantiationException e6) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e6);
            } catch (NoSuchMethodException e9) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e9);
            } catch (InvocationTargetException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            }
            synchronized (b.class) {
                if (f547i == null) {
                    if (f548j) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f548j = true;
                    try {
                        b(context, generatedAppGlideModule);
                        f548j = false;
                    } catch (Throwable th) {
                        f548j = false;
                        throw th;
                    }
                }
            }
        }
        return f547i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        ArrayMap arrayMap = new ArrayMap();
        f fVar = new f(0);
        p2.e eVar = new p2.e(1);
        Context applicationContext = context.getApplicationContext();
        List list = Collections.EMPTY_LIST;
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        e3.d.o(str);
                        throw null;
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager$NameNotFoundException e) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            new HashSet();
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw g.b(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw g.b(it2);
            }
        }
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            throw g.b(it3);
        }
        m.b bVar = new m.b();
        if (m.e.c == 0) {
            m.e.c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i9 = m.e.c;
        if (TextUtils.isEmpty("source")) {
            j1.i.k("Name must be non-null and non-empty, but given: source");
            return;
        }
        PriorityBlockingQueue priorityBlockingQueue = new PriorityBlockingQueue();
        m.c cVar = new m.c(bVar, "source", false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        m.e eVar2 = new m.e(new ThreadPoolExecutor(i9, i9, 0L, timeUnit, priorityBlockingQueue, cVar));
        m.b bVar2 = new m.b();
        if (TextUtils.isEmpty("disk-cache")) {
            j1.i.k("Name must be non-null and non-empty, but given: disk-cache");
            return;
        }
        m.e eVar3 = new m.e(new ThreadPoolExecutor(1, 1, 0L, timeUnit, new PriorityBlockingQueue(), new m.c(bVar2, "disk-cache", true)));
        if (m.e.c == 0) {
            m.e.c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i10 = m.e.c >= 4 ? 2 : 1;
        m.b bVar3 = new m.b();
        if (TextUtils.isEmpty("animation")) {
            j1.i.k("Name must be non-null and non-empty, but given: animation");
            return;
        }
        m.e eVar4 = new m.e(new ThreadPoolExecutor(i10, i10, 0L, timeUnit, new PriorityBlockingQueue(), new m.c(bVar3, "animation", true)));
        l.g gVar = new l.g(applicationContext);
        l.h hVar = new l.h();
        Context context2 = gVar.f3248a;
        float f8 = gVar.d;
        ActivityManager activityManager = gVar.f3249b;
        int i11 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        hVar.c = i11;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) gVar.c.c;
        float f9 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int iRound2 = Math.round(f9 * f8);
        int iRound3 = Math.round(f9 * 2.0f);
        int i12 = iRound - i11;
        int i13 = iRound3 + iRound2;
        if (i13 <= i12) {
            hVar.f3251b = iRound3;
            hVar.f3250a = iRound2;
        } else {
            float f10 = i12 / (f8 + 2.0f);
            hVar.f3251b = Math.round(2.0f * f10);
            hVar.f3250a = Math.round(f10 * f8);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context2, hVar.f3251b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context2, hVar.f3250a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context2, i11));
            sb.append(", memory class limited? ");
            sb.append(i13 > iRound);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context2, iRound));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
        c5.e eVar5 = new c5.e(2);
        int i14 = hVar.f3250a;
        k.b hVar2 = i14 > 0 ? new k.h(i14) : new c5.e(13);
        k.g gVar2 = new k.g(hVar.c);
        l.f fVar2 = new l.f(hVar.f3251b);
        b bVar4 = new b(applicationContext, new r(fVar2, new r5.c(applicationContext), eVar3, eVar2, new m.e(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 10000L, timeUnit, new SynchronousQueue(), new m.c(new m.b(), "source-unlimited", false))), eVar4), fVar2, hVar2, gVar2, new com.bumptech.glide.manager.m(), eVar5, eVar, arrayMap, Collections.EMPTY_LIST, arrayList, generatedAppGlideModule, new r5.c(fVar));
        applicationContext.registerComponentCallbacks(bVar4);
        f547i = bVar4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static p c(Fragment fragment) {
        Context context = fragment.getContext();
        c0.g.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        com.bumptech.glide.manager.m mVar = a(context).f550f;
        mVar.getClass();
        c0.g.c(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        char[] cArr = c0.p.f411a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return mVar.b(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            mVar.c.b(fragment.getActivity());
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Context context2 = fragment.getContext();
        return mVar.d.a(context2, a(context2.getApplicationContext()), fragment.getLifecycle(), childFragmentManager, fragment.isVisible());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        c0.p.a();
        this.c.e(0L);
        this.f549b.n();
        k.g gVar = this.e;
        synchronized (gVar) {
            gVar.b(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i9) {
        long j9;
        c0.p.a();
        synchronized (this.f552h) {
            try {
                ArrayList arrayList = this.f552h;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((p) obj).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        l.f fVar = this.c;
        fVar.getClass();
        if (i9 >= 40) {
            fVar.e(0L);
        } else if (i9 >= 20 || i9 == 15) {
            synchronized (fVar) {
                j9 = fVar.f406b;
            }
            fVar.e(j9 / 2);
        }
        this.f549b.l(i9);
        k.g gVar = this.e;
        synchronized (gVar) {
            try {
                if (i9 >= 40) {
                    synchronized (gVar) {
                        gVar.b(0);
                    }
                } else if (i9 >= 20 || i9 == 15) {
                    gVar.b(gVar.e / 2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
