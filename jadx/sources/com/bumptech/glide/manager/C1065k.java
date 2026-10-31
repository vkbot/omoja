package com.bumptech.glide.manager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import com.bumptech.glide.ComponentCallbacks2C1029b;
import com.bumptech.glide.ComponentCallbacks2C1078p;
import java.util.HashMap;
import p025c0.AbstractC0947p;
import p030c5.C0990e;
import p258z3.C3720f;

/* JADX INFO: renamed from: com.bumptech.glide.manager.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1065k {

    /* JADX INFO: renamed from: a */
    public final HashMap f1161a = new HashMap();

    /* JADX INFO: renamed from: b */
    public final C0990e f1162b;

    public C1065k(C0990e c0990e) {
        this.f1162b = c0990e;
    }

    /* JADX INFO: renamed from: a */
    public final ComponentCallbacks2C1078p m1340a(Context context, ComponentCallbacks2C1029b componentCallbacks2C1029b, Lifecycle lifecycle, FragmentManager fragmentManager, boolean z9) {
        AbstractC0947p.m1084a();
        AbstractC0947p.m1084a();
        HashMap map = this.f1161a;
        ComponentCallbacks2C1078p componentCallbacks2C1078p = (ComponentCallbacks2C1078p) map.get(lifecycle);
        if (componentCallbacks2C1078p != null) {
            return componentCallbacks2C1078p;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        C3720f c3720f = new C3720f(this, fragmentManager);
        this.f1162b.getClass();
        ComponentCallbacks2C1078p componentCallbacks2C1078p2 = new ComponentCallbacks2C1078p(componentCallbacks2C1029b, lifecycleLifecycle, c3720f, context);
        map.put(lifecycle, componentCallbacks2C1078p2);
        lifecycleLifecycle.mo1334a(new C1064j(this, lifecycle));
        if (z9) {
            componentCallbacks2C1078p2.onStart();
        }
        return componentCallbacks2C1078p2;
    }
}
