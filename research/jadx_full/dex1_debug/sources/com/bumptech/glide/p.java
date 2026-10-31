package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.t;
import com.bumptech.glide.manager.u;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p implements ComponentCallbacks2, com.bumptech.glide.manager.i {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final y.e f620l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f621b;
    public final Context c;
    public final com.bumptech.glide.manager.h d;
    public final t e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.manager.n f622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final u f623g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m f624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.bumptech.glide.manager.b f625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final y.e f627k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        y.e eVar = (y.e) new y.e().c(Bitmap.class);
        eVar.f6052o = true;
        f620l = eVar;
        ((y.e) new y.e().c(u.b.class)).f6052o = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(b bVar, com.bumptech.glide.manager.h hVar, com.bumptech.glide.manager.n nVar, Context context) {
        y.e eVar;
        t tVar = new t(2);
        c5.e eVar2 = bVar.f551g;
        this.f623g = new u();
        m mVar = new m(0, this);
        this.f624h = mVar;
        this.f621b = bVar;
        this.d = hVar;
        this.f622f = nVar;
        this.e = tVar;
        this.c = context;
        Context applicationContext = context.getApplicationContext();
        o oVar = new o(this, tVar);
        eVar2.getClass();
        boolean z8 = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z8 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        com.bumptech.glide.manager.b cVar = z8 ? new com.bumptech.glide.manager.c(applicationContext, oVar) : new com.bumptech.glide.manager.l();
        this.f625i = cVar;
        synchronized (bVar.f552h) {
            if (bVar.f552h.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            bVar.f552h.add(this);
        }
        char[] cArr = c0.p.f411a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            hVar.a(this);
        } else {
            c0.p.f().post(mVar);
        }
        hVar.a(cVar);
        this.f626j = new CopyOnWriteArrayList(bVar.d.e);
        e eVar3 = bVar.d;
        synchronized (eVar3) {
            try {
                if (eVar3.f563j == null) {
                    eVar3.d.getClass();
                    y.e eVar4 = new y.e();
                    eVar4.f6052o = true;
                    eVar3.f563j = eVar4;
                }
                eVar = eVar3.f563j;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            y.e eVar5 = (y.e) eVar.b();
            if (eVar5.f6052o && !eVar5.f6053p) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            eVar5.f6053p = true;
            eVar5.f6052o = true;
            this.f627k = eVar5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final synchronized void c() {
        int i9;
        this.f623g.c();
        synchronized (this) {
            try {
                ArrayList arrayListE = c0.p.e(this.f623g.f616b);
                int size = arrayListE.size();
                i9 = 0;
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayListE.get(i10);
                    i10++;
                    k((z.d) obj);
                }
                this.f623g.f616b.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        t tVar = this.e;
        ArrayList arrayListE2 = c0.p.e((Set) tVar.d);
        int size2 = arrayListE2.size();
        while (i9 < size2) {
            Object obj2 = arrayListE2.get(i9);
            i9++;
            tVar.b((y.c) obj2);
        }
        ((HashSet) tVar.e).clear();
        this.d.b(this);
        this.d.b(this.f625i);
        c0.p.f().removeCallbacks(this.f624h);
        b bVar = this.f621b;
        synchronized (bVar.f552h) {
            if (!bVar.f552h.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            bVar.f552h.remove(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final synchronized void e() {
        this.f623g.e();
        l();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(z.d dVar) {
        if (dVar == null) {
            return;
        }
        boolean zN = n(dVar);
        y.c cVarI = dVar.i();
        if (zN) {
            return;
        }
        b bVar = this.f621b;
        synchronized (bVar.f552h) {
            try {
                ArrayList arrayList = bVar.f552h;
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    if (((p) obj).n(dVar)) {
                        return;
                    }
                }
                if (cVarI != null) {
                    dVar.h(null);
                    cVarI.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void l() {
        t tVar = this.e;
        tVar.c = true;
        ArrayList arrayListE = c0.p.e((Set) tVar.d);
        int size = arrayListE.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            y.c cVar = (y.c) obj;
            if (cVar.isRunning()) {
                cVar.d();
                ((HashSet) tVar.e).add(cVar);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void m() {
        t tVar = this.e;
        int i9 = 0;
        tVar.c = false;
        ArrayList arrayListE = c0.p.e((Set) tVar.d);
        int size = arrayListE.size();
        while (i9 < size) {
            Object obj = arrayListE.get(i9);
            i9++;
            y.c cVar = (y.c) obj;
            if (!cVar.j() && !cVar.isRunning()) {
                cVar.i();
            }
        }
        ((HashSet) tVar.e).clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized boolean n(z.d dVar) {
        y.c cVarI = dVar.i();
        if (cVarI == null) {
            return true;
        }
        if (!this.e.b(cVarI)) {
            return false;
        }
        this.f623g.f616b.remove(dVar);
        dVar.h(null);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.i
    public final synchronized void onStart() {
        m();
        this.f623g.onStart();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.e + ", treeNode=" + this.f622f + "}";
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i9) {
    }
}
