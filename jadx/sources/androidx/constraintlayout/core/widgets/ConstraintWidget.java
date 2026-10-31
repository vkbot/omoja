package androidx.constraintlayout.core.widgets;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    private static final boolean DO_NOT_USE = false;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    public WidgetFrame frame;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public boolean[] isTerminalWidget;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    public float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    boolean mGroupsToSolver;
    private boolean mHasBaseline;
    int mHeight;
    private int mHeightOverride;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    public HorizontalWidgetRun mHorizontalRun;
    private boolean mHorizontalSolvingPass;
    boolean mHorizontalWrapVisited;
    private boolean mInPlaceholder;
    private boolean mInVirtualLayout;
    public boolean mIsHeightWrapContent;
    private boolean[] mIsInBarrier;
    public boolean mIsWidthWrapContent;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    private boolean mMeasureRequested;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    private boolean mOptimizeWrapO;
    private boolean mOptimizeWrapOnResolved;
    public ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    boolean mResolvedHasRatio;
    private boolean mResolvedHorizontal;
    public int[] mResolvedMatchConstraintDefault;
    private boolean mResolvedVertical;
    public ConstraintAnchor mRight;
    boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    public VerticalWidgetRun mVerticalRun;
    private boolean mVerticalSolvingPass;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWidthOverride;
    private int mWrapBehaviorInParent;

    /* JADX INFO: renamed from: mX */
    protected int f309mX;

    /* JADX INFO: renamed from: mY */
    protected int f310mY;
    public boolean measured;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C02801 {

        /* JADX INFO: renamed from: $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f311x6930e354;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f311x6930e354 = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f311x6930e354[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.f309mX = 0;
        this.f310mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f8 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f8;
        this.mVerticalBiasPercent = f8;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
        setDebugName(str);
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Code duplicated, block: B:306:0x0498 A[PHI: r7
  0x0498: PHI (r7v15 int) = (r7v14 int), (r7v19 int), (r7v19 int), (r7v19 int) binds: [B:299:0x0488, B:301:0x048e, B:302:0x0490, B:304:0x0494] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:368:0x0542  */
    private void applyConstraints(LinearSystem linearSystem, boolean z9, boolean z10, boolean z11, boolean z12, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z13, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10, int i11, int i12, int i13, float f8, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, int i14, int i15, int i16, int i17, float f10, boolean z19) {
        boolean z20;
        boolean z21;
        boolean z22;
        int iMin;
        int i18;
        SolverVariable solverVariable3;
        boolean z23;
        boolean z24;
        int i19;
        int i20;
        SolverVariable solverVariableCreateObjectVariable;
        SolverVariable solverVariableCreateObjectVariable2;
        boolean z25;
        ConstraintAnchor constraintAnchor3;
        int i21;
        int i22;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget;
        boolean z30;
        int iMin2;
        int i23;
        boolean z31;
        int i24;
        int i25;
        int i26;
        boolean z32;
        int i27;
        int i28;
        int i29;
        boolean z33;
        ConstraintWidget constraintWidget2;
        int i30;
        ConstraintWidget constraintWidget3;
        linearSystem = linearSystem;
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable solverVariableCreateObjectVariable6 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean zIsConnected = constraintAnchor.isConnected();
        boolean zIsConnected2 = constraintAnchor2.isConnected();
        boolean zIsConnected3 = this.mCenter.isConnected();
        int i31 = zIsConnected2 ? (zIsConnected ? 1 : 0) + 1 : zIsConnected ? 1 : 0;
        if (zIsConnected3) {
            i31++;
        }
        int i32 = z14 ? 3 : i14;
        SolverVariable solverVariable5 = solverVariableCreateObjectVariable6;
        int iOrdinal = dimensionBehaviour.ordinal();
        boolean z34 = (iOrdinal == 0 || iOrdinal == 1 || iOrdinal != 2 || i32 == 4) ? false : true;
        int i33 = this.mWidthOverride;
        if (i33 == -1 || !z9) {
            i33 = i11;
            z20 = z34;
        } else {
            this.mWidthOverride = -1;
            z20 = false;
        }
        int i34 = this.mHeightOverride;
        if (i34 == -1 || z9) {
            z21 = z20;
        } else {
            this.mHeightOverride = -1;
            i33 = i34;
            z21 = false;
        }
        int i35 = i33;
        if (this.mVisibility == 8) {
            z22 = false;
            iMin = 0;
        } else {
            z22 = z21;
            iMin = i35;
        }
        if (z19) {
            if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, i10);
            } else if (zIsConnected && !zIsConnected2) {
                i18 = 8;
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
            }
            i18 = 8;
        } else {
            i18 = 8;
        }
        if (z22 == 0) {
            if (z13) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 3);
                if (i12 > 0) {
                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i12, 8);
                }
                if (i13 < Integer.MAX_VALUE) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i13, 8);
                }
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, i18);
            }
            i20 = i17;
            solverVariable3 = solverVariableCreateObjectVariable4;
            i31 = i31 == true ? 1 : 0;
            solverVariable5 = solverVariable5;
            z23 = z22;
            z24 = z12;
            i19 = i16;
        } else if (i31 == 2 || z14 || !(i32 == 1 || i32 == 0)) {
            int i36 = i16 == -2 ? iMin : i16;
            int i37 = i17 == -2 ? iMin : i17;
            if (iMin > 0 && i32 != 1) {
                iMin = 0;
            }
            if (i36 > 0) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i36, 8);
                iMin = Math.max(iMin, i36);
            }
            if (i37 > 0) {
                if (!z10 || i32 != 1) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i37, 8);
                }
                iMin = Math.min(iMin, i37);
            }
            if (i32 == 1) {
                if (z10) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else if (z16) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                }
                solverVariable3 = solverVariableCreateObjectVariable4;
                solverVariable5 = solverVariable5;
                z23 = z22;
                z24 = z12;
                i19 = i36;
                i20 = i37;
                i31 = i31 == true ? 1 : 0;
            } else {
                if (i32 == 2) {
                    ConstraintAnchor.Type type = constraintAnchor.getType();
                    ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                    if (type == type2 || constraintAnchor.getType() == ConstraintAnchor.Type.BOTTOM) {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(type2));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.BOTTOM));
                    } else {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.RIGHT));
                    }
                    SolverVariable solverVariable6 = solverVariableCreateObjectVariable2;
                    solverVariable3 = solverVariableCreateObjectVariable4;
                    linearSystem.addConstraint(linearSystem.createRow().createRowDimensionRatio(solverVariable3, solverVariableCreateObjectVariable3, solverVariable6, solverVariableCreateObjectVariable, f10));
                    if (z10) {
                        z22 = false;
                    }
                    z24 = z12;
                    z23 = z22;
                } else {
                    solverVariable3 = solverVariableCreateObjectVariable4;
                    z23 = z22;
                    z24 = true;
                }
                i19 = i36;
                i20 = i37;
            }
        } else {
            int iMax = Math.max(i16, iMin);
            if (i17 > 0) {
                iMax = Math.min(i17, iMax);
            }
            linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMax, 8);
            i19 = i16;
            i20 = i17;
            solverVariable3 = solverVariableCreateObjectVariable4;
            i31 = i31 == true ? 1 : 0;
            solverVariable5 = solverVariable5;
            z23 = false;
            z24 = z12;
        }
        if (!z19 || z16) {
            if (i31 < 2 && z10 && z24) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 8);
                boolean z35 = z9 || this.mBaseline.mTarget == null;
                if (z9 || (constraintAnchor3 = this.mBaseline.mTarget) == null) {
                    z25 = z35;
                } else {
                    ConstraintWidget constraintWidget4 = constraintAnchor3.mOwner;
                    if (constraintWidget4.mDimensionRatio != 0.0f) {
                        DimensionBehaviour[] dimensionBehaviourArr = constraintWidget4.mListDimensionBehaviors;
                        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                        if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                    } else {
                        z25 = false;
                    }
                }
                if (z25) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariable3, 0, 8);
                    return;
                }
                return;
            }
            return;
        }
        if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
            i24 = 5;
            z30 = z10;
            i30 = i24;
        } else if (!zIsConnected || zIsConnected2) {
            if (zIsConnected || !zIsConnected2) {
                if (zIsConnected && zIsConnected2) {
                    ConstraintWidget constraintWidget5 = constraintAnchor.mTarget.mOwner;
                    ConstraintWidget constraintWidget6 = constraintAnchor2.mTarget.mOwner;
                    ConstraintWidget parent = getParent();
                    int i38 = 6;
                    if (z23) {
                        if (i32 == 0) {
                            if (i20 != 0 || i19 != 0) {
                                z28 = false;
                                i29 = 5;
                                i21 = 5;
                                z33 = true;
                                z27 = true;
                            } else if (solverVariableCreateObjectVariable5.isFinalValue && solverVariable5.isFinalValue) {
                                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
                                linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), 8);
                                return;
                            } else {
                                z33 = false;
                                z27 = false;
                                i29 = 8;
                                i21 = 8;
                                z28 = true;
                            }
                            if ((constraintWidget5 instanceof Barrier) || (constraintWidget6 instanceof Barrier)) {
                                i21 = 4;
                            }
                            z26 = z33;
                            i22 = i29;
                            solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                            i38 = 6;
                        } else {
                            if (i32 == 2) {
                                i21 = ((constraintWidget5 instanceof Barrier) || (constraintWidget6 instanceof Barrier)) ? 4 : 5;
                                i22 = 5;
                            } else if (i32 == 1) {
                                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                solverVariable5 = solverVariable5;
                                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                i38 = 6;
                                i21 = 4;
                                i22 = 8;
                            } else if (i32 == 3) {
                                if (this.mResolvedDimensionRatioSide == -1) {
                                    if (z17) {
                                        linearSystem = linearSystem;
                                        solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                        solverVariable5 = solverVariable5;
                                        solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                        i38 = z10 ? 5 : 4;
                                    } else {
                                        linearSystem = linearSystem;
                                        solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                        solverVariable5 = solverVariable5;
                                        solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                        i38 = 8;
                                    }
                                    i21 = 5;
                                    i22 = 8;
                                } else {
                                    if (z14) {
                                        if (i15 == 2 || i15 == 1) {
                                            i27 = 5;
                                            i28 = 4;
                                        } else {
                                            i27 = 8;
                                            i28 = 5;
                                        }
                                        i22 = i27;
                                        i21 = i28;
                                    } else {
                                        if (i20 > 0) {
                                            i21 = 5;
                                        } else if (i20 != 0 || i19 != 0) {
                                            i21 = 4;
                                        } else if (z17) {
                                            i22 = (constraintWidget5 == parent || constraintWidget6 == parent) ? 5 : 4;
                                            i21 = 4;
                                        } else {
                                            i21 = 8;
                                        }
                                        i22 = 5;
                                    }
                                    z26 = true;
                                    z27 = true;
                                    z28 = true;
                                    linearSystem = linearSystem;
                                }
                                z26 = true;
                                z27 = true;
                                z28 = true;
                            } else {
                                linearSystem = linearSystem;
                                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                solverVariable5 = solverVariable5;
                                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                i38 = 6;
                                i21 = 4;
                                i22 = 5;
                                z26 = false;
                                z27 = false;
                                z28 = false;
                            }
                            z26 = true;
                            z27 = true;
                            z28 = false;
                        }
                    } else {
                        if (solverVariableCreateObjectVariable5.isFinalValue && solverVariable5.isFinalValue) {
                            SolverVariable solverVariable7 = solverVariable5;
                            linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f8, solverVariable7, solverVariable3, constraintAnchor2.getMargin(), 8);
                            if (z10 && z24) {
                                int margin = constraintAnchor2.mTarget != null ? constraintAnchor2.getMargin() : 0;
                                if (solverVariable7 != solverVariable2) {
                                    linearSystem.addGreaterThan(solverVariable2, solverVariable3, margin, 5);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        linearSystem = linearSystem;
                        solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                        solverVariable5 = solverVariable5;
                        solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                        i38 = 6;
                        i21 = 4;
                        i22 = 5;
                        z26 = true;
                        z27 = true;
                        z28 = false;
                    }
                    if (z27 && solverVariableCreateObjectVariable5 == solverVariable5 && constraintWidget5 != parent) {
                        z27 = false;
                        z29 = false;
                    } else {
                        z29 = true;
                    }
                    if (z26) {
                        if (z23 || z15 || z17 || solverVariableCreateObjectVariable5 != solverVariable || solverVariable5 != solverVariable2) {
                            i26 = i38;
                            z32 = z10;
                        } else {
                            i26 = 8;
                            z32 = false;
                            i22 = 8;
                            z29 = false;
                        }
                        solverVariable4 = solverVariable;
                        z10 = z32;
                        constraintWidget = constraintWidget6;
                        SolverVariable solverVariable8 = solverVariable3;
                        linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f8, solverVariable5, solverVariable8, constraintAnchor2.getMargin(), i26);
                        solverVariable5 = solverVariable5;
                        solverVariable3 = solverVariable8;
                    } else {
                        solverVariable5 = solverVariable5;
                        solverVariable4 = solverVariable;
                        constraintWidget = constraintWidget6;
                    }
                    z30 = z10;
                    if (this.mVisibility == 8 && !constraintAnchor2.hasDependents()) {
                        return;
                    }
                    if (z27) {
                        int i39 = (!z30 || solverVariableCreateObjectVariable5 == solverVariable5 || z23 || !((constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier))) ? i22 : 6;
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i39);
                        linearSystem.addLowerThan(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), i39);
                        i22 = i39;
                    }
                    if (!z30 || !z18 || (constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier) || constraintWidget == parent) {
                        iMin2 = i21;
                        i23 = i22;
                        z31 = z29;
                    } else {
                        iMin2 = 6;
                        i23 = 6;
                        z31 = true;
                    }
                    if (z31) {
                        if (z28 && (!z17 || z11)) {
                            if (constraintWidget5 != parent && constraintWidget != parent) {
                                i38 = iMin2;
                            }
                            if ((constraintWidget5 instanceof Guideline) || (constraintWidget instanceof Guideline)) {
                                i38 = 5;
                            }
                            if ((constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier)) {
                                i38 = 5;
                            }
                            iMin2 = Math.max(z17 ? 5 : i38, iMin2);
                        }
                        if (z30) {
                            iMin2 = Math.min(i23, iMin2);
                            if (z14 && !z17 && (constraintWidget5 == parent || constraintWidget == parent)) {
                                i25 = 4;
                            } else {
                                i25 = iMin2;
                            }
                        } else {
                            i25 = iMin2;
                        }
                        linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i25);
                        linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), i25);
                    }
                    if (z30) {
                        int margin2 = solverVariable4 == solverVariableCreateObjectVariable5 ? constraintAnchor.getMargin() : 0;
                        if (solverVariableCreateObjectVariable5 != solverVariable4) {
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable4, margin2, 5);
                        }
                    }
                    if (!z30 || !z23 || i12 != 0 || i19 != 0) {
                        i24 = 5;
                    } else if (z23 && i32 == 3) {
                        linearSystem.addGreaterThan(solverVariable3, solverVariableCreateObjectVariable3, 0, 8);
                        i24 = 5;
                    } else {
                        i24 = 5;
                        linearSystem.addGreaterThan(solverVariable3, solverVariableCreateObjectVariable3, 0, 5);
                    }
                }
                i30 = i24;
            } else {
                linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), 8);
                if (z10) {
                    if (this.mOptimizeWrapO && solverVariableCreateObjectVariable3.isFinalValue && (constraintWidget2 = this.mParent) != null) {
                        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                        if (z9) {
                            constraintWidgetContainer.addHorizontalWrapMinVariable(constraintAnchor);
                        } else {
                            constraintWidgetContainer.addVerticalWrapMinVariable(constraintAnchor);
                        }
                    } else {
                        i24 = 5;
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 5);
                    }
                }
                z30 = z10;
                i30 = i24;
            }
            i24 = 5;
            z30 = z10;
            i30 = i24;
        } else {
            SolverVariable solverVariable9 = solverVariable5;
            i30 = (z10 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
            solverVariable5 = solverVariable9;
            z30 = z10;
        }
        if (z30 && z24) {
            int margin3 = constraintAnchor2.mTarget != null ? constraintAnchor2.getMargin() : 0;
            if (solverVariable5 != solverVariable2) {
                if (!this.mOptimizeWrapO || !solverVariable3.isFinalValue || (constraintWidget3 = this.mParent) == null) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariable3, margin3, i30);
                    return;
                }
                ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget3;
                if (z9) {
                    constraintWidgetContainer2.addHorizontalWrapMaxVariable(constraintAnchor2);
                } else {
                    constraintWidgetContainer2.addVerticalWrapMaxVariable(constraintAnchor2);
                }
            }
        }
    }

    private boolean isChainHead(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i11 = i10 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i11];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i11 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    private void serializeAnchor(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(constraintAnchor.mGoneMargin);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, String str2, String str3) {
        if (str3.equals(str2)) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(str2);
        sb.append(",\n");
    }

    private void serializeCircle(StringBuilder sb, ConstraintAnchor constraintAnchor, float f8) {
        if (constraintAnchor.mTarget == null || Float.isNaN(f8)) {
            return;
        }
        sb.append("circle : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(f8);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    private void serializeDimensionRatio(StringBuilder sb, String str, float f8, int i10) {
        if (f8 == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f8);
        sb.append(",");
        sb.append(i10);
        sb.append("");
        sb.append("],\n");
    }

    private void serializeSize(StringBuilder sb, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f8, float f10) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "size", i10, Integer.MIN_VALUE);
        serializeAttribute(sb, "min", i11, 0);
        serializeAttribute(sb, "max", i12, Integer.MAX_VALUE);
        serializeAttribute(sb, "matchMin", i14, 0);
        serializeAttribute(sb, "matchDef", i15, 0);
        serializeAttribute(sb, "matchPercent", i15, 1);
        serializeAttribute(sb, "matchConstraintPercent", f8, 1.0f);
        serializeAttribute(sb, "weight", f10, 1.0f);
        serializeAttribute(sb, "override", i13, 1);
        sb.append("},\n");
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i10, boolean z9) {
        if (z9) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i10 == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
    }

    public boolean addFirst() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* JADX WARN: Code duplicated, block: B:192:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:194:0x02fb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:196:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:199:0x0303  */
    /* JADX WARN: Code duplicated, block: B:19:0x004d  */
    /* JADX WARN: Code duplicated, block: B:203:0x030d  */
    /* JADX WARN: Code duplicated, block: B:206:0x0319  */
    /* JADX WARN: Code duplicated, block: B:209:0x0320  */
    /* JADX WARN: Code duplicated, block: B:211:0x0324  */
    /* JADX WARN: Code duplicated, block: B:214:0x033f  */
    /* JADX WARN: Code duplicated, block: B:235:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:250:0x0439  */
    /* JADX WARN: Code duplicated, block: B:267:0x048b  */
    /* JADX WARN: Code duplicated, block: B:270:0x049b  */
    /* JADX WARN: Code duplicated, block: B:271:0x049d  */
    /* JADX WARN: Code duplicated, block: B:273:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:310:0x0578  */
    /* JADX WARN: Code duplicated, block: B:312:0x057f  */
    /* JADX WARN: Code duplicated, block: B:314:0x0588  */
    /* JADX WARN: Code duplicated, block: B:315:0x0595  */
    /* JADX WARN: Code duplicated, block: B:316:0x0598  */
    /* JADX WARN: Code duplicated, block: B:319:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:322:0x05d5  */
    /* JADX WARN: Code duplicated, block: B:325:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public void addToSolver(LinearSystem linearSystem, boolean z9) {
        boolean z10;
        boolean z11;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean zIsInHorizontalChain;
        boolean zIsInVerticalChain;
        int i10;
        SolverVariable solverVariable;
        int i11;
        int i12;
        int i13;
        boolean z12;
        int i14;
        boolean z13;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        boolean z14;
        SolverVariable solverVariable2;
        int i15;
        boolean z15;
        boolean z16;
        boolean z17;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        int i16;
        char c;
        int i17;
        int i18;
        int i19;
        LinearSystem linearSystem2;
        Metrics metrics;
        int i20;
        float f8;
        boolean z18;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int i21;
        int i22;
        int i23;
        HorizontalWidgetRun horizontalWidgetRun2;
        VerticalWidgetRun verticalWidgetRun2;
        LinearSystem linearSystem3 = linearSystem;
        SolverVariable solverVariableCreateObjectVariable = linearSystem3.createObjectVariable(this.mLeft);
        SolverVariable solverVariableCreateObjectVariable2 = linearSystem3.createObjectVariable(this.mRight);
        SolverVariable solverVariableCreateObjectVariable3 = linearSystem3.createObjectVariable(this.mTop);
        SolverVariable solverVariableCreateObjectVariable4 = linearSystem3.createObjectVariable(this.mBottom);
        SolverVariable solverVariableCreateObjectVariable5 = linearSystem3.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget3 = this.mParent;
        if (constraintWidget3 == null) {
            z10 = false;
            z11 = false;
        } else {
            z11 = constraintWidget3 != null && constraintWidget3.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            z10 = constraintWidget3 != null && constraintWidget3.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            int i24 = this.mWrapBehaviorInParent;
            if (i24 == 1) {
                z10 = false;
            } else if (i24 == 2) {
                z11 = false;
            } else if (i24 == 3) {
                z10 = false;
                z11 = false;
            }
        }
        if (this.mVisibility == 8 && !this.mAnimated && !hasDependencies()) {
            boolean[] zArr = this.mIsInBarrier;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z19 = this.mResolvedHorizontal;
        if (z19 || this.mResolvedVertical) {
            if (z19) {
                linearSystem3.addEquality(solverVariableCreateObjectVariable, this.f309mX);
                linearSystem3.addEquality(solverVariableCreateObjectVariable2, this.f309mX + this.mWidth);
                if (z11 && (constraintWidget2 = this.mParent) != null) {
                    if (this.mOptimizeWrapOnResolved) {
                        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                        constraintWidgetContainer.addHorizontalWrapMinVariable(this.mLeft);
                        constraintWidgetContainer.addHorizontalWrapMaxVariable(this.mRight);
                    } else {
                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(constraintWidget2.mRight), solverVariableCreateObjectVariable2, 0, 5);
                    }
                }
            }
            if (this.mResolvedVertical) {
                linearSystem3.addEquality(solverVariableCreateObjectVariable3, this.f310mY);
                linearSystem3.addEquality(solverVariableCreateObjectVariable4, this.f310mY + this.mHeight);
                if (this.mBaseline.hasDependents()) {
                    linearSystem3.addEquality(solverVariableCreateObjectVariable5, this.f310mY + this.mBaselineDistance);
                }
                if (z10 && (constraintWidget = this.mParent) != null) {
                    if (this.mOptimizeWrapOnResolved) {
                        ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget;
                        constraintWidgetContainer2.addVerticalWrapMinVariable(this.mTop);
                        constraintWidgetContainer2.addVerticalWrapMaxVariable(this.mBottom);
                    } else {
                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(constraintWidget.mBottom), solverVariableCreateObjectVariable4, 0, 5);
                    }
                }
            }
            if (this.mResolvedHorizontal && this.mResolvedVertical) {
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                return;
            }
        }
        Metrics metrics2 = LinearSystem.sMetrics;
        if (metrics2 != null) {
            metrics2.widgets++;
        }
        if (z9 && (horizontalWidgetRun2 = this.mHorizontalRun) != null && (verticalWidgetRun2 = this.mVerticalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun2.start;
            if (dependencyNode.resolved && horizontalWidgetRun2.end.resolved && verticalWidgetRun2.start.resolved && verticalWidgetRun2.end.resolved) {
                if (metrics2 != null) {
                    metrics2.graphSolved++;
                }
                linearSystem3.addEquality(solverVariableCreateObjectVariable, dependencyNode.value);
                linearSystem3.addEquality(solverVariableCreateObjectVariable2, this.mHorizontalRun.end.value);
                linearSystem3.addEquality(solverVariableCreateObjectVariable3, this.mVerticalRun.start.value);
                linearSystem3.addEquality(solverVariableCreateObjectVariable4, this.mVerticalRun.end.value);
                linearSystem3.addEquality(solverVariableCreateObjectVariable5, this.mVerticalRun.baseline.value);
                if (this.mParent != null) {
                    if (z11 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable2, 0, 8);
                    }
                    if (z10 && this.isTerminalWidget[1] && !isInVerticalChain()) {
                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable4, 0, 8);
                    }
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                return;
            }
        }
        if (metrics2 != null) {
            metrics2.linearSolved++;
        }
        if (this.mParent != null) {
            if (isChainHead(0)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                zIsInHorizontalChain = true;
                i23 = 1;
            } else {
                zIsInHorizontalChain = isInHorizontalChain();
                i23 = 1;
            }
            if (isChainHead(i23)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, i23);
                zIsInVerticalChain = true;
            } else {
                zIsInVerticalChain = isInVerticalChain();
            }
            if (!zIsInHorizontalChain && z11 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable2, 0, 1);
            }
            if (!zIsInVerticalChain && z10 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable4, 0, 1);
            }
        } else {
            zIsInHorizontalChain = false;
            zIsInVerticalChain = false;
        }
        int i25 = this.mWidth;
        int i26 = this.mMinWidth;
        if (i25 >= i26) {
            i26 = i25;
        }
        int i27 = this.mHeight;
        int i28 = this.mMinHeight;
        if (i27 >= i28) {
            i28 = i27;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        SolverVariable solverVariable6 = solverVariableCreateObjectVariable4;
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z20 = dimensionBehaviour3 != dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[1];
        boolean z21 = zIsInHorizontalChain;
        boolean z22 = dimensionBehaviour5 != dimensionBehaviour4;
        boolean z23 = zIsInVerticalChain;
        int i29 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i29;
        int i30 = i28;
        float f10 = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f10;
        int i31 = this.mMatchConstraintDefaultWidth;
        int i32 = this.mMatchConstraintDefaultHeight;
        if (f10 > 0.0f) {
            i10 = i26;
            if (this.mVisibility != 8) {
                i11 = (dimensionBehaviour3 == dimensionBehaviour4 && i31 == 0) ? 3 : i31;
                int i33 = (dimensionBehaviour5 == dimensionBehaviour4 && i32 == 0) ? 3 : i32;
                if (dimensionBehaviour3 == dimensionBehaviour4 && dimensionBehaviour5 == dimensionBehaviour4) {
                    solverVariable = solverVariableCreateObjectVariable2;
                    i22 = 3;
                    if (i11 == 3 && i33 == 3) {
                        setupDimensionRatio(z11, z10, z20, z22);
                    }
                    i30 = i30;
                    z12 = true;
                    i12 = i33;
                    i13 = i10;
                    int[] iArr = this.mResolvedMatchConstraintDefault;
                    iArr[0] = i11;
                    iArr[1] = i12;
                    this.mResolvedHasRatio = z12;
                    if (z12) {
                        int i34 = this.mResolvedDimensionRatioSide;
                        i14 = -1;
                        boolean z24 = i34 != 0 || i34 == -1;
                        if (z12 || !((i21 = this.mResolvedDimensionRatioSide) == 1 || i21 == i14)) {
                            z13 = false;
                        } else {
                            z13 = true;
                        }
                        dimensionBehaviour = this.mListDimensionBehaviors[0];
                        dimensionBehaviour2 = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour == dimensionBehaviour2 || !(this instanceof ConstraintWidgetContainer)) {
                            z14 = false;
                        } else {
                            z14 = true;
                        }
                        if (z14) {
                            i13 = 0;
                        }
                        boolean z25 = !this.mCenter.isConnected();
                        boolean[] zArr2 = this.mIsInBarrier;
                        boolean z26 = zArr2[0];
                        boolean z27 = zArr2[1];
                        if (this.mHorizontalResolution != 2 || this.mResolvedHorizontal) {
                            z17 = z11;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                            z16 = z21;
                            z15 = z23;
                            i15 = i11;
                        } else {
                            if (z9 && (horizontalWidgetRun = this.mHorizontalRun) != null) {
                                DependencyNode dependencyNode2 = horizontalWidgetRun.start;
                                if (dependencyNode2.resolved && horizontalWidgetRun.end.resolved) {
                                    if (z9) {
                                        linearSystem3.addEquality(solverVariableCreateObjectVariable, dependencyNode2.value);
                                        SolverVariable solverVariable7 = solverVariable;
                                        linearSystem3.addEquality(solverVariable7, this.mHorizontalRun.end.value);
                                        if (this.mParent != null && z11 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                            linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariable7, 0, 8);
                                        }
                                        solverVariable = solverVariable7;
                                    }
                                    z17 = z11;
                                    solverVariable2 = solverVariableCreateObjectVariable3;
                                    z16 = z21;
                                    z15 = z23;
                                    i15 = i11;
                                }
                            }
                            SolverVariable solverVariable8 = solverVariable;
                            ConstraintWidget constraintWidget4 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable6 = constraintWidget4 != null ? linearSystem3.createObjectVariable(constraintWidget4.mRight) : null;
                            ConstraintWidget constraintWidget5 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable7 = constraintWidget5 != null ? linearSystem3.createObjectVariable(constraintWidget5.mLeft) : null;
                            boolean z28 = this.isTerminalWidget[0];
                            DimensionBehaviour[] dimensionBehaviourArr2 = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr2[0];
                            ConstraintAnchor constraintAnchor = this.mLeft;
                            i15 = i11;
                            ConstraintAnchor constraintAnchor2 = this.mRight;
                            z12 = z12;
                            z17 = z11;
                            int i35 = this.f309mX;
                            boolean z29 = z24;
                            SolverVariable solverVariable9 = solverVariableCreateObjectVariable7;
                            int i36 = this.mMinWidth;
                            int i37 = this.mMaxDimension[0];
                            float f11 = this.mHorizontalBiasPercent;
                            boolean z30 = dimensionBehaviourArr2[1] == dimensionBehaviour4;
                            solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                            solverVariable6 = solverVariable6;
                            dimensionBehaviour4 = dimensionBehaviour4;
                            z10 = z10;
                            z16 = z21;
                            z15 = z23;
                            dimensionBehaviour2 = dimensionBehaviour2;
                            solverVariable = solverVariable8;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                            linearSystem3 = linearSystem;
                            applyConstraints(linearSystem3, true, z17, z10, z28, solverVariable9, solverVariableCreateObjectVariable6, dimensionBehaviour6, z14, constraintAnchor, constraintAnchor2, i35, i13, i36, i37, f11, z29, z30, z16, z15, z26, i15, i12, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z25);
                        }
                        if (z9 || (verticalWidgetRun = this.mVerticalRun) == null) {
                            solverVariable3 = solverVariable2;
                            solverVariable4 = solverVariable6;
                            solverVariable5 = 
                            /*  JADX ERROR: Method code generation error
                                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x048f: MOVE (r7v3 'solverVariable5' androidx.constraintlayout.core.SolverVariable) = (r24v0 androidx.constraintlayout.core.SolverVariable) (LINE:1168) in method: androidx.constraintlayout.core.widgets.ConstraintWidget.addToSolver(androidx.constraintlayout.core.LinearSystem, boolean):void, file: classes.dex
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:299)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(Unknown Source)
                                	at java.base/java.util.ArrayList.forEach(Unknown Source)
                                	at java.base/java.util.stream.SortedOps$RefSortingSink.end(Unknown Source)
                                	at java.base/java.util.stream.Sink$ChainedReference.end(Unknown Source)
                                	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(Unknown Source)
                                	at java.base/java.util.stream.AbstractPipeline.copyInto(Unknown Source)
                                	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(Unknown Source)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(Unknown Source)
                                	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(Unknown Source)
                                	at java.base/java.util.stream.AbstractPipeline.evaluate(Unknown Source)
                                	at java.base/java.util.stream.ReferencePipeline.forEach(Unknown Source)
                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:295)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:284)
                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:268)
                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:160)
                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:104)
                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
                                	at jadx.core.ProcessClass.process(ProcessClass.java:89)
                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:127)
                                	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:405)
                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:393)
                                	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:343)
                                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r24v0 androidx.constraintlayout.core.SolverVariable
                                	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
                                */
                            /*
                                Method dump skipped, instruction units count: 1510
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.ConstraintWidget.addToSolver(androidx.constraintlayout.core.LinearSystem, boolean):void");
                        }

                        public boolean allowedInBarrier() {
                            return this.mVisibility != 8;
                        }

                        public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10) {
                            ConstraintAnchor.Type type3;
                            ConstraintAnchor.Type type4;
                            boolean z9;
                            ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
                            if (type == type5) {
                                if (type2 != type5) {
                                    ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                                    if (type2 == type6 || type2 == ConstraintAnchor.Type.RIGHT) {
                                        connect(type6, constraintWidget, type2, 0);
                                        connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
                                        getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                                        return;
                                    }
                                    ConstraintAnchor.Type type7 = ConstraintAnchor.Type.TOP;
                                    if (type2 == type7 || type2 == ConstraintAnchor.Type.BOTTOM) {
                                        connect(type7, constraintWidget, type2, 0);
                                        connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                                        getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                                        return;
                                    }
                                    return;
                                }
                                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.LEFT;
                                ConstraintAnchor anchor = getAnchor(type8);
                                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.RIGHT;
                                ConstraintAnchor anchor2 = getAnchor(type9);
                                ConstraintAnchor.Type type10 = ConstraintAnchor.Type.TOP;
                                ConstraintAnchor anchor3 = getAnchor(type10);
                                ConstraintAnchor.Type type11 = ConstraintAnchor.Type.BOTTOM;
                                ConstraintAnchor anchor4 = getAnchor(type11);
                                boolean z10 = true;
                                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                                    connect(type8, constraintWidget, type8, 0);
                                    connect(type9, constraintWidget, type9, 0);
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                                    connect(type10, constraintWidget, type10, 0);
                                    connect(type11, constraintWidget, type11, 0);
                                } else {
                                    z10 = false;
                                }
                                if (z9 && z10) {
                                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                                    return;
                                }
                                if (z9) {
                                    ConstraintAnchor.Type type12 = ConstraintAnchor.Type.CENTER_X;
                                    getAnchor(type12).connect(constraintWidget.getAnchor(type12), 0);
                                    return;
                                } else {
                                    if (z10) {
                                        ConstraintAnchor.Type type13 = ConstraintAnchor.Type.CENTER_Y;
                                        getAnchor(type13).connect(constraintWidget.getAnchor(type13), 0);
                                        return;
                                    }
                                    return;
                                }
                            }
                            ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
                            if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
                                ConstraintAnchor anchor5 = getAnchor(type4);
                                ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
                                ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
                                anchor5.connect(anchor6, 0);
                                anchor7.connect(anchor6, 0);
                                getAnchor(type14).connect(anchor6, 0);
                                return;
                            }
                            ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
                            if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
                                ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
                                getAnchor(type3).connect(anchor8, 0);
                                getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
                                getAnchor(type15).connect(anchor8, 0);
                                return;
                            }
                            if (type == type14 && type2 == type14) {
                                ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
                                getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
                                ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
                                getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
                                getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
                                return;
                            }
                            if (type == type15 && type2 == type15) {
                                ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
                                getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
                                ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
                                getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
                                getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
                                return;
                            }
                            ConstraintAnchor anchor9 = getAnchor(type);
                            ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
                            if (anchor9.isValidConnection(anchor10)) {
                                ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
                                if (type == type20) {
                                    ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                                    ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                                    if (anchor11 != null) {
                                        anchor11.reset();
                                    }
                                    if (anchor12 != null) {
                                        anchor12.reset();
                                    }
                                } else if (type == ConstraintAnchor.Type.TOP || type == ConstraintAnchor.Type.BOTTOM) {
                                    ConstraintAnchor anchor13 = getAnchor(type20);
                                    if (anchor13 != null) {
                                        anchor13.reset();
                                    }
                                    ConstraintAnchor anchor14 = getAnchor(type5);
                                    if (anchor14.getTarget() != anchor10) {
                                        anchor14.reset();
                                    }
                                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                                    ConstraintAnchor anchor15 = getAnchor(type15);
                                    if (anchor15.isConnected()) {
                                        opposite.reset();
                                        anchor15.reset();
                                    }
                                } else if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                                    ConstraintAnchor anchor16 = getAnchor(type5);
                                    if (anchor16.getTarget() != anchor10) {
                                        anchor16.reset();
                                    }
                                    ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                                    ConstraintAnchor anchor17 = getAnchor(type14);
                                    if (anchor17.isConnected()) {
                                        opposite2.reset();
                                        anchor17.reset();
                                    }
                                }
                                anchor9.connect(anchor10, i10);
                            }
                        }

                        public void connectCircularConstraint(ConstraintWidget constraintWidget, float f8, int i10) {
                            ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
                            immediateConnect(type, constraintWidget, type, i10, 0);
                            this.mCircleConstraintAngle = f8;
                        }

                        public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
                            this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
                            this.mVerticalResolution = constraintWidget.mVerticalResolution;
                            this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
                            this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
                            int[] iArr = this.mResolvedMatchConstraintDefault;
                            int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
                            iArr[0] = iArr2[0];
                            iArr[1] = iArr2[1];
                            this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
                            this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
                            this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
                            this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
                            this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
                            this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
                            this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
                            this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
                            this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
                            int[] iArr3 = constraintWidget.mMaxDimension;
                            this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
                            this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
                            this.mHasBaseline = constraintWidget.mHasBaseline;
                            this.mInPlaceholder = constraintWidget.mInPlaceholder;
                            this.mLeft.reset();
                            this.mTop.reset();
                            this.mRight.reset();
                            this.mBottom.reset();
                            this.mBaseline.reset();
                            this.mCenterX.reset();
                            this.mCenterY.reset();
                            this.mCenter.reset();
                            this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
                            this.mParent = this.mParent == null ? null : map.get(constraintWidget.mParent);
                            this.mWidth = constraintWidget.mWidth;
                            this.mHeight = constraintWidget.mHeight;
                            this.mDimensionRatio = constraintWidget.mDimensionRatio;
                            this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
                            this.f309mX = constraintWidget.f309mX;
                            this.f310mY = constraintWidget.f310mY;
                            this.mRelX = constraintWidget.mRelX;
                            this.mRelY = constraintWidget.mRelY;
                            this.mOffsetX = constraintWidget.mOffsetX;
                            this.mOffsetY = constraintWidget.mOffsetY;
                            this.mBaselineDistance = constraintWidget.mBaselineDistance;
                            this.mMinWidth = constraintWidget.mMinWidth;
                            this.mMinHeight = constraintWidget.mMinHeight;
                            this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
                            this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
                            this.mCompanionWidget = constraintWidget.mCompanionWidget;
                            this.mContainerItemSkip = constraintWidget.mContainerItemSkip;
                            this.mVisibility = constraintWidget.mVisibility;
                            this.mAnimated = constraintWidget.mAnimated;
                            this.mDebugName = constraintWidget.mDebugName;
                            this.mType = constraintWidget.mType;
                            this.mDistToTop = constraintWidget.mDistToTop;
                            this.mDistToLeft = constraintWidget.mDistToLeft;
                            this.mDistToRight = constraintWidget.mDistToRight;
                            this.mDistToBottom = constraintWidget.mDistToBottom;
                            this.mLeftHasCentered = constraintWidget.mLeftHasCentered;
                            this.mRightHasCentered = constraintWidget.mRightHasCentered;
                            this.mTopHasCentered = constraintWidget.mTopHasCentered;
                            this.mBottomHasCentered = constraintWidget.mBottomHasCentered;
                            this.mHorizontalWrapVisited = constraintWidget.mHorizontalWrapVisited;
                            this.mVerticalWrapVisited = constraintWidget.mVerticalWrapVisited;
                            this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
                            this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
                            this.mHorizontalChainFixedPosition = constraintWidget.mHorizontalChainFixedPosition;
                            this.mVerticalChainFixedPosition = constraintWidget.mVerticalChainFixedPosition;
                            float[] fArr = this.mWeight;
                            float[] fArr2 = constraintWidget.mWeight;
                            fArr[0] = fArr2[0];
                            fArr[1] = fArr2[1];
                            ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
                            ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
                            constraintWidgetArr[0] = constraintWidgetArr2[0];
                            constraintWidgetArr[1] = constraintWidgetArr2[1];
                            ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
                            ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
                            constraintWidgetArr3[0] = constraintWidgetArr4[0];
                            constraintWidgetArr3[1] = constraintWidgetArr4[1];
                            ConstraintWidget constraintWidget2 = constraintWidget.mHorizontalNextWidget;
                            this.mHorizontalNextWidget = constraintWidget2 == null ? null : map.get(constraintWidget2);
                            ConstraintWidget constraintWidget3 = constraintWidget.mVerticalNextWidget;
                            this.mVerticalNextWidget = constraintWidget3 != null ? map.get(constraintWidget3) : null;
                        }

                        public void createObjectVariables(LinearSystem linearSystem) {
                            linearSystem.createObjectVariable(this.mLeft);
                            linearSystem.createObjectVariable(this.mTop);
                            linearSystem.createObjectVariable(this.mRight);
                            linearSystem.createObjectVariable(this.mBottom);
                            if (this.mBaselineDistance > 0) {
                                linearSystem.createObjectVariable(this.mBaseline);
                            }
                        }

                        public void ensureMeasureRequested() {
                            this.mMeasureRequested = true;
                        }

                        public void ensureWidgetRuns() {
                            if (this.mHorizontalRun == null) {
                                this.mHorizontalRun = new HorizontalWidgetRun(this);
                            }
                            if (this.mVerticalRun == null) {
                                this.mVerticalRun = new VerticalWidgetRun(this);
                            }
                        }

                        public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
                            switch (C02801.f311x6930e354[type.ordinal()]) {
                                case 1:
                                    return this.mLeft;
                                case 2:
                                    return this.mTop;
                                case 3:
                                    return this.mRight;
                                case 4:
                                    return this.mBottom;
                                case 5:
                                    return this.mBaseline;
                                case 6:
                                    return this.mCenter;
                                case 7:
                                    return this.mCenterX;
                                case 8:
                                    return this.mCenterY;
                                case 9:
                                    return null;
                                default:
                                    C1929i.m3023e(type.name());
                                    return null;
                            }
                        }

                        public ArrayList<ConstraintAnchor> getAnchors() {
                            return this.mAnchors;
                        }

                        public int getBaselineDistance() {
                            return this.mBaselineDistance;
                        }

                        public float getBiasPercent(int i10) {
                            if (i10 == 0) {
                                return this.mHorizontalBiasPercent;
                            }
                            if (i10 == 1) {
                                return this.mVerticalBiasPercent;
                            }
                            return -1.0f;
                        }

                        public int getBottom() {
                            return getY() + this.mHeight;
                        }

                        public Object getCompanionWidget() {
                            return this.mCompanionWidget;
                        }

                        public int getContainerItemSkip() {
                            return this.mContainerItemSkip;
                        }

                        public String getDebugName() {
                            return this.mDebugName;
                        }

                        public DimensionBehaviour getDimensionBehaviour(int i10) {
                            if (i10 == 0) {
                                return getHorizontalDimensionBehaviour();
                            }
                            if (i10 == 1) {
                                return getVerticalDimensionBehaviour();
                            }
                            return null;
                        }

                        public float getDimensionRatio() {
                            return this.mDimensionRatio;
                        }

                        public int getDimensionRatioSide() {
                            return this.mDimensionRatioSide;
                        }

                        public boolean getHasBaseline() {
                            return this.mHasBaseline;
                        }

                        public int getHeight() {
                            if (this.mVisibility == 8) {
                                return 0;
                            }
                            return this.mHeight;
                        }

                        public float getHorizontalBiasPercent() {
                            return this.mHorizontalBiasPercent;
                        }

                        public ConstraintWidget getHorizontalChainControlWidget() {
                            if (!isInHorizontalChain()) {
                                return null;
                            }
                            ConstraintWidget constraintWidget = this;
                            ConstraintWidget constraintWidget2 = null;
                            while (constraintWidget2 == null && constraintWidget != null) {
                                ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
                                ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
                                ConstraintWidget owner = target == null ? null : target.getOwner();
                                if (owner == getParent()) {
                                    return constraintWidget;
                                }
                                ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
                                if (target2 == null || target2.getOwner() == constraintWidget) {
                                    constraintWidget = owner;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                }
                            }
                            return constraintWidget2;
                        }

                        public int getHorizontalChainStyle() {
                            return this.mHorizontalChainStyle;
                        }

                        public DimensionBehaviour getHorizontalDimensionBehaviour() {
                            return this.mListDimensionBehaviors[0];
                        }

                        public int getHorizontalMargin() {
                            ConstraintAnchor constraintAnchor = this.mLeft;
                            int i10 = constraintAnchor != null ? constraintAnchor.mMargin : 0;
                            ConstraintAnchor constraintAnchor2 = this.mRight;
                            return constraintAnchor2 != null ? i10 + constraintAnchor2.mMargin : i10;
                        }

                        public int getLastHorizontalMeasureSpec() {
                            return this.mLastHorizontalMeasureSpec;
                        }

                        public int getLastVerticalMeasureSpec() {
                            return this.mLastVerticalMeasureSpec;
                        }

                        public int getLeft() {
                            return getX();
                        }

                        public int getLength(int i10) {
                            if (i10 == 0) {
                                return getWidth();
                            }
                            if (i10 == 1) {
                                return getHeight();
                            }
                            return 0;
                        }

                        public int getMaxHeight() {
                            return this.mMaxDimension[1];
                        }

                        public int getMaxWidth() {
                            return this.mMaxDimension[0];
                        }

                        public int getMinHeight() {
                            return this.mMinHeight;
                        }

                        public int getMinWidth() {
                            return this.mMinWidth;
                        }

                        public ConstraintWidget getNextChainMember(int i10) {
                            ConstraintAnchor constraintAnchor;
                            ConstraintAnchor constraintAnchor2;
                            if (i10 != 0) {
                                if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                                    return constraintAnchor2.mOwner;
                                }
                                return null;
                            }
                            ConstraintAnchor constraintAnchor3 = this.mRight;
                            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                            if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
                                return null;
                            }
                            return constraintAnchor4.mOwner;
                        }

                        public int getOptimizerWrapHeight() {
                            int i10 = this.mHeight;
                            if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
                                return i10;
                            }
                            int i11 = this.mMatchConstraintDefaultHeight;
                            int iMax = this.mMatchConstraintMinHeight;
                            if (i11 == 1) {
                                iMax = Math.max(iMax, i10);
                            } else if (iMax > 0) {
                                this.mHeight = iMax;
                            } else {
                                iMax = 0;
                            }
                            int i12 = this.mMatchConstraintMaxHeight;
                            return (i12 <= 0 || i12 >= iMax) ? iMax : i12;
                        }

                        public int getOptimizerWrapWidth() {
                            int i10 = this.mWidth;
                            int iMax = 0;
                            if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
                                return i10;
                            }
                            int i11 = this.mMatchConstraintDefaultWidth;
                            int i12 = this.mMatchConstraintMinWidth;
                            if (i11 == 1) {
                                iMax = Math.max(i12, i10);
                            } else if (i12 > 0) {
                                this.mWidth = i12;
                                iMax = i12;
                            }
                            int i13 = this.mMatchConstraintMaxWidth;
                            return (i13 <= 0 || i13 >= iMax) ? iMax : i13;
                        }

                        public ConstraintWidget getParent() {
                            return this.mParent;
                        }

                        public ConstraintWidget getPreviousChainMember(int i10) {
                            ConstraintAnchor constraintAnchor;
                            ConstraintAnchor constraintAnchor2;
                            if (i10 != 0) {
                                if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                                    return constraintAnchor2.mOwner;
                                }
                                return null;
                            }
                            ConstraintAnchor constraintAnchor3 = this.mLeft;
                            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                            if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
                                return null;
                            }
                            return constraintAnchor4.mOwner;
                        }

                        public int getRelativePositioning(int i10) {
                            if (i10 == 0) {
                                return this.mRelX;
                            }
                            if (i10 == 1) {
                                return this.mRelY;
                            }
                            return 0;
                        }

                        public int getRight() {
                            return getX() + this.mWidth;
                        }

                        public int getRootX() {
                            return this.f309mX + this.mOffsetX;
                        }

                        public int getRootY() {
                            return this.f310mY + this.mOffsetY;
                        }

                        public WidgetRun getRun(int i10) {
                            if (i10 == 0) {
                                return this.mHorizontalRun;
                            }
                            if (i10 == 1) {
                                return this.mVerticalRun;
                            }
                            return null;
                        }

                        public void getSceneString(StringBuilder sb) {
                            sb.append("  " + this.stringId + ":{\n");
                            StringBuilder sb2 = new StringBuilder("    actualWidth:");
                            sb2.append(this.mWidth);
                            sb.append(sb2.toString());
                            sb.append("\n");
                            sb.append("    actualHeight:" + this.mHeight);
                            sb.append("\n");
                            sb.append("    actualLeft:" + this.f309mX);
                            sb.append("\n");
                            sb.append("    actualTop:" + this.f310mY);
                            sb.append("\n");
                            getSceneString(sb, "left", this.mLeft);
                            getSceneString(sb, "top", this.mTop);
                            getSceneString(sb, "right", this.mRight);
                            getSceneString(sb, "bottom", this.mBottom);
                            getSceneString(sb, "baseline", this.mBaseline);
                            getSceneString(sb, "centerX", this.mCenterX);
                            getSceneString(sb, "centerY", this.mCenterY);
                            getSceneString(sb, "    width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mListDimensionBehaviors[0], this.mWeight[0]);
                            getSceneString(sb, "    height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mListDimensionBehaviors[1], this.mWeight[1]);
                            serializeDimensionRatio(sb, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
                            serializeAttribute(sb, "    horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
                            serializeAttribute(sb, "    verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
                            serializeAttribute(sb, "    horizontalChainStyle", this.mHorizontalChainStyle, 0);
                            serializeAttribute(sb, "    verticalChainStyle", this.mVerticalChainStyle, 0);
                            sb.append("  }");
                        }

                        public int getTop() {
                            return getY();
                        }

                        public String getType() {
                            return this.mType;
                        }

                        public float getVerticalBiasPercent() {
                            return this.mVerticalBiasPercent;
                        }

                        public ConstraintWidget getVerticalChainControlWidget() {
                            if (!isInVerticalChain()) {
                                return null;
                            }
                            ConstraintWidget constraintWidget = this;
                            ConstraintWidget constraintWidget2 = null;
                            while (constraintWidget2 == null && constraintWidget != null) {
                                ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
                                ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
                                ConstraintWidget owner = target == null ? null : target.getOwner();
                                if (owner == getParent()) {
                                    return constraintWidget;
                                }
                                ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
                                if (target2 == null || target2.getOwner() == constraintWidget) {
                                    constraintWidget = owner;
                                } else {
                                    constraintWidget2 = constraintWidget;
                                }
                            }
                            return constraintWidget2;
                        }

                        public int getVerticalChainStyle() {
                            return this.mVerticalChainStyle;
                        }

                        public DimensionBehaviour getVerticalDimensionBehaviour() {
                            return this.mListDimensionBehaviors[1];
                        }

                        public int getVerticalMargin() {
                            int i10 = this.mLeft != null ? this.mTop.mMargin : 0;
                            return this.mRight != null ? i10 + this.mBottom.mMargin : i10;
                        }

                        public int getVisibility() {
                            return this.mVisibility;
                        }

                        public int getWidth() {
                            if (this.mVisibility == 8) {
                                return 0;
                            }
                            return this.mWidth;
                        }

                        public int getWrapBehaviorInParent() {
                            return this.mWrapBehaviorInParent;
                        }

                        public int getX() {
                            ConstraintWidget constraintWidget = this.mParent;
                            return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f309mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.f309mX;
                        }

                        public int getY() {
                            ConstraintWidget constraintWidget = this.mParent;
                            return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.f310mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.f310mY;
                        }

                        public boolean hasBaseline() {
                            return this.mHasBaseline;
                        }

                        public boolean hasDanglingDimension(int i10) {
                            if (i10 == 0) {
                                return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
                            }
                            return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
                        }

                        public boolean hasDependencies() {
                            int size = this.mAnchors.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                if (this.mAnchors.get(i10).hasDependents()) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        public boolean hasDimensionOverride() {
                            return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
                        }

                        public boolean hasResolvedTargets(int i10, int i11) {
                            ConstraintAnchor constraintAnchor;
                            ConstraintAnchor constraintAnchor2;
                            if (i10 == 0) {
                                ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
                                if (constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) {
                                    return (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.getMargin() + this.mLeft.mTarget.getFinalValue()) >= i11;
                                }
                            } else {
                                ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
                                if (constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue()) {
                                    if ((this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.getMargin() + this.mTop.mTarget.getFinalValue()) >= i11) {
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }

                        public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10, int i11) {
                            getAnchor(type).connect(constraintWidget.getAnchor(type2), i10, i11, true);
                        }

                        public boolean isAnimated() {
                            return this.mAnimated;
                        }

                        public boolean isHeightWrapContent() {
                            return this.mIsHeightWrapContent;
                        }

                        public boolean isHorizontalSolvingPassDone() {
                            return this.mHorizontalSolvingPass;
                        }

                        public boolean isInBarrier(int i10) {
                            return this.mIsInBarrier[i10];
                        }

                        public boolean isInHorizontalChain() {
                            ConstraintAnchor constraintAnchor = this.mLeft;
                            ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                            if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
                                return true;
                            }
                            ConstraintAnchor constraintAnchor3 = this.mRight;
                            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                            return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
                        }

                        public boolean isInPlaceholder() {
                            return this.mInPlaceholder;
                        }

                        public boolean isInVerticalChain() {
                            ConstraintAnchor constraintAnchor = this.mTop;
                            ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                            if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
                                return true;
                            }
                            ConstraintAnchor constraintAnchor3 = this.mBottom;
                            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                            return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
                        }

                        public boolean isInVirtualLayout() {
                            return this.mInVirtualLayout;
                        }

                        public boolean isMeasureRequested() {
                            return this.mMeasureRequested && this.mVisibility != 8;
                        }

                        public boolean isResolvedHorizontally() {
                            if (this.mResolvedHorizontal) {
                                return true;
                            }
                            return this.mLeft.hasFinalValue() && this.mRight.hasFinalValue();
                        }

                        public boolean isResolvedVertically() {
                            if (this.mResolvedVertical) {
                                return true;
                            }
                            return this.mTop.hasFinalValue() && this.mBottom.hasFinalValue();
                        }

                        public boolean isRoot() {
                            return this.mParent == null;
                        }

                        public boolean isSpreadHeight() {
                            return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
                        }

                        public boolean isSpreadWidth() {
                            return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
                        }

                        public boolean isVerticalSolvingPassDone() {
                            return this.mVerticalSolvingPass;
                        }

                        public boolean isWidthWrapContent() {
                            return this.mIsWidthWrapContent;
                        }

                        public void markHorizontalSolvingPassDone() {
                            this.mHorizontalSolvingPass = true;
                        }

                        public void markVerticalSolvingPassDone() {
                            this.mVerticalSolvingPass = true;
                        }

                        public boolean oppositeDimensionDependsOn(int i10) {
                            char c = i10 == 0 ? (char) 1 : (char) 0;
                            DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i10];
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            return dimensionBehaviour == dimensionBehaviour3 && dimensionBehaviour2 == dimensionBehaviour3;
                        }

                        public boolean oppositeDimensionsTied() {
                            DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                            DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
                            return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
                        }

                        public void reset() {
                            this.mLeft.reset();
                            this.mTop.reset();
                            this.mRight.reset();
                            this.mBottom.reset();
                            this.mBaseline.reset();
                            this.mCenterX.reset();
                            this.mCenterY.reset();
                            this.mCenter.reset();
                            this.mParent = null;
                            this.mCircleConstraintAngle = Float.NaN;
                            this.mWidth = 0;
                            this.mHeight = 0;
                            this.mDimensionRatio = 0.0f;
                            this.mDimensionRatioSide = -1;
                            this.f309mX = 0;
                            this.f310mY = 0;
                            this.mOffsetX = 0;
                            this.mOffsetY = 0;
                            this.mBaselineDistance = 0;
                            this.mMinWidth = 0;
                            this.mMinHeight = 0;
                            float f8 = DEFAULT_BIAS;
                            this.mHorizontalBiasPercent = f8;
                            this.mVerticalBiasPercent = f8;
                            DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
                            dimensionBehaviourArr[0] = dimensionBehaviour;
                            dimensionBehaviourArr[1] = dimensionBehaviour;
                            this.mCompanionWidget = null;
                            this.mContainerItemSkip = 0;
                            this.mVisibility = 0;
                            this.mType = null;
                            this.mHorizontalWrapVisited = false;
                            this.mVerticalWrapVisited = false;
                            this.mHorizontalChainStyle = 0;
                            this.mVerticalChainStyle = 0;
                            this.mHorizontalChainFixedPosition = false;
                            this.mVerticalChainFixedPosition = false;
                            float[] fArr = this.mWeight;
                            fArr[0] = -1.0f;
                            fArr[1] = -1.0f;
                            this.mHorizontalResolution = -1;
                            this.mVerticalResolution = -1;
                            int[] iArr = this.mMaxDimension;
                            iArr[0] = Integer.MAX_VALUE;
                            iArr[1] = Integer.MAX_VALUE;
                            this.mMatchConstraintDefaultWidth = 0;
                            this.mMatchConstraintDefaultHeight = 0;
                            this.mMatchConstraintPercentWidth = 1.0f;
                            this.mMatchConstraintPercentHeight = 1.0f;
                            this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
                            this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
                            this.mMatchConstraintMinWidth = 0;
                            this.mMatchConstraintMinHeight = 0;
                            this.mResolvedHasRatio = false;
                            this.mResolvedDimensionRatioSide = -1;
                            this.mResolvedDimensionRatio = 1.0f;
                            this.mGroupsToSolver = false;
                            boolean[] zArr = this.isTerminalWidget;
                            zArr[0] = true;
                            zArr[1] = true;
                            this.mInVirtualLayout = false;
                            boolean[] zArr2 = this.mIsInBarrier;
                            zArr2[0] = false;
                            zArr2[1] = false;
                            this.mMeasureRequested = true;
                            int[] iArr2 = this.mResolvedMatchConstraintDefault;
                            iArr2[0] = 0;
                            iArr2[1] = 0;
                            this.mWidthOverride = -1;
                            this.mHeightOverride = -1;
                        }

                        public void resetAllConstraints() {
                            resetAnchors();
                            setVerticalBiasPercent(DEFAULT_BIAS);
                            setHorizontalBiasPercent(DEFAULT_BIAS);
                        }

                        public void resetAnchor(ConstraintAnchor constraintAnchor) {
                            if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
                                return;
                            }
                            ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
                            ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
                            ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
                            ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                            ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
                            ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
                            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
                            if (constraintAnchor == anchor5) {
                                if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                                    anchor.reset();
                                    anchor2.reset();
                                }
                                if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                                    anchor3.reset();
                                    anchor4.reset();
                                }
                                this.mHorizontalBiasPercent = 0.5f;
                                this.mVerticalBiasPercent = 0.5f;
                            } else if (constraintAnchor == anchor6) {
                                if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                                    anchor.reset();
                                    anchor2.reset();
                                }
                                this.mHorizontalBiasPercent = 0.5f;
                            } else if (constraintAnchor == anchor7) {
                                if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                                    anchor3.reset();
                                    anchor4.reset();
                                }
                                this.mVerticalBiasPercent = 0.5f;
                            } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
                                if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                                    anchor5.reset();
                                }
                            } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                                anchor5.reset();
                            }
                            constraintAnchor.reset();
                        }

                        public void resetAnchors() {
                            ConstraintWidget parent = getParent();
                            if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
                                return;
                            }
                            int size = this.mAnchors.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                this.mAnchors.get(i10).reset();
                            }
                        }

                        public void resetFinalResolution() {
                            this.mResolvedHorizontal = false;
                            this.mResolvedVertical = false;
                            this.mHorizontalSolvingPass = false;
                            this.mVerticalSolvingPass = false;
                            int size = this.mAnchors.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                this.mAnchors.get(i10).resetFinalResolution();
                            }
                        }

                        public void resetSolverVariables(Cache cache) {
                            this.mLeft.resetSolverVariable(cache);
                            this.mTop.resetSolverVariable(cache);
                            this.mRight.resetSolverVariable(cache);
                            this.mBottom.resetSolverVariable(cache);
                            this.mBaseline.resetSolverVariable(cache);
                            this.mCenter.resetSolverVariable(cache);
                            this.mCenterX.resetSolverVariable(cache);
                            this.mCenterY.resetSolverVariable(cache);
                        }

                        public void resetSolvingPassFlag() {
                            this.mHorizontalSolvingPass = false;
                            this.mVerticalSolvingPass = false;
                        }

                        public StringBuilder serialize(StringBuilder sb) {
                            sb.append("{\n");
                            serializeAnchor(sb, "left", this.mLeft);
                            serializeAnchor(sb, "top", this.mTop);
                            serializeAnchor(sb, "right", this.mRight);
                            serializeAnchor(sb, "bottom", this.mBottom);
                            serializeAnchor(sb, "baseline", this.mBaseline);
                            serializeAnchor(sb, "centerX", this.mCenterX);
                            serializeAnchor(sb, "centerY", this.mCenterY);
                            serializeCircle(sb, this.mCenter, this.mCircleConstraintAngle);
                            serializeSize(sb, "width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
                            serializeSize(sb, "height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
                            serializeDimensionRatio(sb, "dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
                            serializeAttribute(sb, "horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
                            serializeAttribute(sb, "verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
                            sb.append("}\n");
                            return sb;
                        }

                        public void setAnimated(boolean z9) {
                            this.mAnimated = z9;
                        }

                        public void setBaselineDistance(int i10) {
                            this.mBaselineDistance = i10;
                            this.mHasBaseline = i10 > 0;
                        }

                        public void setCompanionWidget(Object obj) {
                            this.mCompanionWidget = obj;
                        }

                        public void setContainerItemSkip(int i10) {
                            if (i10 >= 0) {
                                this.mContainerItemSkip = i10;
                            } else {
                                this.mContainerItemSkip = 0;
                            }
                        }

                        public void setDebugName(String str) {
                            this.mDebugName = str;
                        }

                        public void setDebugSolverName(LinearSystem linearSystem, String str) {
                            this.mDebugName = str;
                            SolverVariable solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mLeft);
                            SolverVariable solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
                            SolverVariable solverVariableCreateObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
                            SolverVariable solverVariableCreateObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
                            solverVariableCreateObjectVariable.setName(str + ".left");
                            solverVariableCreateObjectVariable2.setName(str + ".top");
                            solverVariableCreateObjectVariable3.setName(str + ".right");
                            solverVariableCreateObjectVariable4.setName(str + ".bottom");
                            linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
                        }

                        public void setDimension(int i10, int i11) {
                            this.mWidth = i10;
                            int i12 = this.mMinWidth;
                            if (i10 < i12) {
                                this.mWidth = i12;
                            }
                            this.mHeight = i11;
                            int i13 = this.mMinHeight;
                            if (i11 < i13) {
                                this.mHeight = i13;
                            }
                        }

                        /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
  0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
                        public void setDimensionRatio(String str) {
                            float fAbs;
                            int i10 = 0;
                            if (str == null || str.length() == 0) {
                                this.mDimensionRatio = 0.0f;
                                return;
                            }
                            int length = str.length();
                            int iIndexOf = str.indexOf(44);
                            int i11 = 0;
                            int i12 = -1;
                            if (iIndexOf > 0 && iIndexOf < length - 1) {
                                String strSubstring = str.substring(0, iIndexOf);
                                if (!strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                                    i11 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
                                }
                                i12 = i11;
                                i11 = iIndexOf + 1;
                            }
                            int iIndexOf2 = str.indexOf(58);
                            try {
                                if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                    String strSubstring2 = str.substring(i11);
                                    if (strSubstring2.length() > 0) {
                                        fAbs = Float.parseFloat(strSubstring2);
                                    } else {
                                        fAbs = i10;
                                    }
                                } else {
                                    String strSubstring3 = str.substring(i11, iIndexOf2);
                                    String strSubstring4 = str.substring(iIndexOf2 + 1);
                                    if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                        fAbs = i10;
                                    } else {
                                        float f8 = Float.parseFloat(strSubstring3);
                                        float f10 = Float.parseFloat(strSubstring4);
                                        if (f8 <= 0.0f || f10 <= 0.0f) {
                                            fAbs = i10;
                                        } else {
                                            fAbs = i12 == 1 ? Math.abs(f10 / f8) : Math.abs(f8 / f10);
                                        }
                                    }
                                }
                            } catch (NumberFormatException unused) {
                            }
                            i10 = (fAbs > i10 ? 1 : (fAbs == i10 ? 0 : -1));
                            if (i10 > 0) {
                                this.mDimensionRatio = fAbs;
                                this.mDimensionRatioSide = i12;
                            }
                        }

                        public void setFinalBaseline(int i10) {
                            if (this.mHasBaseline) {
                                int i11 = i10 - this.mBaselineDistance;
                                int i12 = this.mHeight + i11;
                                this.f310mY = i11;
                                this.mTop.setFinalValue(i11);
                                this.mBottom.setFinalValue(i12);
                                this.mBaseline.setFinalValue(i10);
                                this.mResolvedVertical = true;
                            }
                        }

                        public void setFinalFrame(int i10, int i11, int i12, int i13, int i14, int i15) {
                            setFrame(i10, i11, i12, i13);
                            setBaselineDistance(i14);
                            if (i15 == 0) {
                                this.mResolvedHorizontal = true;
                                this.mResolvedVertical = false;
                            } else if (i15 == 1) {
                                this.mResolvedHorizontal = false;
                                this.mResolvedVertical = true;
                            } else if (i15 == 2) {
                                this.mResolvedHorizontal = true;
                                this.mResolvedVertical = true;
                            } else {
                                this.mResolvedHorizontal = false;
                                this.mResolvedVertical = false;
                            }
                        }

                        public void setFinalHorizontal(int i10, int i11) {
                            if (this.mResolvedHorizontal) {
                                return;
                            }
                            this.mLeft.setFinalValue(i10);
                            this.mRight.setFinalValue(i11);
                            this.f309mX = i10;
                            this.mWidth = i11 - i10;
                            this.mResolvedHorizontal = true;
                        }

                        public void setFinalLeft(int i10) {
                            this.mLeft.setFinalValue(i10);
                            this.f309mX = i10;
                        }

                        public void setFinalTop(int i10) {
                            this.mTop.setFinalValue(i10);
                            this.f310mY = i10;
                        }

                        public void setFinalVertical(int i10, int i11) {
                            if (this.mResolvedVertical) {
                                return;
                            }
                            this.mTop.setFinalValue(i10);
                            this.mBottom.setFinalValue(i11);
                            this.f310mY = i10;
                            this.mHeight = i11 - i10;
                            if (this.mHasBaseline) {
                                this.mBaseline.setFinalValue(i10 + this.mBaselineDistance);
                            }
                            this.mResolvedVertical = true;
                        }

                        public void setFrame(int i10, int i11, int i12, int i13) {
                            int i14;
                            int i15;
                            int i16 = i12 - i10;
                            int i17 = i13 - i11;
                            this.f309mX = i10;
                            this.f310mY = i11;
                            if (this.mVisibility == 8) {
                                this.mWidth = 0;
                                this.mHeight = 0;
                                return;
                            }
                            DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                            DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
                            if (dimensionBehaviour == dimensionBehaviour2 && i16 < (i15 = this.mWidth)) {
                                i16 = i15;
                            }
                            if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i17 < (i14 = this.mHeight)) {
                                i17 = i14;
                            }
                            this.mWidth = i16;
                            this.mHeight = i17;
                            int i18 = this.mMinHeight;
                            if (i17 < i18) {
                                this.mHeight = i18;
                            }
                            int i19 = this.mMinWidth;
                            if (i16 < i19) {
                                this.mWidth = i19;
                            }
                            int i20 = this.mMatchConstraintMaxWidth;
                            if (i20 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
                                this.mWidth = Math.min(this.mWidth, i20);
                            }
                            int i21 = this.mMatchConstraintMaxHeight;
                            if (i21 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                                this.mHeight = Math.min(this.mHeight, i21);
                            }
                            int i22 = this.mWidth;
                            if (i16 != i22) {
                                this.mWidthOverride = i22;
                            }
                            int i23 = this.mHeight;
                            if (i17 != i23) {
                                this.mHeightOverride = i23;
                            }
                        }

                        public void setGoneMargin(ConstraintAnchor.Type type, int i10) {
                            int i11 = C02801.f311x6930e354[type.ordinal()];
                            if (i11 == 1) {
                                this.mLeft.mGoneMargin = i10;
                                return;
                            }
                            if (i11 == 2) {
                                this.mTop.mGoneMargin = i10;
                                return;
                            }
                            if (i11 == 3) {
                                this.mRight.mGoneMargin = i10;
                            } else if (i11 == 4) {
                                this.mBottom.mGoneMargin = i10;
                            } else {
                                if (i11 != 5) {
                                    return;
                                }
                                this.mBaseline.mGoneMargin = i10;
                            }
                        }

                        public void setHasBaseline(boolean z9) {
                            this.mHasBaseline = z9;
                        }

                        public void setHeight(int i10) {
                            this.mHeight = i10;
                            int i11 = this.mMinHeight;
                            if (i10 < i11) {
                                this.mHeight = i11;
                            }
                        }

                        public void setHeightWrapContent(boolean z9) {
                            this.mIsHeightWrapContent = z9;
                        }

                        public void setHorizontalBiasPercent(float f8) {
                            this.mHorizontalBiasPercent = f8;
                        }

                        public void setHorizontalChainStyle(int i10) {
                            this.mHorizontalChainStyle = i10;
                        }

                        public void setHorizontalDimension(int i10, int i11) {
                            this.f309mX = i10;
                            int i12 = i11 - i10;
                            this.mWidth = i12;
                            int i13 = this.mMinWidth;
                            if (i12 < i13) {
                                this.mWidth = i13;
                            }
                        }

                        public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
                            this.mListDimensionBehaviors[0] = dimensionBehaviour;
                        }

                        public void setHorizontalMatchStyle(int i10, int i11, int i12, float f8) {
                            this.mMatchConstraintDefaultWidth = i10;
                            this.mMatchConstraintMinWidth = i11;
                            if (i12 == Integer.MAX_VALUE) {
                                i12 = 0;
                            }
                            this.mMatchConstraintMaxWidth = i12;
                            this.mMatchConstraintPercentWidth = f8;
                            if (f8 <= 0.0f || f8 >= 1.0f || i10 != 0) {
                                return;
                            }
                            this.mMatchConstraintDefaultWidth = 2;
                        }

                        public void setHorizontalWeight(float f8) {
                            this.mWeight[0] = f8;
                        }

                        public void setInBarrier(int i10, boolean z9) {
                            this.mIsInBarrier[i10] = z9;
                        }

                        public void setInPlaceholder(boolean z9) {
                            this.mInPlaceholder = z9;
                        }

                        public void setInVirtualLayout(boolean z9) {
                            this.mInVirtualLayout = z9;
                        }

                        public void setLastMeasureSpec(int i10, int i11) {
                            this.mLastHorizontalMeasureSpec = i10;
                            this.mLastVerticalMeasureSpec = i11;
                            setMeasureRequested(false);
                        }

                        public void setLength(int i10, int i11) {
                            if (i11 == 0) {
                                setWidth(i10);
                            } else if (i11 == 1) {
                                setHeight(i10);
                            }
                        }

                        public void setMaxHeight(int i10) {
                            this.mMaxDimension[1] = i10;
                        }

                        public void setMaxWidth(int i10) {
                            this.mMaxDimension[0] = i10;
                        }

                        public void setMeasureRequested(boolean z9) {
                            this.mMeasureRequested = z9;
                        }

                        public void setMinHeight(int i10) {
                            if (i10 < 0) {
                                this.mMinHeight = 0;
                            } else {
                                this.mMinHeight = i10;
                            }
                        }

                        public void setMinWidth(int i10) {
                            if (i10 < 0) {
                                this.mMinWidth = 0;
                            } else {
                                this.mMinWidth = i10;
                            }
                        }

                        public void setOffset(int i10, int i11) {
                            this.mOffsetX = i10;
                            this.mOffsetY = i11;
                        }

                        public void setOrigin(int i10, int i11) {
                            this.f309mX = i10;
                            this.f310mY = i11;
                        }

                        public void setParent(ConstraintWidget constraintWidget) {
                            this.mParent = constraintWidget;
                        }

                        public void setRelativePositioning(int i10, int i11) {
                            if (i11 == 0) {
                                this.mRelX = i10;
                            } else if (i11 == 1) {
                                this.mRelY = i10;
                            }
                        }

                        public void setType(String str) {
                            this.mType = str;
                        }

                        public void setVerticalBiasPercent(float f8) {
                            this.mVerticalBiasPercent = f8;
                        }

                        public void setVerticalChainStyle(int i10) {
                            this.mVerticalChainStyle = i10;
                        }

                        public void setVerticalDimension(int i10, int i11) {
                            this.f310mY = i10;
                            int i12 = i11 - i10;
                            this.mHeight = i12;
                            int i13 = this.mMinHeight;
                            if (i12 < i13) {
                                this.mHeight = i13;
                            }
                        }

                        public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
                            this.mListDimensionBehaviors[1] = dimensionBehaviour;
                        }

                        public void setVerticalMatchStyle(int i10, int i11, int i12, float f8) {
                            this.mMatchConstraintDefaultHeight = i10;
                            this.mMatchConstraintMinHeight = i11;
                            if (i12 == Integer.MAX_VALUE) {
                                i12 = 0;
                            }
                            this.mMatchConstraintMaxHeight = i12;
                            this.mMatchConstraintPercentHeight = f8;
                            if (f8 <= 0.0f || f8 >= 1.0f || i10 != 0) {
                                return;
                            }
                            this.mMatchConstraintDefaultHeight = 2;
                        }

                        public void setVerticalWeight(float f8) {
                            this.mWeight[1] = f8;
                        }

                        public void setVisibility(int i10) {
                            this.mVisibility = i10;
                        }

                        public void setWidth(int i10) {
                            this.mWidth = i10;
                            int i11 = this.mMinWidth;
                            if (i10 < i11) {
                                this.mWidth = i11;
                            }
                        }

                        public void setWidthWrapContent(boolean z9) {
                            this.mIsWidthWrapContent = z9;
                        }

                        public void setWrapBehaviorInParent(int i10) {
                            if (i10 < 0 || i10 > 3) {
                                return;
                            }
                            this.mWrapBehaviorInParent = i10;
                        }

                        public void setX(int i10) {
                            this.f309mX = i10;
                        }

                        public void setY(int i10) {
                            this.f310mY = i10;
                        }

                        public void setupDimensionRatio(boolean z9, boolean z10, boolean z11, boolean z12) {
                            if (this.mResolvedDimensionRatioSide == -1) {
                                if (z11 && !z12) {
                                    this.mResolvedDimensionRatioSide = 0;
                                } else if (!z11 && z12) {
                                    this.mResolvedDimensionRatioSide = 1;
                                    if (this.mDimensionRatioSide == -1) {
                                        this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                                    }
                                }
                            }
                            if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
                                this.mResolvedDimensionRatioSide = 1;
                            } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
                                this.mResolvedDimensionRatioSide = 0;
                            }
                            if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
                                if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                                    this.mResolvedDimensionRatioSide = 0;
                                } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                                    this.mResolvedDimensionRatioSide = 1;
                                }
                            }
                            if (this.mResolvedDimensionRatioSide == -1) {
                                int i10 = this.mMatchConstraintMinWidth;
                                if (i10 > 0 && this.mMatchConstraintMinHeight == 0) {
                                    this.mResolvedDimensionRatioSide = 0;
                                } else {
                                    if (i10 != 0 || this.mMatchConstraintMinHeight <= 0) {
                                        return;
                                    }
                                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                                    this.mResolvedDimensionRatioSide = 1;
                                }
                            }
                        }

                        public String toString() {
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.mType != null ? AbstractC0074a.m165p(new StringBuilder("type: "), this.mType, " ") : "");
                            sb.append(this.mDebugName != null ? AbstractC0074a.m165p(new StringBuilder("id: "), this.mDebugName, " ") : "");
                            sb.append("(");
                            sb.append(this.f309mX);
                            sb.append(", ");
                            sb.append(this.f310mY);
                            sb.append(") - (");
                            sb.append(this.mWidth);
                            sb.append(" x ");
                            return AbstractC0074a.m164o(sb, ")", this.mHeight);
                        }

                        public void updateFromRuns(boolean z9, boolean z10) {
                            int i10;
                            int i11;
                            boolean zIsResolved = z9 & this.mHorizontalRun.isResolved();
                            boolean zIsResolved2 = z10 & this.mVerticalRun.isResolved();
                            HorizontalWidgetRun horizontalWidgetRun = this.mHorizontalRun;
                            int i12 = horizontalWidgetRun.start.value;
                            VerticalWidgetRun verticalWidgetRun = this.mVerticalRun;
                            int i13 = verticalWidgetRun.start.value;
                            int i14 = horizontalWidgetRun.end.value;
                            int i15 = verticalWidgetRun.end.value;
                            int i16 = i15 - i13;
                            if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
                                i14 = 0;
                                i12 = 0;
                                i15 = 0;
                                i13 = 0;
                            }
                            int i17 = i14 - i12;
                            int i18 = i15 - i13;
                            if (zIsResolved) {
                                this.f309mX = i12;
                            }
                            if (zIsResolved2) {
                                this.f310mY = i13;
                            }
                            if (this.mVisibility == 8) {
                                this.mWidth = 0;
                                this.mHeight = 0;
                                return;
                            }
                            if (zIsResolved) {
                                if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i17 < (i11 = this.mWidth)) {
                                    i17 = i11;
                                }
                                this.mWidth = i17;
                                int i19 = this.mMinWidth;
                                if (i17 < i19) {
                                    this.mWidth = i19;
                                }
                            }
                            if (zIsResolved2) {
                                if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i18 < (i10 = this.mHeight)) {
                                    i18 = i10;
                                }
                                this.mHeight = i18;
                                int i20 = this.mMinHeight;
                                if (i18 < i20) {
                                    this.mHeight = i20;
                                }
                            }
                        }

                        public void updateFromSolver(LinearSystem linearSystem, boolean z9) {
                            VerticalWidgetRun verticalWidgetRun;
                            HorizontalWidgetRun horizontalWidgetRun;
                            int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
                            int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
                            int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
                            int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
                            if (z9 && (horizontalWidgetRun = this.mHorizontalRun) != null) {
                                DependencyNode dependencyNode = horizontalWidgetRun.start;
                                if (dependencyNode.resolved) {
                                    DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                                    if (dependencyNode2.resolved) {
                                        objectVariableValue = dependencyNode.value;
                                        objectVariableValue3 = dependencyNode2.value;
                                    }
                                }
                            }
                            if (z9 && (verticalWidgetRun = this.mVerticalRun) != null) {
                                DependencyNode dependencyNode3 = verticalWidgetRun.start;
                                if (dependencyNode3.resolved) {
                                    DependencyNode dependencyNode4 = verticalWidgetRun.end;
                                    if (dependencyNode4.resolved) {
                                        objectVariableValue2 = dependencyNode3.value;
                                        objectVariableValue4 = dependencyNode4.value;
                                    }
                                }
                            }
                            int i10 = objectVariableValue4 - objectVariableValue2;
                            if (objectVariableValue3 - objectVariableValue < 0 || i10 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
                                objectVariableValue = 0;
                                objectVariableValue4 = 0;
                                objectVariableValue2 = 0;
                                objectVariableValue3 = 0;
                            }
                            setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
                        }

                        private void serializeAttribute(StringBuilder sb, String str, int i10, int i11) {
                            if (i10 == i11) {
                                return;
                            }
                            sb.append(str);
                            sb.append(" :   ");
                            sb.append(i10);
                            sb.append(",\n");
                        }

                        private void serializeAttribute(StringBuilder sb, String str, float f8, float f10) {
                            if (f8 == f10) {
                                return;
                            }
                            sb.append(str);
                            sb.append(" :   ");
                            sb.append(f8);
                            sb.append(",\n");
                        }

                        public void setFrame(int i10, int i11, int i12) {
                            if (i12 == 0) {
                                setHorizontalDimension(i10, i11);
                            } else if (i12 == 1) {
                                setVerticalDimension(i10, i11);
                            }
                        }

                        public void setDimensionRatio(float f8, int i10) {
                            this.mDimensionRatio = f8;
                            this.mDimensionRatioSide = i10;
                        }

                        private void getSceneString(StringBuilder sb, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f8, DimensionBehaviour dimensionBehaviour, float f10) {
                            sb.append(str);
                            sb.append(" :  {\n");
                            serializeAttribute(sb, "      behavior", dimensionBehaviour.toString(), DimensionBehaviour.FIXED.toString());
                            serializeAttribute(sb, "      size", i10, 0);
                            serializeAttribute(sb, "      min", i11, 0);
                            serializeAttribute(sb, "      max", i12, Integer.MAX_VALUE);
                            serializeAttribute(sb, "      matchMin", i14, 0);
                            serializeAttribute(sb, "      matchDef", i15, 0);
                            serializeAttribute(sb, "      matchPercent", f8, 1.0f);
                            sb.append("    },\n");
                        }

                        private void getSceneString(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
                            if (constraintAnchor.mTarget == null) {
                                return;
                            }
                            sb.append("    ");
                            sb.append(str);
                            sb.append(" : [ '");
                            sb.append(constraintAnchor.mTarget);
                            sb.append("'");
                            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
                                sb.append(",");
                                sb.append(constraintAnchor.mMargin);
                                if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                                    sb.append(",");
                                    sb.append(constraintAnchor.mGoneMargin);
                                    sb.append(",");
                                }
                            }
                            sb.append(" ] ,\n");
                        }

                        public ConstraintWidget() {
                            this.measured = false;
                            this.run = new WidgetRun[2];
                            this.mHorizontalRun = null;
                            this.mVerticalRun = null;
                            this.isTerminalWidget = new boolean[]{true, true};
                            this.mResolvedHasRatio = false;
                            this.mMeasureRequested = true;
                            this.mOptimizeWrapO = false;
                            this.mOptimizeWrapOnResolved = true;
                            this.mWidthOverride = -1;
                            this.mHeightOverride = -1;
                            this.frame = new WidgetFrame(this);
                            this.mResolvedHorizontal = false;
                            this.mResolvedVertical = false;
                            this.mHorizontalSolvingPass = false;
                            this.mVerticalSolvingPass = false;
                            this.mHorizontalResolution = -1;
                            this.mVerticalResolution = -1;
                            this.mWrapBehaviorInParent = 0;
                            this.mMatchConstraintDefaultWidth = 0;
                            this.mMatchConstraintDefaultHeight = 0;
                            this.mResolvedMatchConstraintDefault = new int[2];
                            this.mMatchConstraintMinWidth = 0;
                            this.mMatchConstraintMaxWidth = 0;
                            this.mMatchConstraintPercentWidth = 1.0f;
                            this.mMatchConstraintMinHeight = 0;
                            this.mMatchConstraintMaxHeight = 0;
                            this.mMatchConstraintPercentHeight = 1.0f;
                            this.mResolvedDimensionRatioSide = -1;
                            this.mResolvedDimensionRatio = 1.0f;
                            this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
                            this.mCircleConstraintAngle = Float.NaN;
                            this.mHasBaseline = false;
                            this.mInVirtualLayout = false;
                            this.mLastHorizontalMeasureSpec = 0;
                            this.mLastVerticalMeasureSpec = 0;
                            this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
                            this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
                            this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
                            this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
                            this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
                            this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
                            this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
                            ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
                            this.mCenter = constraintAnchor;
                            this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
                            this.mAnchors = new ArrayList<>();
                            this.mIsInBarrier = new boolean[2];
                            DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
                            this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
                            this.mParent = null;
                            this.mWidth = 0;
                            this.mHeight = 0;
                            this.mDimensionRatio = 0.0f;
                            this.mDimensionRatioSide = -1;
                            this.f309mX = 0;
                            this.f310mY = 0;
                            this.mRelX = 0;
                            this.mRelY = 0;
                            this.mOffsetX = 0;
                            this.mOffsetY = 0;
                            this.mBaselineDistance = 0;
                            float f8 = DEFAULT_BIAS;
                            this.mHorizontalBiasPercent = f8;
                            this.mVerticalBiasPercent = f8;
                            this.mContainerItemSkip = 0;
                            this.mVisibility = 0;
                            this.mAnimated = false;
                            this.mDebugName = null;
                            this.mType = null;
                            this.mGroupsToSolver = false;
                            this.mHorizontalChainStyle = 0;
                            this.mVerticalChainStyle = 0;
                            this.mWeight = new float[]{-1.0f, -1.0f};
                            this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
                            this.mNextChainWidget = new ConstraintWidget[]{null, null};
                            this.mHorizontalNextWidget = null;
                            this.mVerticalNextWidget = null;
                            this.horizontalGroup = -1;
                            this.verticalGroup = -1;
                            addAnchors();
                        }

                        public ConstraintWidget(int i10, int i11, int i12, int i13) {
                            this.measured = false;
                            this.run = new WidgetRun[2];
                            this.mHorizontalRun = null;
                            this.mVerticalRun = null;
                            this.isTerminalWidget = new boolean[]{true, true};
                            this.mResolvedHasRatio = false;
                            this.mMeasureRequested = true;
                            this.mOptimizeWrapO = false;
                            this.mOptimizeWrapOnResolved = true;
                            this.mWidthOverride = -1;
                            this.mHeightOverride = -1;
                            this.frame = new WidgetFrame(this);
                            this.mResolvedHorizontal = false;
                            this.mResolvedVertical = false;
                            this.mHorizontalSolvingPass = false;
                            this.mVerticalSolvingPass = false;
                            this.mHorizontalResolution = -1;
                            this.mVerticalResolution = -1;
                            this.mWrapBehaviorInParent = 0;
                            this.mMatchConstraintDefaultWidth = 0;
                            this.mMatchConstraintDefaultHeight = 0;
                            this.mResolvedMatchConstraintDefault = new int[2];
                            this.mMatchConstraintMinWidth = 0;
                            this.mMatchConstraintMaxWidth = 0;
                            this.mMatchConstraintPercentWidth = 1.0f;
                            this.mMatchConstraintMinHeight = 0;
                            this.mMatchConstraintMaxHeight = 0;
                            this.mMatchConstraintPercentHeight = 1.0f;
                            this.mResolvedDimensionRatioSide = -1;
                            this.mResolvedDimensionRatio = 1.0f;
                            this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
                            this.mCircleConstraintAngle = Float.NaN;
                            this.mHasBaseline = false;
                            this.mInVirtualLayout = false;
                            this.mLastHorizontalMeasureSpec = 0;
                            this.mLastVerticalMeasureSpec = 0;
                            this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
                            this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
                            this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
                            this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
                            this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
                            this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
                            this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
                            ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
                            this.mCenter = constraintAnchor;
                            this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
                            this.mAnchors = new ArrayList<>();
                            this.mIsInBarrier = new boolean[2];
                            DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
                            this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
                            this.mParent = null;
                            this.mDimensionRatio = 0.0f;
                            this.mDimensionRatioSide = -1;
                            this.mRelX = 0;
                            this.mRelY = 0;
                            this.mOffsetX = 0;
                            this.mOffsetY = 0;
                            this.mBaselineDistance = 0;
                            float f8 = DEFAULT_BIAS;
                            this.mHorizontalBiasPercent = f8;
                            this.mVerticalBiasPercent = f8;
                            this.mContainerItemSkip = 0;
                            this.mVisibility = 0;
                            this.mAnimated = false;
                            this.mDebugName = null;
                            this.mType = null;
                            this.mGroupsToSolver = false;
                            this.mHorizontalChainStyle = 0;
                            this.mVerticalChainStyle = 0;
                            this.mWeight = new float[]{-1.0f, -1.0f};
                            this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
                            this.mNextChainWidget = new ConstraintWidget[]{null, null};
                            this.mHorizontalNextWidget = null;
                            this.mVerticalNextWidget = null;
                            this.horizontalGroup = -1;
                            this.verticalGroup = -1;
                            this.f309mX = i10;
                            this.f310mY = i11;
                            this.mWidth = i12;
                            this.mHeight = i13;
                            addAnchors();
                        }

                        public ConstraintWidget(String str, int i10, int i11, int i12, int i13) {
                            this(i10, i11, i12, i13);
                            setDebugName(str);
                        }

                        public ConstraintWidget(int i10, int i11) {
                            this(0, 0, i10, i11);
                        }

                        public ConstraintWidget(String str, int i10, int i11) {
                            this(i10, i11);
                            setDebugName(str);
                        }

                        public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
                            connect(type, constraintWidget, type2, 0);
                        }

                        public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
                            if (constraintAnchor.getOwner() == this) {
                                connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i10);
                            }
                        }
                    }
