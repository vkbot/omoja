package com.bumptech.glide;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.manager.C1067m;
import com.bumptech.glide.manager.C1074t;
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
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p030c5.C0990e;
import p050e3.C1461d;
import p097j.C1906r;
import p099j1.C1929i;
import p108k.C2019g;
import p108k.C2020h;
import p108k.InterfaceC2014b;
import p120l.C2189f;
import p120l.C2190g;
import p120l.C2191h;
import p131m.ExecutorServiceC2261e;
import p131m.ThreadFactoryC2258b;
import p131m.ThreadFactoryC2259c;
import p155o4.AbstractC2587b;
import p165p2.C2962e;
import p184r5.C3105c;
import p232w7.C3537c;

/* JADX INFO: renamed from: com.bumptech.glide.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ComponentCallbacks2C1029b implements ComponentCallbacks2 {

    /* JADX INFO: renamed from: i */
    public static volatile ComponentCallbacks2C1029b f1065i;

    /* JADX INFO: renamed from: j */
    public static volatile boolean f1066j;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2014b f1067b;

    /* JADX INFO: renamed from: c */
    public final C2189f f1068c;

    /* JADX INFO: renamed from: d */
    public final C1032e f1069d;

    /* JADX INFO: renamed from: e */
    public final C2019g f1070e;

    /* JADX INFO: renamed from: f */
    public final C1067m f1071f;

    /* JADX INFO: renamed from: g */
    public final C0990e f1072g;

    /* JADX INFO: renamed from: h */
    public final ArrayList f1073h = new ArrayList();

    public ComponentCallbacks2C1029b(Context context, C1906r c1906r, C2189f c2189f, InterfaceC2014b interfaceC2014b, C2019g c2019g, C1067m c1067m, C0990e c0990e, C2962e c2962e, ArrayMap arrayMap, List list, ArrayList arrayList, AbstractC2587b abstractC2587b, C3105c c3105c) {
        this.f1067b = interfaceC2014b;
        this.f1070e = c2019g;
        this.f1068c = c2189f;
        this.f1071f = c1067m;
        this.f1072g = c0990e;
        this.f1069d = new C1032e(context, c2019g, new C1074t(this, arrayList, abstractC2587b), new C3537c(19), c2962e, arrayMap, list, c1906r, c3105c);
    }

    /* JADX INFO: renamed from: a */
    public static ComponentCallbacks2C1029b m1249a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f1065i == null) {
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
            } catch (NoSuchMethodException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e11);
            }
            synchronized (ComponentCallbacks2C1029b.class) {
                if (f1065i == null) {
                    if (f1066j) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f1066j = true;
                    try {
                        m1250b(context, generatedAppGlideModule);
                        f1066j = false;
                    } catch (Throwable th) {
                        f1066j = false;
                        throw th;
                    }
                }
            }
        }
        return f1065i;
    }

    /* JADX INFO: renamed from: b */
    public static void m1250b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        ArrayMap arrayMap = new ArrayMap();
        C1033f c1033f = new C1033f(0);
        C2962e c2962e = new C2962e(1);
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
                        C1461d.m2515o(str);
                        throw null;
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager.NameNotFoundException e) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            new HashSet();
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw AbstractC1034g.m1295b(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw AbstractC1034g.m1295b(it2);
            }
        }
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            throw AbstractC1034g.m1295b(it3);
        }
        ThreadFactoryC2258b threadFactoryC2258b = new ThreadFactoryC2258b();
        if (ExecutorServiceC2261e.f5918c == 0) {
            ExecutorServiceC2261e.f5918c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i10 = ExecutorServiceC2261e.f5918c;
        if (TextUtils.isEmpty("source")) {
            C1929i.m3029k("Name must be non-null and non-empty, but given: source");
            return;
        }
        PriorityBlockingQueue priorityBlockingQueue = new PriorityBlockingQueue();
        ThreadFactoryC2259c threadFactoryC2259c = new ThreadFactoryC2259c(threadFactoryC2258b, "source", false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ExecutorServiceC2261e executorServiceC2261e = new ExecutorServiceC2261e(new ThreadPoolExecutor(i10, i10, 0L, timeUnit, priorityBlockingQueue, threadFactoryC2259c));
        ThreadFactoryC2258b threadFactoryC2258b2 = new ThreadFactoryC2258b();
        if (TextUtils.isEmpty("disk-cache")) {
            C1929i.m3029k("Name must be non-null and non-empty, but given: disk-cache");
            return;
        }
        ExecutorServiceC2261e executorServiceC2261e2 = new ExecutorServiceC2261e(new ThreadPoolExecutor(1, 1, 0L, timeUnit, new PriorityBlockingQueue(), new ThreadFactoryC2259c(threadFactoryC2258b2, "disk-cache", true)));
        if (ExecutorServiceC2261e.f5918c == 0) {
            ExecutorServiceC2261e.f5918c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i11 = ExecutorServiceC2261e.f5918c >= 4 ? 2 : 1;
        ThreadFactoryC2258b threadFactoryC2258b3 = new ThreadFactoryC2258b();
        if (TextUtils.isEmpty("animation")) {
            C1929i.m3029k("Name must be non-null and non-empty, but given: animation");
            return;
        }
        ExecutorServiceC2261e executorServiceC2261e3 = new ExecutorServiceC2261e(new ThreadPoolExecutor(i11, i11, 0L, timeUnit, new PriorityBlockingQueue(), new ThreadFactoryC2259c(threadFactoryC2258b3, "animation", true)));
        C2190g c2190g = new C2190g(applicationContext);
        C2191h c2191h = new C2191h();
        Context context2 = c2190g.f5714a;
        float f8 = c2190g.f5717d;
        ActivityManager activityManager = c2190g.f5715b;
        int i12 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        c2191h.f5720c = i12;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) c2190g.f5716c.f8867c;
        float f10 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int iRound2 = Math.round(f10 * f8);
        int iRound3 = Math.round(f10 * 2.0f);
        int i13 = iRound - i12;
        int i14 = iRound3 + iRound2;
        if (i14 <= i13) {
            c2191h.f5719b = iRound3;
            c2191h.f5718a = iRound2;
        } else {
            float f11 = i13 / (f8 + 2.0f);
            c2191h.f5719b = Math.round(2.0f * f11);
            c2191h.f5718a = Math.round(f11 * f8);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context2, c2191h.f5719b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context2, c2191h.f5718a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context2, i12));
            sb.append(", memory class limited? ");
            sb.append(i14 > iRound);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context2, iRound));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
        C0990e c0990e = new C0990e(2);
        int i15 = c2191h.f5718a;
        InterfaceC2014b c2020h = i15 > 0 ? new C2020h(i15) : new C0990e(13);
        C2019g c2019g = new C2019g(c2191h.f5720c);
        C2189f c2189f = new C2189f(c2191h.f5719b);
        ComponentCallbacks2C1029b componentCallbacks2C1029b = new ComponentCallbacks2C1029b(applicationContext, new C1906r(c2189f, new C3105c(applicationContext), executorServiceC2261e2, executorServiceC2261e, new ExecutorServiceC2261e(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 10000L, timeUnit, new SynchronousQueue(), new ThreadFactoryC2259c(new ThreadFactoryC2258b(), "source-unlimited", false))), executorServiceC2261e3), c2189f, c2020h, c2019g, new C1067m(), c0990e, c2962e, arrayMap, Collections.EMPTY_LIST, arrayList, generatedAppGlideModule, new C3105c(c1033f));
        applicationContext.registerComponentCallbacks(componentCallbacks2C1029b);
        f1065i = componentCallbacks2C1029b;
    }

    /* JADX INFO: renamed from: c */
    public static ComponentCallbacks2C1078p m1251c(Fragment fragment) {
        Context context = fragment.getContext();
        AbstractC0938g.m1072c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        C1067m c1067m = m1249a(context).f1071f;
        c1067m.getClass();
        AbstractC0938g.m1072c(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        char[] cArr = AbstractC0947p.f810a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c1067m.m1342b(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            c1067m.f1166c.mo1339b(fragment.getActivity());
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Context context2 = fragment.getContext();
        return c1067m.f1167d.m1340a(context2, m1249a(context2.getApplicationContext()), fragment.getLifecycle(), childFragmentManager, fragment.isVisible());
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        AbstractC0947p.m1084a();
        this.f1068c.m1081e(0L);
        this.f1067b.mo1152n();
        C2019g c2019g = this.f1070e;
        synchronized (c2019g) {
            c2019g.m3105b(0);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        long j10;
        AbstractC0947p.m1084a();
        synchronized (this.f1073h) {
            try {
                ArrayList arrayList = this.f1073h;
                int size = arrayList.size();
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    ((ComponentCallbacks2C1078p) obj).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C2189f c2189f = this.f1068c;
        c2189f.getClass();
        if (i10 >= 40) {
            c2189f.m1081e(0L);
        } else if (i10 >= 20 || i10 == 15) {
            synchronized (c2189f) {
                j10 = c2189f.f803b;
            }
            c2189f.m1081e(j10 / 2);
        }
        this.f1067b.mo1150l(i10);
        C2019g c2019g = this.f1070e;
        synchronized (c2019g) {
            try {
                if (i10 >= 40) {
                    synchronized (c2019g) {
                        c2019g.m3105b(0);
                    }
                } else if (i10 >= 20 || i10 == 15) {
                    c2019g.m3105b(c2019g.f5511e / 2);
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
