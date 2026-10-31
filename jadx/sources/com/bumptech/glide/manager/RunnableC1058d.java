package com.bumptech.glide.manager;

import android.view.View;
import p025c0.AbstractC0947p;
import p172q.C3033w;

/* JADX INFO: renamed from: com.bumptech.glide.manager.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1058d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ViewTreeObserverOnDrawListenerC1059e f1153b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ViewTreeObserverOnDrawListenerC1059e f1154c;

    public RunnableC1058d(ViewTreeObserverOnDrawListenerC1059e viewTreeObserverOnDrawListenerC1059e, ViewTreeObserverOnDrawListenerC1059e viewTreeObserverOnDrawListenerC1059e2) {
        this.f1154c = viewTreeObserverOnDrawListenerC1059e;
        this.f1153b = viewTreeObserverOnDrawListenerC1059e2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C3033w c3033wM4852a = C3033w.m4852a();
        c3033wM4852a.getClass();
        AbstractC0947p.m1084a();
        c3033wM4852a.f8511d.set(true);
        this.f1154c.f1156c.f1158c = true;
        View view = this.f1154c.f1155b;
        view.getViewTreeObserver().removeOnDrawListener(this.f1153b);
        this.f1154c.f1156c.f1157b.clear();
    }
}
