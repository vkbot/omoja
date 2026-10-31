package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.SharedValues$SharedValuesListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTransitionController$1 implements SharedValues$SharedValuesListener {
    final /* synthetic */ ViewTransitionController this$0;
    final /* synthetic */ boolean val$isSet;
    final /* synthetic */ int val$listen_for_id;
    final /* synthetic */ int val$listen_for_value;
    final /* synthetic */ ViewTransition val$viewTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public ViewTransitionController$1(ViewTransitionController viewTransitionController, ViewTransition viewTransition, int i9, boolean z8, int i10) {
        this.this$0 = viewTransitionController;
        this.val$viewTransition = viewTransition;
        this.val$listen_for_id = i9;
        this.val$isSet = z8;
        this.val$listen_for_value = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.widget.SharedValues$SharedValuesListener
    public void onNewValue(int i9, int i10, int i11) {
        int sharedValueCurrent = this.val$viewTransition.getSharedValueCurrent();
        this.val$viewTransition.setSharedValueCurrent(i10);
        if (this.val$listen_for_id != i9 || sharedValueCurrent == i10) {
            return;
        }
        boolean z8 = this.val$isSet;
        int i12 = this.val$listen_for_value;
        int i13 = 0;
        if (z8) {
            if (i12 == i10) {
                int childCount = ViewTransitionController.access$000(this.this$0).getChildCount();
                while (i13 < childCount) {
                    View childAt = ViewTransitionController.access$000(this.this$0).getChildAt(i13);
                    if (this.val$viewTransition.matchesView(childAt)) {
                        int currentState = ViewTransitionController.access$000(this.this$0).getCurrentState();
                        ConstraintSet constraintSet = ViewTransitionController.access$000(this.this$0).getConstraintSet(currentState);
                        ViewTransition viewTransition = this.val$viewTransition;
                        ViewTransitionController viewTransitionController = this.this$0;
                        viewTransition.applyTransition(viewTransitionController, ViewTransitionController.access$000(viewTransitionController), currentState, constraintSet, childAt);
                    }
                    i13++;
                }
                return;
            }
            return;
        }
        if (i12 != i10) {
            int childCount2 = ViewTransitionController.access$000(this.this$0).getChildCount();
            while (i13 < childCount2) {
                View childAt2 = ViewTransitionController.access$000(this.this$0).getChildAt(i13);
                if (this.val$viewTransition.matchesView(childAt2)) {
                    int currentState2 = ViewTransitionController.access$000(this.this$0).getCurrentState();
                    ConstraintSet constraintSet2 = ViewTransitionController.access$000(this.this$0).getConstraintSet(currentState2);
                    ViewTransition viewTransition2 = this.val$viewTransition;
                    ViewTransitionController viewTransitionController2 = this.this$0;
                    viewTransition2.applyTransition(viewTransitionController2, ViewTransitionController.access$000(viewTransitionController2), currentState2, constraintSet2, childAt2);
                }
                i13++;
            }
        }
    }
}
