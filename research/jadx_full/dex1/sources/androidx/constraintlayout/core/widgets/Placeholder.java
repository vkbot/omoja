package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Placeholder extends VirtualLayout {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z8) {
        super.addToSolver(linearSystem, z8);
        if (this.mWidgetsCount > 0) {
            ConstraintWidget constraintWidget = this.mWidgets[0];
            constraintWidget.resetAllConstraints();
            ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.LEFT;
            constraintWidget.connect(constraintAnchor$Type, this, constraintAnchor$Type);
            ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.RIGHT;
            constraintWidget.connect(constraintAnchor$Type2, this, constraintAnchor$Type2);
            ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.TOP;
            constraintWidget.connect(constraintAnchor$Type3, this, constraintAnchor$Type3);
            ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.BOTTOM;
            constraintWidget.connect(constraintAnchor$Type4, this, constraintAnchor$Type4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i9, int i10, int i11, int i12) {
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mWidgetsCount > 0) {
            paddingLeft += this.mWidgets[0].getWidth();
            paddingTop += this.mWidgets[0].getHeight();
        }
        int iMax = Math.max(getMinWidth(), paddingLeft);
        int iMax2 = Math.max(getMinHeight(), paddingTop);
        if (i9 != 1073741824) {
            if (i9 == Integer.MIN_VALUE) {
                i10 = Math.min(iMax, i10);
            } else {
                i10 = i9 == 0 ? iMax : 0;
            }
        }
        if (i11 != 1073741824) {
            if (i11 == Integer.MIN_VALUE) {
                i12 = Math.min(iMax2, i12);
            } else {
                i12 = i11 == 0 ? iMax2 : 0;
            }
        }
        setMeasure(i10, i12);
        setWidth(i10);
        setHeight(i12);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }
}
