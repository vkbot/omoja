package androidx.activity;

import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.View$OnLayoutChangeListener;
import android.view.ViewTreeObserver$OnScrollChangedListener;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import x8.q;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"androidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1", "Landroid/view/View$OnAttachStateChangeListener;", "onViewAttachedToWindow", "", "v", "Landroid/view/View;", "onViewDetachedFromWindow", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 implements View$OnAttachStateChangeListener {
    final /* synthetic */ q $$this$callbackFlow;
    final /* synthetic */ View$OnLayoutChangeListener $layoutChangeListener;
    final /* synthetic */ ViewTreeObserver$OnScrollChangedListener $scrollChangeListener;
    final /* synthetic */ View $view;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1(q qVar, View view, ViewTreeObserver$OnScrollChangedListener viewTreeObserver$OnScrollChangedListener, View$OnLayoutChangeListener view$OnLayoutChangeListener) {
        this.$$this$callbackFlow = qVar;
        this.$view = view;
        this.$scrollChangeListener = viewTreeObserver$OnScrollChangedListener;
        this.$layoutChangeListener = view$OnLayoutChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View v8) {
        v8.getClass();
        this.$$this$callbackFlow.e(PipHintTrackerKt.access$trackPipAnimationHintView$positionInWindow(this.$view));
        this.$view.getViewTreeObserver().addOnScrollChangedListener(this.$scrollChangeListener);
        this.$view.addOnLayoutChangeListener(this.$layoutChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View v8) {
        v8.getClass();
        v8.getViewTreeObserver().removeOnScrollChangedListener(this.$scrollChangeListener);
        v8.removeOnLayoutChangeListener(this.$layoutChangeListener);
    }
}
