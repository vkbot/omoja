package androidx.constraintlayout.core.widgets;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = true;
    private int mMargin = 0;
    boolean mResolved = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Barrier(String str) {
        setDebugName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z8) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z9;
        int i9;
        int i10;
        int i11;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i12 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i12 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i12];
            constraintAnchor.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor);
            i12++;
        }
        int i13 = this.mBarrierType;
        if (i13 < 0 || i13 >= 4) {
            return;
        }
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i13];
        if (!this.mResolved) {
            allSolved();
        }
        if (this.mResolved) {
            this.mResolved = false;
            int i14 = this.mBarrierType;
            if (i14 == 0 || i14 == 1) {
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mX);
                linearSystem.addEquality(this.mRight.mSolverVariable, this.mX);
                return;
            } else {
                if (i14 == 2 || i14 == 3) {
                    linearSystem.addEquality(this.mTop.mSolverVariable, this.mY);
                    linearSystem.addEquality(this.mBottom.mSolverVariable, this.mY);
                    return;
                }
                return;
            }
        }
        int i15 = 0;
        while (true) {
            if (i15 >= this.mWidgetsCount) {
                z9 = false;
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i15];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i10 = this.mBarrierType) == 0 || i10 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i11 = this.mBarrierType) == 2 || i11 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                z9 = true;
                break;
            }
            i15++;
        }
        boolean z10 = this.mLeft.hasCenteredDependents() || this.mRight.hasCenteredDependents();
        boolean z11 = this.mTop.hasCenteredDependents() || this.mBottom.hasCenteredDependents();
        int i16 = !(!z9 && (((i9 = this.mBarrierType) == 0 && z10) || ((i9 == 2 && z11) || ((i9 == 1 && z10) || (i9 == 3 && z11))))) ? 4 : 5;
        for (int i17 = 0; i17 < this.mWidgetsCount; i17++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i17];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                int i18 = this.mBarrierType;
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i18];
                constraintAnchor3.mSolverVariable = solverVariableCreateObjectVariable;
                ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                int i19 = (constraintAnchor4 == null || constraintAnchor4.mOwner != this) ? 0 : constraintAnchor3.mMargin;
                if (i18 == 0 || i18 == 2) {
                    linearSystem.addLowerBarrier(constraintAnchor2.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin - i19, z9);
                } else {
                    linearSystem.addGreaterBarrier(constraintAnchor2.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + i19, z9);
                }
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, solverVariableCreateObjectVariable, this.mMargin + i19, i16);
            }
        }
        int i20 = this.mBarrierType;
        if (i20 == 0) {
            linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            return;
        }
        if (i20 == 1) {
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
        } else if (i20 == 2) {
            linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
        } else if (i20 == 3) {
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
            linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean allSolved() {
        int i9;
        int i10;
        int i11;
        boolean z8 = true;
        int i12 = 0;
        while (true) {
            i9 = this.mWidgetsCount;
            if (i12 >= i9) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i12];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i10 = this.mBarrierType) == 0 || i10 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i11 = this.mBarrierType) == 2 || i11 == 3) && !constraintWidget.isResolvedVertically()))) {
                z8 = false;
            }
            i12++;
        }
        if (!z8 || i9 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z9 = false;
        for (int i13 = 0; i13 < this.mWidgetsCount; i13++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i13];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z9) {
                    int i14 = this.mBarrierType;
                    if (i14 == 0) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor$Type.LEFT).getFinalValue();
                    } else if (i14 == 1) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor$Type.RIGHT).getFinalValue();
                    } else if (i14 == 2) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor$Type.TOP).getFinalValue();
                    } else if (i14 == 3) {
                        iMax = constraintWidget2.getAnchor(ConstraintAnchor$Type.BOTTOM).getFinalValue();
                    }
                    z9 = true;
                }
                int i15 = this.mBarrierType;
                if (i15 == 0) {
                    iMax = Math.min(iMax, constraintWidget2.getAnchor(ConstraintAnchor$Type.LEFT).getFinalValue());
                } else if (i15 == 1) {
                    iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor$Type.RIGHT).getFinalValue());
                } else if (i15 == 2) {
                    iMax = Math.min(iMax, constraintWidget2.getAnchor(ConstraintAnchor$Type.TOP).getFinalValue());
                } else if (i15 == 3) {
                    iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor$Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i16 = iMax + this.mMargin;
        int i17 = this.mBarrierType;
        if (i17 == 0 || i17 == 1) {
            setFinalHorizontal(i16, i16);
        } else {
            setFinalVertical(i16, i16);
        }
        this.mResolved = true;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAllowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBarrierType() {
        return this.mBarrierType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMargin() {
        return this.mMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        int i9 = this.mBarrierType;
        if (i9 == 0 || i9 == 1) {
            return 0;
        }
        return (i9 == 2 || i9 == 3) ? 1 : -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.mResolved;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.mResolved;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markWidgets() {
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i10 = this.mBarrierType;
                if (i10 == 0 || i10 == 1) {
                    constraintWidget.setInBarrier(0, true);
                } else if (i10 == 2 || i10 == 3) {
                    constraintWidget.setInBarrier(1, true);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAllowsGoneWidget(boolean z8) {
        this.mAllowsGoneWidget = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBarrierType(int i9) {
        this.mBarrierType = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMargin(int i9) {
        this.mMargin = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String string = "[Barrier] " + getDebugName() + " {";
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if (i9 > 0) {
                string = string.concat(", ");
            }
            StringBuilder sbU = a.u(string);
            sbU.append(constraintWidget.getDebugName());
            string = sbU.toString();
        }
        return string.concat("}");
    }

    public Barrier() {
    }
}
