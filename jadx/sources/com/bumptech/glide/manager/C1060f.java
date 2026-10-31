package com.bumptech.glide.manager;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.bumptech.glide.manager.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1060f implements InterfaceC1061g {

    /* JADX INFO: renamed from: b */
    public final Set f1157b = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: c */
    public volatile boolean f1158c;

    @Override // com.bumptech.glide.manager.InterfaceC1061g
    /* JADX INFO: renamed from: b */
    public final void mo1339b(FragmentActivity fragmentActivity) {
        if (!this.f1158c && this.f1157b.add(fragmentActivity)) {
            View decorView = fragmentActivity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new ViewTreeObserverOnDrawListenerC1059e(this, decorView));
        }
    }
}
