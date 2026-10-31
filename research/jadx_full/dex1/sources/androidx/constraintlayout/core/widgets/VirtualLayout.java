package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VirtualLayout extends HelperWidget {
    private int mPaddingTop = 0;
    private int mPaddingBottom = 0;
    private int mPaddingLeft = 0;
    private int mPaddingRight = 0;
    private int mPaddingStart = 0;
    private int mPaddingEnd = 0;
    private int mResolvedPaddingLeft = 0;
    private int mResolvedPaddingRight = 0;
    private boolean mNeedsCallFromSolver = false;
    private int mMeasuredWidth = 0;
    private int mMeasuredHeight = 0;
    protected BasicMeasure$Measure mMeasure = new BasicMeasure$Measure();
    BasicMeasure$Measurer mMeasurer = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyRtl(boolean z8) {
        int i9 = this.mPaddingStart;
        if (i9 > 0 || this.mPaddingEnd > 0) {
            if (z8) {
                this.mResolvedPaddingLeft = this.mPaddingEnd;
                this.mResolvedPaddingRight = i9;
            } else {
                this.mResolvedPaddingLeft = i9;
                this.mResolvedPaddingRight = this.mPaddingEnd;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void captureWidgets() {
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget = this.mWidgets[i9];
            if (constraintWidget != null) {
                constraintWidget.setInVirtualLayout(true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean contains(HashSet<ConstraintWidget> hashSet) {
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            if (hashSet.contains(this.mWidgets[i9])) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMeasuredHeight() {
        return this.mMeasuredHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMeasuredWidth() {
        return this.mMeasuredWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingLeft() {
        return this.mResolvedPaddingLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingRight() {
        return this.mResolvedPaddingRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measure(ConstraintWidget constraintWidget, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i9, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i10) {
        while (this.mMeasurer == null && getParent() != null) {
            this.mMeasurer = ((ConstraintWidgetContainer) getParent()).getMeasurer();
        }
        BasicMeasure$Measure basicMeasure$Measure = this.mMeasure;
        basicMeasure$Measure.horizontalBehavior = constraintWidget$DimensionBehaviour;
        basicMeasure$Measure.verticalBehavior = constraintWidget$DimensionBehaviour2;
        basicMeasure$Measure.horizontalDimension = i9;
        basicMeasure$Measure.verticalDimension = i10;
        this.mMeasurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean measureChildren() {
        ConstraintWidget constraintWidget = this.mParent;
        BasicMeasure$Measurer measurer = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).getMeasurer() : null;
        if (measurer == null) {
            return false;
        }
        for (int i9 = 0; i9 < this.mWidgetsCount; i9++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i9];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget$DimensionBehaviour dimensionBehaviour = constraintWidget2.getDimensionBehaviour(0);
                ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = constraintWidget2.getDimensionBehaviour(1);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour != constraintWidget$DimensionBehaviour || constraintWidget2.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != constraintWidget$DimensionBehaviour || constraintWidget2.mMatchConstraintDefaultHeight == 1) {
                    if (dimensionBehaviour == constraintWidget$DimensionBehaviour) {
                        dimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    }
                    if (dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        dimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure$Measure basicMeasure$Measure = this.mMeasure;
                    basicMeasure$Measure.horizontalBehavior = dimensionBehaviour;
                    basicMeasure$Measure.verticalBehavior = dimensionBehaviour2;
                    basicMeasure$Measure.horizontalDimension = constraintWidget2.getWidth();
                    this.mMeasure.verticalDimension = constraintWidget2.getHeight();
                    measurer.measure(constraintWidget2, this.mMeasure);
                    constraintWidget2.setWidth(this.mMeasure.measuredWidth);
                    constraintWidget2.setHeight(this.mMeasure.measuredHeight);
                    constraintWidget2.setBaselineDistance(this.mMeasure.measuredBaseline);
                }
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean needSolverPass() {
        return this.mNeedsCallFromSolver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void needsCallbackFromSolver(boolean z8) {
        this.mNeedsCallFromSolver = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasure(int i9, int i10) {
        this.mMeasuredWidth = i9;
        this.mMeasuredHeight = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPadding(int i9) {
        this.mPaddingLeft = i9;
        this.mPaddingTop = i9;
        this.mPaddingRight = i9;
        this.mPaddingBottom = i9;
        this.mPaddingStart = i9;
        this.mPaddingEnd = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingBottom(int i9) {
        this.mPaddingBottom = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingEnd(int i9) {
        this.mPaddingEnd = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingLeft(int i9) {
        this.mPaddingLeft = i9;
        this.mResolvedPaddingLeft = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingRight(int i9) {
        this.mPaddingRight = i9;
        this.mResolvedPaddingRight = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingStart(int i9) {
        this.mPaddingStart = i9;
        this.mResolvedPaddingLeft = i9;
        this.mResolvedPaddingRight = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingTop(int i9) {
        this.mPaddingTop = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.Helper
    public void updateConstraints(ConstraintWidgetContainer constraintWidgetContainer) {
        captureWidgets();
    }

    public void measure(int i9, int i10, int i11, int i12) {
    }
}
