package androidx.activity;

import android.view.View;
import android.view.View$OnLayoutChangeListener;
import android.view.ViewTreeObserver$OnScrollChangedListener;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PipHintTrackerKt$trackPipAnimationHintView$flow$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 $attachStateChangeListener;
    final /* synthetic */ View$OnLayoutChangeListener $layoutChangeListener;
    final /* synthetic */ ViewTreeObserver$OnScrollChangedListener $scrollChangeListener;
    final /* synthetic */ View $view;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1$1(View view, ViewTreeObserver$OnScrollChangedListener viewTreeObserver$OnScrollChangedListener, View$OnLayoutChangeListener view$OnLayoutChangeListener, PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1) {
        super(0);
        this.$view = view;
        this.$scrollChangeListener = viewTreeObserver$OnScrollChangedListener;
        this.$layoutChangeListener = view$OnLayoutChangeListener;
        this.$attachStateChangeListener = pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Possible override for method kotlin.jvm.functions.Function0.invoke()Ljava/lang/Object; */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$view.getViewTreeObserver().removeOnScrollChangedListener(this.$scrollChangeListener);
        this.$view.removeOnLayoutChangeListener(this.$layoutChangeListener);
        this.$view.removeOnAttachStateChangeListener(this.$attachStateChangeListener);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }
}
