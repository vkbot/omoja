package androidx.slidingpanelayout.widget;

import androidx.annotation.NonNull;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.transition.ChangeBounds;
import androidx.transition.TransitionManager;
import androidx.window.layout.FoldingFeature;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout$1 implements FoldingFeatureObserver$OnFoldingFeatureChangeListener {
    final /* synthetic */ SlidingPaneLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout$1(SlidingPaneLayout slidingPaneLayout) {
        this.this$0 = slidingPaneLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.slidingpanelayout.widget.FoldingFeatureObserver$OnFoldingFeatureChangeListener
    public void onFoldingFeatureChange(@NonNull FoldingFeature foldingFeature) {
        this.this$0.mFoldingFeature = foldingFeature;
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(300L);
        changeBounds.setInterpolator(PathInterpolatorCompat.create(0.2f, 0.0f, 0.0f, 1.0f));
        TransitionManager.beginDelayedTransition(this.this$0, changeBounds);
        this.this$0.requestLayout();
    }
}
