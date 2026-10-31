package f5;

import android.app.Activity;
import android.app.Application$ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements Application$ActivityLifecycleCallbacks {
    public j e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f2211b = new Handler();
    public boolean c = false;
    public boolean d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final s8.b f2212f = new s8.b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.d = true;
        j jVar = this.e;
        Handler handler = this.f2211b;
        if (jVar != null) {
            handler.removeCallbacks(jVar);
        }
        j jVar2 = new j(0, this);
        this.e = jVar2;
        handler.postDelayed(jVar2, 1000L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.d = false;
        boolean z8 = this.c;
        this.c = true;
        j jVar = this.e;
        if (jVar != null) {
            this.f2211b.removeCallbacks(jVar);
        }
        if (z8) {
            return;
        }
        e3.d.n("went foreground");
        this.f2212f.e("ON_FOREGROUND");
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
