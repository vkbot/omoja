package p174q2;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import p155o4.C2589d;

/* JADX INFO: renamed from: q2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ComponentCallbacks2C3057a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: f */
    public static final ComponentCallbacks2C3057a f8674f = new ComponentCallbacks2C3057a();

    /* JADX INFO: renamed from: b */
    public final AtomicBoolean f8675b = new AtomicBoolean();

    /* JADX INFO: renamed from: c */
    public final AtomicBoolean f8676c = new AtomicBoolean();

    /* JADX INFO: renamed from: d */
    public final ArrayList f8677d = new ArrayList();

    /* JADX INFO: renamed from: e */
    public boolean f8678e = false;

    /* JADX INFO: renamed from: a */
    public final void m4900a(boolean z9) {
        synchronized (f8674f) {
            try {
                ArrayList arrayList = this.f8677d;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((C2589d) obj).getClass();
                    C2589d.m4060a(z9);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.f8675b.compareAndSet(true, false);
        this.f8676c.set(true);
        if (zCompareAndSet) {
            m4900a(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean zCompareAndSet = this.f8675b.compareAndSet(true, false);
        this.f8676c.set(true);
        if (zCompareAndSet) {
            m4900a(false);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        if (i10 == 20 && this.f8675b.compareAndSet(false, true)) {
            this.f8676c.set(true);
            m4900a(true);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
