package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.util.Log;
import androidx.constraintlayout.core.utils.C0279a;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.tracing.Trace;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ScheduledFuture;
import kotlin.p118io.encoding.Base64;
import p025c0.C0939h;
import p025c0.InterfaceC0940i;
import p047e0.AbstractC1387m;
import p050e3.RunnableC1464g;
import p084h7.C1683k;
import p099j1.C1929i;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;
import p157o7.C2599a;
import p157o7.C2637g1;
import p157o7.C2661k1;
import p157o7.InterfaceC2674m2;
import p157o7.RunnableC2624e0;
import p157o7.RunnableC2649i1;
import p244y.InterfaceC3618c;
import p257z2.InterfaceC3710f;

/* JADX INFO: renamed from: com.bumptech.glide.manager.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1074t implements InterfaceC0940i, InterfaceC2674m2 {

    /* JADX INFO: renamed from: f */
    public static volatile C1074t f1181f;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1182b;

    /* JADX INFO: renamed from: c */
    public boolean f1183c;

    /* JADX INFO: renamed from: d */
    public final Object f1184d;

    /* JADX INFO: renamed from: e */
    public Object f1185e;

    public C1074t(Context context, int i10) {
        this.f1182b = i10;
        switch (i10) {
            case 3:
                this.f1184d = context.getApplicationContext();
                this.f1185e = C1683k.f4317o;
                break;
            default:
                this.f1185e = new HashSet();
                this.f1184d = new C1073s(new C0939h(new C1069o(context, 0)), new C1070p(this));
                break;
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1355a(ArrayList arrayList, HashSet hashSet, File file) {
        String absolutePath;
        if (file != null) {
            try {
                String absolutePath2 = file.getAbsolutePath();
                if (!file.isDirectory() || absolutePath2.contains(AbstractC1387m.m2421h(new byte[]{-44, -91, 72, -122, -118, 98, -101, -9}, new byte[]{-79, -56, Base64.padSymbol, -22, -21, 22, -2, -109})) || absolutePath2.contains(AbstractC1387m.m2421h(new byte[]{-26, -114, -30, 111}, new byte[]{-107, -21, -114, 9, 18, 57, -29, -117})) || !m1357f(absolutePath2) || file.listFiles() == null) {
                    return;
                }
                try {
                    absolutePath = file.getCanonicalPath();
                } catch (IOException unused) {
                    absolutePath = file.getAbsolutePath();
                }
                if (hashSet.add(absolutePath)) {
                    arrayList.add(file);
                }
            } catch (Exception unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public static C1074t m1356c(Context context) {
        if (f1181f == null) {
            synchronized (C1074t.class) {
                try {
                    if (f1181f == null) {
                        f1181f = new C1074t(context.getApplicationContext(), 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1181f;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m1357f(String str) {
        return str.startsWith(AbstractC1387m.m2421h(new byte[]{-72, 95, 76, -116, 10, -108, 123, -26, -72}, new byte[]{-105, 44, 56, -29, 120, -11, 28, -125})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{121, -61, 44, 40, 83, -103, -7, 110, 63, -49, 29, 46, 11, -37}, new byte[]{86, -82, 66, 92, 124, -12, -100, 10})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{113, -21, 123, 29, -40, 71, -34, -49, 42, -17, 120, 12, -40}, new byte[]{94, -122, 21, 105, -9, 53, -85, -95})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{125, -33, -5, 49, 79, 39, 82, -84}, new byte[]{82, -78, -107, 69, 96, 82, 33, -50})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{-45, -98, -119, -19, 112, -16, -63, -37, -45, -104, -114, -32}, new byte[]{-4, -19, -3, -126, 2, -111, -90, -66})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{92, -48, 69, -3, 87, -59, 19, -125, 0, -42}, new byte[]{115, -67, 43, -119, 120, -80, 119, -22})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{76, -71, 12, -69, 56, 4, -29, -80, 76, -65, 28, -67, 57, 14}, new byte[]{99, -54, 120, -44, 74, 101, -124, -43})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{53, 49, 82, 98, -26, -120, -67, -5, 53, 39, 94, 121}, new byte[]{26, 66, 38, 13, -108, -23, -38, -98})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{95, 76, -89, -74, 106, 85, -45, -55}, new byte[]{112, 33, -55, -62, 69, 48, -85, -67})) || str.startsWith(AbstractC1387m.m2421h(new byte[]{47, -45, 67, -25, -25, -14, -81, -72, 47, -45, 83, -21, -12, -31, -84}, new byte[]{0, -96, 55, -120, -107, -109, -56, -35}));
    }

    /* JADX INFO: renamed from: h */
    public static ArrayList m1358h(File file) {
        File absoluteFile;
        File[] fileArrListFiles;
        try {
            absoluteFile = file.getCanonicalFile();
        } catch (IOException unused) {
            absoluteFile = file.getAbsoluteFile();
        }
        if (absoluteFile.exists() && absoluteFile.isDirectory()) {
            try {
                fileArrListFiles = absoluteFile.listFiles();
            } catch (Exception unused2) {
                fileArrListFiles = null;
            }
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                Collections.addAll(arrayList, fileArrListFiles);
                Collections.sort(arrayList, new C0279a(4));
                return arrayList;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public boolean m1359b(InterfaceC3618c interfaceC3618c) {
        boolean z9 = true;
        if (interfaceC3618c == null) {
            return true;
        }
        boolean zRemove = ((Set) this.f1184d).remove(interfaceC3618c);
        if (!((HashSet) this.f1185e).remove(interfaceC3618c) && !zRemove) {
            z9 = false;
        }
        if (z9) {
            interfaceC3618c.clear();
        }
        return z9;
    }

    /* JADX INFO: renamed from: d */
    public Uri m1360d(File file) {
        Context context = (Context) this.f1184d;
        return FileProvider.getUriForFile(context, context.getPackageName() + AbstractC1387m.m2421h(new byte[]{-107, -90, 93, 39, 11, -126, 0, 30, -55}, new byte[]{-69, -42, 47, 72, 125, -21, 100, 123}), file);
    }

    /* JADX INFO: renamed from: e */
    public ArrayList m1361e() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        try {
            C1683k c1683k = (C1683k) this.f1185e;
            if (c1683k != null) {
                ArrayList arrayListM2795e = c1683k.m2795e();
                int size = arrayListM2795e.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayListM2795e.get(i10);
                    i10++;
                    m1355a(arrayList, hashSet, (File) obj);
                }
            }
        } catch (Exception unused) {
        }
        try {
            for (File file : ContextCompat.getExternalFilesDirs((Context) this.f1184d, null)) {
                if (file != null) {
                    String absolutePath = file.getAbsolutePath();
                    int iIndexOf = absolutePath.indexOf(AbstractC1387m.m2421h(new byte[]{103, 112, 105, -82, -52, 121, -112, -61}, new byte[]{72, 49, 7, -54, -66, 22, -7, -89}));
                    if (absolutePath.contains(AbstractC1387m.m2421h(new byte[]{-90, -90, 88, -97, 21, 9, 111, -124, -90}, new byte[]{-119, -43, 44, -16, 103, 104, 8, -31})) && iIndexOf > 0) {
                        m1355a(arrayList, hashSet, new File(absolutePath.substring(0, iIndexOf)));
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            File[] fileArrListFiles = new File(AbstractC1387m.m2421h(new byte[]{77, -105, -121, 113, -124, 11, 66, 97, 77}, new byte[]{98, -28, -13, 30, -10, 106, 37, 4})).listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    m1355a(arrayList, hashSet, file2);
                }
            }
        } catch (Exception unused3) {
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: g */
    public void m1362g() {
        if (this.f1183c || ((HashSet) this.f1185e).isEmpty()) {
            return;
        }
        C1073s c1073s = (C1073s) this.f1184d;
        C0939h c0939h = (C0939h) c1073s.f1179d;
        boolean z9 = false;
        c1073s.f1177b = ((ConnectivityManager) c0939h.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) c0939h.get()).registerDefaultNetworkCallback((C1072r) c1073s.f1180e);
            z9 = true;
        } catch (RuntimeException e) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e);
            }
        }
        this.f1183c = z9;
    }

    @Override // p025c0.InterfaceC0940i
    public Object get() {
        if (this.f1183c) {
            C1929i.m3030l("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            return null;
        }
        Trace.beginSection("Glide registry");
        this.f1183c = true;
        try {
            return AbstractC1030c.m1254f((ComponentCallbacks2C1029b) this.f1184d, (ArrayList) this.f1185e);
        } finally {
            this.f1183c = false;
            Trace.endSection();
        }
    }

    /* JADX INFO: renamed from: i */
    public void m1363i(ScheduledFuture scheduledFuture) {
        synchronized (this.f1184d) {
            try {
                if (!this.f1183c) {
                    this.f1185e = scheduledFuture;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public void m1364j(boolean z9) {
        C2661k1 c2661k1 = (C2661k1) this.f1185e;
        c2661k1.f7578k.execute(new RunnableC1464g(c2661k1, (C2637g1) this.f1184d, z9, 1));
    }

    /* JADX INFO: renamed from: k */
    public void m1365k(C2508f1 c2508f1) {
        C2661k1 c2661k1 = (C2661k1) this.f1185e;
        c2661k1.f7576i.mo3906n(2, "{0} SHUTDOWN with {1}", ((C2637g1) this.f1184d).mo3995c(), C2661k1.m4176h(c2508f1));
        this.f1183c = true;
        c2661k1.f7578k.execute(new RunnableC2624e0(16, this, c2508f1));
    }

    /* JADX INFO: renamed from: l */
    public void m1366l() {
        AbstractC2587b.m4046m(this.f1183c, "transportShutdown() must be called before transportTerminated().");
        C2661k1 c2661k1 = (C2661k1) this.f1185e;
        AbstractC2503e abstractC2503e = c2661k1.f7576i;
        C2637g1 c2637g1 = (C2637g1) this.f1184d;
        abstractC2503e.mo3906n(2, "{0} Terminated", c2637g1.mo3995c());
        ExecutorC2523k1 executorC2523k1 = c2661k1.f7578k;
        executorC2523k1.execute(new RunnableC1464g(c2661k1, c2637g1, false, 1));
        Iterator it = c2661k1.f7577j.iterator();
        if (!it.hasNext()) {
            executorC2523k1.execute(new RunnableC2649i1(this, 1));
        } else if (it.next() != null) {
            C2467b.m3822a();
        } else {
            c2637g1.getAttributes();
            throw null;
        }
    }

    /* JADX INFO: renamed from: m */
    public void m1367m(InterfaceC3710f interfaceC3710f) {
        synchronized (this.f1184d) {
            try {
                if (((ArrayDeque) this.f1185e) == null) {
                    this.f1185e = new ArrayDeque();
                }
                ((ArrayDeque) this.f1185e).add(interfaceC3710f);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public void m1368n(C2599a c2599a) {
        InterfaceC3710f interfaceC3710f;
        synchronized (this.f1184d) {
            if (((ArrayDeque) this.f1185e) != null && !this.f1183c) {
                this.f1183c = true;
                while (true) {
                    synchronized (this.f1184d) {
                        try {
                            interfaceC3710f = (InterfaceC3710f) ((ArrayDeque) this.f1185e).poll();
                            if (interfaceC3710f == null) {
                                this.f1183c = false;
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    interfaceC3710f.mo5919a(c2599a);
                }
            }
        }
    }

    public String toString() {
        switch (this.f1182b) {
            case 2:
                return super.toString() + "{numRequests=" + ((Set) this.f1184d).size() + ", isPaused=" + this.f1183c + "}";
            default:
                return super.toString();
        }
    }

    public C1074t(int i10) {
        this.f1182b = i10;
        switch (i10) {
            case 6:
                this.f1184d = new Object();
                break;
            default:
                this.f1184d = Collections.newSetFromMap(new WeakHashMap());
                this.f1185e = new HashSet();
                break;
        }
    }

    public C1074t(ComponentCallbacks2C1029b componentCallbacks2C1029b, ArrayList arrayList, AbstractC2587b abstractC2587b) {
        this.f1182b = 1;
        this.f1184d = componentCallbacks2C1029b;
        this.f1185e = arrayList;
    }

    public C1074t(C2661k1 c2661k1, C2637g1 c2637g1) {
        this.f1182b = 4;
        this.f1185e = c2661k1;
        this.f1183c = false;
        this.f1184d = c2637g1;
    }

    public C1074t(Object obj) {
        this.f1182b = 5;
        this.f1184d = obj;
    }
}
