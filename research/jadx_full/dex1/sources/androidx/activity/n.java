package androidx.activity;

import android.view.View;
import android.view.ViewTreeObserver$OnScrollChangedListener;
import x8.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class n implements ViewTreeObserver$OnScrollChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f111b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n(q qVar, View view) {
        this.f110a = qVar;
        this.f111b = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnScrollChangedListener
    public final void onScrollChanged() {
        PipHintTrackerKt$trackPipAnimationHintView$flow$1.e(this.f110a, this.f111b);
    }
}
