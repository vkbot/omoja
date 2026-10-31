package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget$DimensionBehaviour mDimensionBehavior;
    RunGroup mRunGroup;
    ConstraintWidget mWidget;
    public int matchConstraintsType;
    DimensionDependency mDimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean mResolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected WidgetRun$RunType mRunType = WidgetRun$RunType.NONE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetRun(ConstraintWidget constraintWidget) {
        this.mWidget = constraintWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resolveDimension(int i9, int i10) {
        int i11 = this.matchConstraintsType;
        if (i11 == 0) {
            this.mDimension.resolve(getLimitedDimension(i10, i9));
            return;
        }
        if (i11 == 1) {
            this.mDimension.resolve(Math.min(getLimitedDimension(this.mDimension.wrapValue, i9), i10));
            return;
        }
        if (i11 == 2) {
            ConstraintWidget parent = this.mWidget.getParent();
            if (parent != null) {
                DimensionDependency dimensionDependency = (i9 == 0 ? parent.mHorizontalRun : parent.mVerticalRun).mDimension;
                if (dimensionDependency.resolved) {
                    ConstraintWidget constraintWidget = this.mWidget;
                    this.mDimension.resolve(getLimitedDimension((int) ((dimensionDependency.value * (i9 == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i9));
                    return;
                }
                return;
            }
            return;
        }
        if (i11 != 3) {
            return;
        }
        ConstraintWidget constraintWidget2 = this.mWidget;
        WidgetRun widgetRun = constraintWidget2.mHorizontalRun;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = widgetRun.mDimensionBehavior;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && widgetRun.matchConstraintsType == 3) {
            VerticalWidgetRun verticalWidgetRun = constraintWidget2.mVerticalRun;
            if (verticalWidgetRun.mDimensionBehavior == constraintWidget$DimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                return;
            }
        }
        if (i9 == 0) {
            widgetRun = constraintWidget2.mVerticalRun;
        }
        if (widgetRun.mDimension.resolved) {
            float dimensionRatio = constraintWidget2.getDimensionRatio();
            DimensionDependency dimensionDependency2 = widgetRun.mDimension;
            this.mDimension.resolve(i9 == 1 ? (int) ((dimensionDependency2.value / dimensionRatio) + 0.5f) : (int) ((dimensionRatio * dimensionDependency2.value) + 0.5f));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i9, DimensionDependency dimensionDependency) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mTargets.add(this.mDimension);
        dependencyNode.mMarginFactor = i9;
        dependencyNode.mMarginDependency = dimensionDependency;
        dependencyNode2.mDependencies.add(dependencyNode);
        dimensionDependency.mDependencies.add(dependencyNode);
    }

    public abstract void apply();

    public abstract void applyToWidget();

    public abstract void clear();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getLimitedDimension(int i9, int i10) {
        ConstraintWidget constraintWidget = this.mWidget;
        if (i10 == 0) {
            int i11 = constraintWidget.mMatchConstraintMaxWidth;
            int iMax = Math.max(constraintWidget.mMatchConstraintMinWidth, i9);
            if (i11 > 0) {
                iMax = Math.min(i11, i9);
            }
            if (iMax != i9) {
                return iMax;
            }
        } else {
            int i12 = constraintWidget.mMatchConstraintMaxHeight;
            int iMax2 = Math.max(constraintWidget.mMatchConstraintMinHeight, i9);
            if (i12 > 0) {
                iMax2 = Math.min(i12, i9);
            }
            if (iMax2 != i9) {
                return iMax2;
            }
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i9 = WidgetRun$1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i9 == 1) {
            return constraintWidget.mHorizontalRun.start;
        }
        if (i9 == 2) {
            return constraintWidget.mHorizontalRun.end;
        }
        if (i9 == 3) {
            return constraintWidget.mVerticalRun.start;
        }
        if (i9 == 4) {
            return constraintWidget.mVerticalRun.baseline;
        }
        if (i9 != 5) {
            return null;
        }
        return constraintWidget.mVerticalRun.end;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getWrapDimension() {
        DimensionDependency dimensionDependency = this.mDimension;
        if (dimensionDependency.resolved) {
            return dimensionDependency.value;
        }
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCenterConnection() {
        int size = this.start.mTargets.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            if (this.start.mTargets.get(i10).mRun != this) {
                i9++;
            }
        }
        int size2 = this.end.mTargets.size();
        for (int i11 = 0; i11 < size2; i11++) {
            if (this.end.mTargets.get(i11).mRun != this) {
                i9++;
            }
        }
        return i9 >= 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDimensionResolved() {
        return this.mDimension.resolved;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isResolved() {
        return this.mResolved;
    }

    public abstract void reset();

    public abstract boolean supportsWrapComputation();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i9) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = constraintAnchor.getMargin() + target.value;
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i10 = margin2 - margin;
            if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i9, i10);
            }
            DimensionDependency dimensionDependency = this.mDimension;
            if (dimensionDependency.resolved) {
                if (dimensionDependency.value == i10) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.mWidget;
                float horizontalBiasPercent = i9 == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) ((((margin2 - margin) - this.mDimension.value) * horizontalBiasPercent) + margin + 0.5f));
                this.end.resolve(this.start.value + this.mDimension.value);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long wrapSize(int i9) {
        DimensionDependency dimensionDependency = this.mDimension;
        if (!dimensionDependency.resolved) {
            return 0L;
        }
        long j9 = dimensionDependency.value;
        if (isCenterConnection()) {
            return j9 + ((long) (this.start.mMargin - this.end.mMargin));
        }
        return i9 == 0 ? j9 + ((long) this.start.mMargin) : j9 - ((long) this.end.mMargin);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    public void updateRunEnd(Dependency dependency) {
    }

    public void updateRunStart(Dependency dependency) {
    }

    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i9) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mMargin = i9;
        dependencyNode2.mDependencies.add(dependencyNode);
    }

    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i9) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i9 == 0 ? constraintWidget.mHorizontalRun : constraintWidget.mVerticalRun;
        int i10 = WidgetRun$1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }
}
