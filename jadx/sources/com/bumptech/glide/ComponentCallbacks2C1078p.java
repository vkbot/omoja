package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.C1057c;
import com.bumptech.glide.manager.C1066l;
import com.bumptech.glide.manager.C1074t;
import com.bumptech.glide.manager.C1075u;
import com.bumptech.glide.manager.InterfaceC1056b;
import com.bumptech.glide.manager.InterfaceC1062h;
import com.bumptech.glide.manager.InterfaceC1063i;
import com.bumptech.glide.manager.InterfaceC1068n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import p025c0.AbstractC0947p;
import p030c5.C0990e;
import p205u.C3270b;
import p244y.C3620e;
import p244y.InterfaceC3618c;
import p254z.InterfaceC3690d;

/* JADX INFO: renamed from: com.bumptech.glide.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ComponentCallbacks2C1078p implements ComponentCallbacks2, InterfaceC1063i {

    /* JADX INFO: renamed from: l */
    public static final C3620e f1191l;

    /* JADX INFO: renamed from: b */
    public final ComponentCallbacks2C1029b f1192b;

    /* JADX INFO: renamed from: c */
    public final Context f1193c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC1062h f1194d;

    /* JADX INFO: renamed from: e */
    public final C1074t f1195e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC1068n f1196f;

    /* JADX INFO: renamed from: g */
    public final C1075u f1197g;

    /* JADX INFO: renamed from: h */
    public final RunnableC1054m f1198h;

    /* JADX INFO: renamed from: i */
    public final InterfaceC1056b f1199i;

    /* JADX INFO: renamed from: j */
    public final CopyOnWriteArrayList f1200j;

    /* JADX INFO: renamed from: k */
    public final C3620e f1201k;

    static {
        C3620e c3620e = (C3620e) new C3620e().m5762c(Bitmap.class);
        c3620e.f10716o = true;
        f1191l = c3620e;
        ((C3620e) new C3620e().m5762c(C3270b.class)).f10716o = true;
    }

    public ComponentCallbacks2C1078p(ComponentCallbacks2C1029b componentCallbacks2C1029b, InterfaceC1062h interfaceC1062h, InterfaceC1068n interfaceC1068n, Context context) {
        C3620e c3620e;
        C1074t c1074t = new C1074t(2);
        C0990e c0990e = componentCallbacks2C1029b.f1072g;
        this.f1197g = new C1075u();
        RunnableC1054m runnableC1054m = new RunnableC1054m(0, this);
        this.f1198h = runnableC1054m;
        this.f1192b = componentCallbacks2C1029b;
        this.f1194d = interfaceC1062h;
        this.f1196f = interfaceC1068n;
        this.f1195e = c1074t;
        this.f1193c = context;
        Context applicationContext = context.getApplicationContext();
        C1077o c1077o = new C1077o(this, c1074t);
        c0990e.getClass();
        boolean z9 = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z9 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        InterfaceC1056b c1057c = z9 ? new C1057c(applicationContext, c1077o) : new C1066l();
        this.f1199i = c1057c;
        synchronized (componentCallbacks2C1029b.f1073h) {
            if (componentCallbacks2C1029b.f1073h.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            componentCallbacks2C1029b.f1073h.add(this);
        }
        char[] cArr = AbstractC0947p.f810a;
        if ((Looper.myLooper() == Looper.getMainLooper() ? 1 : 0) == 0) {
            AbstractC0947p.m1089f().post(runnableC1054m);
        } else {
            interfaceC1062h.mo1334a(this);
        }
        interfaceC1062h.mo1334a(c1057c);
        this.f1200j = new CopyOnWriteArrayList(componentCallbacks2C1029b.f1069d.f1083e);
        C1032e c1032e = componentCallbacks2C1029b.f1069d;
        synchronized (c1032e) {
            try {
                if (c1032e.f1088j == null) {
                    c1032e.f1082d.getClass();
                    C3620e c3620e2 = new C3620e();
                    c3620e2.f10716o = true;
                    c1032e.f1088j = c3620e2;
                }
                c3620e = c1032e.f1088j;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            C3620e c3620e3 = (C3620e) c3620e.clone();
            if (c3620e3.f10716o && !c3620e3.f10717p) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            c3620e3.f10717p = true;
            c3620e3.f10716o = true;
            this.f1201k = c3620e3;
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: c */
    public final synchronized void mo1337c() {
        int i10;
        this.f1197g.mo1337c();
        synchronized (this) {
            try {
                ArrayList arrayListM1088e = AbstractC0947p.m1088e(this.f1197g.f1186b);
                int size = arrayListM1088e.size();
                i10 = 0;
                int i11 = 0;
                while (i11 < size) {
                    Object obj = arrayListM1088e.get(i11);
                    i11++;
                    m1377k((InterfaceC3690d) obj);
                }
                this.f1197g.f1186b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        C1074t c1074t = this.f1195e;
        ArrayList arrayListM1088e2 = AbstractC0947p.m1088e((Set) c1074t.f1184d);
        int size2 = arrayListM1088e2.size();
        while (i10 < size2) {
            Object obj2 = arrayListM1088e2.get(i10);
            i10++;
            c1074t.m1359b((InterfaceC3618c) obj2);
        }
        ((HashSet) c1074t.f1185e).clear();
        this.f1194d.mo1335b(this);
        this.f1194d.mo1335b(this.f1199i);
        AbstractC0947p.m1089f().removeCallbacks(this.f1198h);
        ComponentCallbacks2C1029b componentCallbacks2C1029b = this.f1192b;
        synchronized (componentCallbacks2C1029b.f1073h) {
            if (!componentCallbacks2C1029b.f1073h.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            componentCallbacks2C1029b.f1073h.remove(this);
        }
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    /* JADX INFO: renamed from: e */
    public final synchronized void mo1338e() {
        this.f1197g.mo1338e();
        m1378l();
    }

    /* JADX INFO: renamed from: k */
    public final void m1377k(InterfaceC3690d interfaceC3690d) {
        if (interfaceC3690d == null) {
            return;
        }
        boolean zM1380n = m1380n(interfaceC3690d);
        InterfaceC3618c interfaceC3618cMo1375i = interfaceC3690d.mo1375i();
        if (zM1380n) {
            return;
        }
        ComponentCallbacks2C1029b componentCallbacks2C1029b = this.f1192b;
        synchronized (componentCallbacks2C1029b.f1073h) {
            try {
                ArrayList arrayList = componentCallbacks2C1029b.f1073h;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    if (((ComponentCallbacks2C1078p) obj).m1380n(interfaceC3690d)) {
                        return;
                    }
                }
                if (interfaceC3618cMo1375i != null) {
                    interfaceC3690d.mo1374h(null);
                    interfaceC3618cMo1375i.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final synchronized void m1378l() {
        C1074t c1074t = this.f1195e;
        c1074t.f1183c = true;
        ArrayList arrayListM1088e = AbstractC0947p.m1088e((Set) c1074t.f1184d);
        int size = arrayListM1088e.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            InterfaceC3618c interfaceC3618c = (InterfaceC3618c) obj;
            if (interfaceC3618c.isRunning()) {
                interfaceC3618c.mo5781d();
                ((HashSet) c1074t.f1185e).add(interfaceC3618c);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    public final synchronized void m1379m() {
        C1074t c1074t = this.f1195e;
        int i10 = 0;
        c1074t.f1183c = false;
        ArrayList arrayListM1088e = AbstractC0947p.m1088e((Set) c1074t.f1184d);
        int size = arrayListM1088e.size();
        while (i10 < size) {
            Object obj = arrayListM1088e.get(i10);
            i10++;
            InterfaceC3618c interfaceC3618c = (InterfaceC3618c) obj;
            if (!interfaceC3618c.mo5787j() && !interfaceC3618c.isRunning()) {
                interfaceC3618c.mo5786i();
            }
        }
        ((HashSet) c1074t.f1185e).clear();
    }

    /* JADX INFO: renamed from: n */
    public final synchronized boolean m1380n(InterfaceC3690d interfaceC3690d) {
        InterfaceC3618c interfaceC3618cMo1375i = interfaceC3690d.mo1375i();
        if (interfaceC3618cMo1375i == null) {
            return true;
        }
        if (!this.f1195e.m1359b(interfaceC3618cMo1375i)) {
            return false;
        }
        this.f1197g.f1186b.remove(interfaceC3690d);
        interfaceC3690d.mo1374h(null);
        return true;
    }

    @Override // com.bumptech.glide.manager.InterfaceC1063i
    public final synchronized void onStart() {
        m1379m();
        this.f1197g.onStart();
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f1195e + ", treeNode=" + this.f1196f + "}";
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
    }
}
