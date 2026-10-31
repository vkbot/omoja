package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler$Callback;
import android.os.Looper;
import android.os.Message;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import q.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements Handler$Callback {
    public static final c5.e e = new c5.e(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.p f605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c5.e f606b;
    public final g c;
    public final k d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m() {
        new ArrayMap();
        c5.e eVar = e;
        this.f606b = eVar;
        this.d = new k(eVar);
        this.c = (w.f4743f && w.e) ? new f() : new p2.e(2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final com.bumptech.glide.p b(Context context) {
        if (context == null) {
            j1.i.k("You cannot start a load on a null Context");
            return null;
        }
        char[] cArr = c0.p.f411a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return b(fragmentActivity.getApplicationContext());
                }
                if (fragmentActivity.isDestroyed()) {
                    j1.i.k("You cannot start a load for a destroyed activity");
                    return null;
                }
                this.c.b(fragmentActivity);
                Activity activityA = a(fragmentActivity);
                return this.d.a(fragmentActivity, com.bumptech.glide.b.a(fragmentActivity.getApplicationContext()), fragmentActivity.getLifecycle(), fragmentActivity.getSupportFragmentManager(), activityA == null || !activityA.isFinishing());
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f605a == null) {
            synchronized (this) {
                try {
                    if (this.f605a == null) {
                        com.bumptech.glide.b bVarA = com.bumptech.glide.b.a(context.getApplicationContext());
                        c5.e eVar = this.f606b;
                        z3.f fVar = new z3.f(1);
                        w7.c cVar = new w7.c(2);
                        Context applicationContext = context.getApplicationContext();
                        eVar.getClass();
                        this.f605a = new com.bumptech.glide.p(bVarA, fVar, cVar, applicationContext);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f605a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.os.Handler$Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
