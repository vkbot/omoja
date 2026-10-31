package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver;
import p025c0.AbstractC0947p;

/* JADX INFO: renamed from: com.bumptech.glide.manager.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnDrawListenerC1059e implements ViewTreeObserver.OnDrawListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f1155b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1060f f1156c;

    public ViewTreeObserverOnDrawListenerC1059e(C1060f c1060f, View view) {
        this.f1156c = c1060f;
        this.f1155b = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        AbstractC0947p.m1089f().post(new RunnableC1058d(this, this));
    }
}
