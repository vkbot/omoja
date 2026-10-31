package androidx.slidingpanelayout.widget;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.window.layout.FoldingFeature;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import y8.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"androidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1", "Ly8/g;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1 implements g {
    final /* synthetic */ FoldingFeatureObserver this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1(FoldingFeatureObserver foldingFeatureObserver) {
        this.this$0 = foldingFeatureObserver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object emit(FoldingFeature foldingFeature, Continuation<? super Unit> continuation) {
        Unit unit;
        FoldingFeature foldingFeature2 = foldingFeature;
        FoldingFeatureObserver$OnFoldingFeatureChangeListener foldingFeatureObserver$OnFoldingFeatureChangeListenerAccess$getOnFoldingFeatureChangeListener$p = FoldingFeatureObserver.access$getOnFoldingFeatureChangeListener$p(this.this$0);
        if (foldingFeatureObserver$OnFoldingFeatureChangeListenerAccess$getOnFoldingFeatureChangeListener$p == null) {
            unit = null;
        } else {
            foldingFeatureObserver$OnFoldingFeatureChangeListenerAccess$getOnFoldingFeatureChangeListener$p.onFoldingFeatureChange(foldingFeature2);
            unit = Unit.INSTANCE;
        }
        return unit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unit : Unit.INSTANCE;
    }
}
