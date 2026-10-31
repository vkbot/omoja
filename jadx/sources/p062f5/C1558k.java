package p062f5;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import p050e3.C1461d;
import p196s8.C3218b;

/* JADX INFO: renamed from: f5.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1558k implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: e */
    public RunnableC1556j f3835e;

    /* JADX INFO: renamed from: b */
    public final Handler f3832b = new Handler();

    /* JADX INFO: renamed from: c */
    public boolean f3833c = false;

    /* JADX INFO: renamed from: d */
    public boolean f3834d = true;

    /* JADX INFO: renamed from: f */
    public final C3218b f3836f = new C3218b();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f3834d = true;
        RunnableC1556j runnableC1556j = this.f3835e;
        Handler handler = this.f3832b;
        if (runnableC1556j != null) {
            handler.removeCallbacks(runnableC1556j);
        }
        RunnableC1556j runnableC1556j2 = new RunnableC1556j(0, this);
        this.f3835e = runnableC1556j2;
        handler.postDelayed(runnableC1556j2, 1000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f3834d = false;
        boolean z9 = this.f3833c;
        this.f3833c = true;
        RunnableC1556j runnableC1556j = this.f3835e;
        if (runnableC1556j != null) {
            this.f3832b.removeCallbacks(runnableC1556j);
        }
        if (z9) {
            return;
        }
        C1461d.m2514n("went foreground");
        this.f3836f.mo2820e("ON_FOREGROUND");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
