package com.example.navistart;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import p047e0.C1407q;
import p078h0.C1652b;
import p164p0.C2949b;
import p217v1.C3326d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MyApplication extends Application implements ViewModelStoreOwner {

    /* JADX INFO: renamed from: c */
    public static Context f1461c;

    /* JADX INFO: renamed from: b */
    public ViewModelStore f1462b;

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        f1461c = context;
        C1652b.m2745o();
        synchronized (C1652b.class) {
            C1652b.m2749s(false);
        }
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        return this.f1462b;
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        C2949b.m4720g(this, false);
        this.f1462b = new ViewModelStore();
        Thread.setDefaultUncaughtExceptionHandler(new C1407q(this));
        if (C3326d.f9735b == null) {
            C3326d.f9735b = new C3326d(getApplicationContext(), this);
        }
    }
}
