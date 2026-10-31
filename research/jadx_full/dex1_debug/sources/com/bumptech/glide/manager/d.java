package com.bumptech.glide.manager;

import android.view.View;
import q.w;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f599b;
    public final /* synthetic */ e c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(e eVar, e eVar2) {
        this.c = eVar;
        this.f599b = eVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        w wVarA = w.a();
        wVarA.getClass();
        c0.p.a();
        wVarA.d.set(true);
        this.c.c.c = true;
        View view = this.c.f600b;
        view.getViewTreeObserver().removeOnDrawListener(this.f599b);
        this.c.c.f601b.clear();
    }
}
