package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver$OnDrawListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements ViewTreeObserver$OnDrawListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f600b;
    public final /* synthetic */ f c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(f fVar, View view) {
        this.c = fVar;
        this.f600b = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnDrawListener
    public final void onDraw() {
        c0.p.f().post(new d(this, this));
    }
}
