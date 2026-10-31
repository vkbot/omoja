package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import p025c0.AbstractC0947p;
import p030c5.C0990e;
import p099j1.C1929i;
import p165p2.C2962e;
import p172q.C3033w;
import p232w7.C3537c;
import p258z3.C3720f;

/* JADX INFO: renamed from: com.bumptech.glide.manager.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1067m implements Handler.Callback {

    /* JADX INFO: renamed from: e */
    public static final C0990e f1163e = new C0990e(3);

    /* JADX INFO: renamed from: a */
    public volatile ComponentCallbacks2C1078p f1164a;

    /* JADX INFO: renamed from: b */
    public final C0990e f1165b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1061g f1166c;

    /* JADX INFO: renamed from: d */
    public final C1065k f1167d;

    public C1067m() {
        new ArrayMap();
        C0990e c0990e = f1163e;
        this.f1165b = c0990e;
        this.f1167d = new C1065k(c0990e);
        this.f1166c = (C3033w.f8505f && C3033w.f8504e) ? new C1060f() : new C2962e(2);
    }

    /* JADX INFO: renamed from: a */
    public static Activity m1341a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m1341a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final ComponentCallbacks2C1078p m1342b(Context context) {
        if (context == null) {
            C1929i.m3029k("You cannot start a load on a null Context");
            return null;
        }
        char[] cArr = AbstractC0947p.f810a;
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return m1342b(fragmentActivity.getApplicationContext());
                }
                if (fragmentActivity.isDestroyed()) {
                    C1929i.m3029k("You cannot start a load for a destroyed activity");
                    return null;
                }
                this.f1166c.mo1339b(fragmentActivity);
                Activity activityM1341a = m1341a(fragmentActivity);
                return this.f1167d.m1340a(fragmentActivity, ComponentCallbacks2C1029b.m1249a(fragmentActivity.getApplicationContext()), fragmentActivity.getLifecycle(), fragmentActivity.getSupportFragmentManager(), activityM1341a == null || !activityM1341a.isFinishing());
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return m1342b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f1164a == null) {
            synchronized (this) {
                try {
                    if (this.f1164a == null) {
                        ComponentCallbacks2C1029b componentCallbacks2C1029bM1249a = ComponentCallbacks2C1029b.m1249a(context.getApplicationContext());
                        C0990e c0990e = this.f1165b;
                        C3720f c3720f = new C3720f(1);
                        C3537c c3537c = new C3537c(2);
                        Context applicationContext = context.getApplicationContext();
                        c0990e.getClass();
                        this.f1164a = new ComponentCallbacks2C1078p(componentCallbacks2C1029bM1249a, c3720f, c3537c, applicationContext);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f1164a;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
