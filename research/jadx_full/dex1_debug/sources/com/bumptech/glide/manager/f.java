package com.bumptech.glide.manager;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f601b = Collections.newSetFromMap(new WeakHashMap());
    public volatile boolean c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.manager.g
    public final void b(FragmentActivity fragmentActivity) {
        if (!this.c && this.f601b.add(fragmentActivity)) {
            View decorView = fragmentActivity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new e(this, decorView));
        }
    }
}
