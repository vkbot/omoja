package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    private static final boolean DO_NOT_USE = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer mConstraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private BasicMeasure$Measure mMeasure = new BasicMeasure$Measure();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mConstraintWidgetContainer = constraintWidgetContainer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean measure(BasicMeasure$Measurer basicMeasure$Measurer, ConstraintWidget constraintWidget, int i9) {
        this.mMeasure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        BasicMeasure$Measure basicMeasure$Measure = this.mMeasure;
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = i9;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = basicMeasure$Measure.horizontalBehavior;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z8 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
        boolean z9 = basicMeasure$Measure.verticalBehavior == constraintWidget$DimensionBehaviour2;
        boolean z10 = z8 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z11 = z9 && constraintWidget.mDimensionRatio > 0.0f;
        if (z10 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
        }
        if (z11 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
        }
        basicMeasure$Measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        BasicMeasure$Measure basicMeasure$Measure2 = this.mMeasure;
        basicMeasure$Measure2.measureStrategy = BasicMeasure$Measure.SELF_DIMENSIONS;
        return basicMeasure$Measure2.measuredNeedsSolverPass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:56:0x0098 A[PHI: r10
  0x0098: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:54:0x0095, B:52:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    private void measureChildren(ConstraintWidgetContainer constraintWidgetContainer) {
        boolean z8;
        HorizontalWidgetRun horizontalWidgetRun;
        VerticalWidgetRun verticalWidgetRun;
        int size = constraintWidgetContainer.mChildren.size();
        boolean zOptimizeFor = constraintWidgetContainer.optimizeFor(64);
        BasicMeasure$Measurer measurer = constraintWidgetContainer.getMeasurer();
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i9);
            if (!(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !constraintWidget.isInVirtualLayout() && (!zOptimizeFor || (horizontalWidgetRun = constraintWidget.mHorizontalRun) == null || (verticalWidgetRun = constraintWidget.mVerticalRun) == null || !horizontalWidgetRun.mDimension.resolved || !verticalWidgetRun.mDimension.resolved)) {
                ConstraintWidget$DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(0);
                ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = constraintWidget.getDimensionBehaviour(1);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z9 = dimensionBehaviour == constraintWidget$DimensionBehaviour && constraintWidget.mMatchConstraintDefaultWidth != 1 && dimensionBehaviour2 == constraintWidget$DimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight != 1;
                if (!z9 && constraintWidgetContainer.optimizeFor(1) && !(constraintWidget instanceof VirtualLayout)) {
                    if (dimensionBehaviour == constraintWidget$DimensionBehaviour && constraintWidget.mMatchConstraintDefaultWidth == 0 && dimensionBehaviour2 != constraintWidget$DimensionBehaviour && !constraintWidget.isInHorizontalChain()) {
                        z9 = true;
                    }
                    if (dimensionBehaviour2 == constraintWidget$DimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight == 0 && dimensionBehaviour != constraintWidget$DimensionBehaviour && !constraintWidget.isInHorizontalChain()) {
                        z9 = true;
                    }
                    z8 = (!(dimensionBehaviour == constraintWidget$DimensionBehaviour || dimensionBehaviour2 == constraintWidget$DimensionBehaviour) || constraintWidget.mDimensionRatio <= 0.0f) ? z9 : true;
                }
                if (!z8) {
                    measure(measurer, constraintWidget, BasicMeasure$Measure.SELF_DIMENSIONS);
                    Metrics metrics = constraintWidgetContainer.mMetrics;
                    if (metrics != null) {
                        metrics.measuredWidgets++;
                    }
                }
            }
        }
        measurer.didMeasures();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, String str, int i9, int i10, int i11) {
        long jNanoTime = constraintWidgetContainer.mMetrics != null ? System.nanoTime() : 0L;
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i10);
        constraintWidgetContainer.setHeight(i11);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.mConstraintWidgetContainer.setPass(i9);
        this.mConstraintWidgetContainer.layout();
        if (constraintWidgetContainer.mMetrics != null) {
            long jNanoTime2 = System.nanoTime();
            Metrics metrics = constraintWidgetContainer.mMetrics;
            metrics.mSolverPasses++;
            metrics.measuresLayoutDuration = (jNanoTime2 - jNanoTime) + metrics.measuresLayoutDuration;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        long j9;
        boolean zDirectMeasureWithOrientation;
        int i18;
        int i19;
        int i20;
        long j10;
        int i21;
        boolean z8;
        Metrics metrics;
        BasicMeasure basicMeasure = this;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        BasicMeasure$Measurer measurer = constraintWidgetContainer2.getMeasurer();
        int size = constraintWidgetContainer2.mChildren.size();
        int width = constraintWidgetContainer2.getWidth();
        int height = constraintWidgetContainer2.getHeight();
        boolean zEnabled = Optimizer.enabled(i9, 128);
        boolean z9 = zEnabled || Optimizer.enabled(i9, 64);
        if (z9) {
            for (int i22 = 0; i22 < size; i22++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer2.mChildren.get(i22);
                ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z10 = (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour) && (constraintWidget.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour) && constraintWidget.getDimensionRatio() > 0.0f;
                if ((constraintWidget.isInHorizontalChain() && z10) || ((constraintWidget.isInVerticalChain() && z10) || (constraintWidget instanceof VirtualLayout) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z9 = false;
                    break;
                }
            }
        }
        if (z9 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        boolean z11 = z9 & ((i12 == 1073741824 && i14 == 1073741824) || zEnabled);
        int i23 = 2;
        if (z11) {
            j9 = 1;
            int iMin = Math.min(constraintWidgetContainer2.getMaxWidth(), i13);
            int iMin2 = Math.min(constraintWidgetContainer2.getMaxHeight(), i15);
            if (i12 == 1073741824 && constraintWidgetContainer2.getWidth() != iMin) {
                constraintWidgetContainer2.setWidth(iMin);
                constraintWidgetContainer2.invalidateGraph();
            }
            if (i14 == 1073741824 && constraintWidgetContainer2.getHeight() != iMin2) {
                constraintWidgetContainer2.setHeight(iMin2);
                constraintWidgetContainer2.invalidateGraph();
            }
            if (i12 == 1073741824 && i14 == 1073741824) {
                zDirectMeasureWithOrientation = constraintWidgetContainer2.directMeasure(zEnabled);
                i18 = 2;
            } else {
                boolean zDirectMeasureSetup = constraintWidgetContainer2.directMeasureSetup(zEnabled);
                if (i12 == 1073741824) {
                    zDirectMeasureSetup &= constraintWidgetContainer2.directMeasureWithOrientation(zEnabled, 0);
                    i18 = 1;
                } else {
                    i18 = 0;
                }
                if (i14 == 1073741824) {
                    zDirectMeasureWithOrientation = constraintWidgetContainer2.directMeasureWithOrientation(zEnabled, 1) & zDirectMeasureSetup;
                    i18++;
                } else {
                    zDirectMeasureWithOrientation = zDirectMeasureSetup;
                }
            }
            if (zDirectMeasureWithOrientation) {
                constraintWidgetContainer2.updateFromRuns(i12 == 1073741824, i14 == 1073741824);
            }
        } else {
            j9 = 1;
            zDirectMeasureWithOrientation = false;
            i18 = 0;
        }
        long jNanoTime = 0;
        if (!zDirectMeasureWithOrientation || i18 != 2) {
            int optimizationLevel = constraintWidgetContainer2.getOptimizationLevel();
            if (size > 0) {
                measureChildren(constraintWidgetContainer);
            }
            jNanoTime = constraintWidgetContainer2.mMetrics != null ? System.nanoTime() : 0L;
            updateHierarchy(constraintWidgetContainer);
            int size2 = basicMeasure.mVariableDimensionsWidgets.size();
            if (size > 0) {
                basicMeasure.solveLinearSystem(constraintWidgetContainer2, "First pass", 0, width, height);
                i19 = width;
                i20 = height;
            } else {
                i19 = width;
                i20 = height;
            }
            if (size2 > 0) {
                ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidgetContainer2.getHorizontalDimensionBehaviour();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                boolean z12 = horizontalDimensionBehaviour2 == constraintWidget$DimensionBehaviour2;
                boolean z13 = constraintWidgetContainer2.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2;
                int iMax = Math.max(constraintWidgetContainer2.getWidth(), basicMeasure.mConstraintWidgetContainer.getMinWidth());
                int iMax2 = Math.max(constraintWidgetContainer2.getHeight(), basicMeasure.mConstraintWidgetContainer.getMinHeight());
                int i24 = 0;
                boolean zNeedSolverPass = false;
                while (i24 < size2) {
                    ConstraintWidget constraintWidget2 = basicMeasure.mVariableDimensionsWidgets.get(i24);
                    boolean z14 = z11;
                    if (constraintWidget2 instanceof VirtualLayout) {
                        int width2 = constraintWidget2.getWidth();
                        int height2 = constraintWidget2.getHeight();
                        boolean zMeasure = zNeedSolverPass | basicMeasure.measure(measurer, constraintWidget2, BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS);
                        Metrics metrics2 = constraintWidgetContainer2.mMetrics;
                        if (metrics2 != null) {
                            metrics2.measuredMatchWidgets += j9;
                        }
                        int width3 = constraintWidget2.getWidth();
                        int height3 = constraintWidget2.getHeight();
                        if (width3 != width2) {
                            constraintWidget2.setWidth(width3);
                            if (z12 && constraintWidget2.getRight() > iMax) {
                                iMax = Math.max(iMax, constraintWidget2.getAnchor(ConstraintAnchor$Type.RIGHT).getMargin() + constraintWidget2.getRight());
                            }
                            z8 = true;
                        } else {
                            z8 = zMeasure;
                        }
                        if (height3 != height2) {
                            constraintWidget2.setHeight(height3);
                            if (z13 && constraintWidget2.getBottom() > iMax2) {
                                iMax2 = Math.max(iMax2, constraintWidget2.getAnchor(ConstraintAnchor$Type.BOTTOM).getMargin() + constraintWidget2.getBottom());
                            }
                            z8 = true;
                        }
                        zNeedSolverPass = z8 | ((VirtualLayout) constraintWidget2).needSolverPass();
                    }
                    i24++;
                    i19 = i19;
                    i20 = i20;
                    z11 = z14;
                    jNanoTime = jNanoTime;
                    i23 = 2;
                }
                boolean z15 = z11;
                j10 = jNanoTime;
                int i25 = i19;
                int i26 = i20;
                int i27 = i23;
                int i28 = 0;
                while (i28 < i27) {
                    int i29 = 0;
                    while (i29 < size2) {
                        ConstraintWidget constraintWidget3 = basicMeasure.mVariableDimensionsWidgets.get(i29);
                        if (((constraintWidget3 instanceof Helper) && !(constraintWidget3 instanceof VirtualLayout)) || (constraintWidget3 instanceof Guideline) || constraintWidget3.getVisibility() == 8 || ((z15 && constraintWidget3.mHorizontalRun.mDimension.resolved && constraintWidget3.mVerticalRun.mDimension.resolved) || (constraintWidget3 instanceof VirtualLayout))) {
                            i21 = i28;
                        } else {
                            int width4 = constraintWidget3.getWidth();
                            int height4 = constraintWidget3.getHeight();
                            int baselineDistance = constraintWidget3.getBaselineDistance();
                            int i30 = BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS;
                            if (i28 == 1) {
                                i30 = BasicMeasure$Measure.USE_GIVEN_DIMENSIONS;
                            }
                            boolean zMeasure2 = zNeedSolverPass | basicMeasure.measure(measurer, constraintWidget3, i30);
                            Metrics metrics3 = constraintWidgetContainer2.mMetrics;
                            i21 = i28;
                            if (metrics3 != null) {
                                metrics3.measuredMatchWidgets += j9;
                            }
                            int width5 = constraintWidget3.getWidth();
                            int height5 = constraintWidget3.getHeight();
                            if (width5 != width4) {
                                constraintWidget3.setWidth(width5);
                                if (z12 && constraintWidget3.getRight() > iMax) {
                                    iMax = Math.max(iMax, constraintWidget3.getAnchor(ConstraintAnchor$Type.RIGHT).getMargin() + constraintWidget3.getRight());
                                }
                                zMeasure2 = true;
                            }
                            if (height5 != height4) {
                                constraintWidget3.setHeight(height5);
                                if (z13 && constraintWidget3.getBottom() > iMax2) {
                                    iMax2 = Math.max(iMax2, constraintWidget3.getAnchor(ConstraintAnchor$Type.BOTTOM).getMargin() + constraintWidget3.getBottom());
                                }
                                zMeasure2 = true;
                            }
                            zNeedSolverPass = (!constraintWidget3.hasBaseline() || baselineDistance == constraintWidget3.getBaselineDistance()) ? zMeasure2 : true;
                        }
                        i29++;
                        basicMeasure = this;
                        constraintWidgetContainer2 = constraintWidgetContainer;
                        i28 = i21;
                    }
                    int i31 = i28;
                    if (!zNeedSolverPass) {
                        constraintWidgetContainer2 = constraintWidgetContainer;
                        break;
                    }
                    i28 = i31 + 1;
                    solveLinearSystem(constraintWidgetContainer, "intermediate pass", i28, i25, i26);
                    basicMeasure = this;
                    constraintWidgetContainer2 = constraintWidgetContainer;
                    i27 = 2;
                    zNeedSolverPass = false;
                }
            } else {
                j10 = jNanoTime;
            }
            constraintWidgetContainer2.setOptimizationLevel(optimizationLevel);
            jNanoTime = j10;
        }
        return constraintWidgetContainer2.mMetrics != null ? System.nanoTime() - jNanoTime : jNanoTime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mVariableDimensionsWidgets.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i9);
            ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
            if (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour || constraintWidget.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour) {
                this.mVariableDimensionsWidgets.add(constraintWidget);
            }
        }
        constraintWidgetContainer.invalidateGraph();
    }
}
