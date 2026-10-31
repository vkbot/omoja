package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BasicMeasure$Measure {
    public static int SELF_DIMENSIONS = 0;
    public static int TRY_GIVEN_DIMENSIONS = 1;
    public static int USE_GIVEN_DIMENSIONS = 2;
    public ConstraintWidget$DimensionBehaviour horizontalBehavior;
    public int horizontalDimension;
    public int measureStrategy;
    public int measuredBaseline;
    public boolean measuredHasBaseline;
    public int measuredHeight;
    public boolean measuredNeedsSolverPass;
    public int measuredWidth;
    public ConstraintWidget$DimensionBehaviour verticalBehavior;
    public int verticalDimension;
}
