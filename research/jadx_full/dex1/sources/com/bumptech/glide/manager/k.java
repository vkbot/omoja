package com.bumptech.glide.manager;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f603a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c5.e f604b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(c5.e eVar) {
        this.f604b = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final com.bumptech.glide.p a(Context context, com.bumptech.glide.b bVar, Lifecycle lifecycle, FragmentManager fragmentManager, boolean z8) {
        c0.p.a();
        c0.p.a();
        HashMap map = this.f603a;
        com.bumptech.glide.p pVar = (com.bumptech.glide.p) map.get(lifecycle);
        if (pVar != null) {
            return pVar;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        z3.f fVar = new z3.f(this, fragmentManager);
        this.f604b.getClass();
        com.bumptech.glide.p pVar2 = new com.bumptech.glide.p(bVar, lifecycleLifecycle, fVar, context);
        map.put(lifecycle, pVar2);
        lifecycleLifecycle.a(new j(this, lifecycle));
        if (z8) {
            pVar2.onStart();
        }
        return pVar2;
    }
}
