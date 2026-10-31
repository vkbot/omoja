package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WidgetGroup$MeasureResult {
    int mBaseline;
    int mBottom;
    int mLeft;
    int mOrientation;
    int mRight;
    int mTop;
    WeakReference<ConstraintWidget> mWidgetRef;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetGroup$MeasureResult(ConstraintWidget constraintWidget, LinearSystem linearSystem, int i9) {
        this.mWidgetRef = new WeakReference<>(constraintWidget);
        this.mLeft = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
        this.mTop = linearSystem.getObjectVariableValue(constraintWidget.mTop);
        this.mRight = linearSystem.getObjectVariableValue(constraintWidget.mRight);
        this.mBottom = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
        this.mBaseline = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
        this.mOrientation = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void apply() {
        ConstraintWidget constraintWidget = this.mWidgetRef.get();
        if (constraintWidget != null) {
            constraintWidget.setFinalFrame(this.mLeft, this.mTop, this.mRight, this.mBottom, this.mBaseline, this.mOrientation);
        }
    }
}
