package androidx.constraintlayout.core.widgets;

import ai.onnxruntime.a;
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
import j1.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
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
    public ConstraintWidget$DimensionBehaviour[] mListDimensionBehaviors;
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
    protected int mX;
    protected int mY;
    public boolean measured;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor$Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor$Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor$Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor$Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor$Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new ConstraintWidget$DimensionBehaviour[]{constraintWidget$DimensionBehaviour, constraintWidget$DimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:306:0x0498 A[PHI: r7
  0x0498: PHI (r7v15 int) = (r7v14 int), (r7v19 int), (r7v19 int), (r7v19 int) binds: [B:299:0x0488, B:301:0x048e, B:302:0x0490, B:304:0x0494] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:368:0x0542  */
    private void applyConstraints(LinearSystem linearSystem, boolean z8, boolean z9, boolean z10, boolean z11, SolverVariable solverVariable, SolverVariable solverVariable2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, boolean z12, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i9, int i10, int i11, int i12, float f8, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, int i13, int i14, int i15, int i16, float f9, boolean z18) {
        boolean z19;
        boolean z20;
        boolean z21;
        int iMin;
        int i17;
        SolverVariable solverVariable3;
        boolean z22;
        boolean z23;
        int i18;
        int i19;
        SolverVariable solverVariableCreateObjectVariable;
        SolverVariable solverVariableCreateObjectVariable2;
        boolean z24;
        ConstraintAnchor constraintAnchor3;
        int i20;
        int i21;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget;
        boolean z29;
        int iMin2;
        int i22;
        boolean z30;
        int i23;
        int i24;
        int i25;
        boolean z31;
        int i26;
        int i27;
        int i28;
        boolean z32;
        ConstraintWidget constraintWidget2;
        int i29;
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
        int i30 = zIsConnected2 ? (zIsConnected ? 1 : 0) + 1 : zIsConnected ? 1 : 0;
        if (zIsConnected3) {
            i30++;
        }
        int i31 = z13 ? 3 : i13;
        SolverVariable solverVariable5 = solverVariableCreateObjectVariable6;
        int iOrdinal = constraintWidget$DimensionBehaviour.ordinal();
        boolean z33 = (iOrdinal == 0 || iOrdinal == 1 || iOrdinal != 2 || i31 == 4) ? false : true;
        int i32 = this.mWidthOverride;
        if (i32 == -1 || !z8) {
            i32 = i10;
            z19 = z33;
        } else {
            this.mWidthOverride = -1;
            z19 = false;
        }
        int i33 = this.mHeightOverride;
        if (i33 == -1 || z8) {
            z20 = z19;
        } else {
            this.mHeightOverride = -1;
            i32 = i33;
            z20 = false;
        }
        int i34 = i32;
        if (this.mVisibility == 8) {
            z21 = false;
            iMin = 0;
        } else {
            z21 = z20;
            iMin = i34;
        }
        if (z18) {
            if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
                linearSystem.addEquality(solverVariableCreateObjectVariable3, i9);
            } else if (zIsConnected && !zIsConnected2) {
                i17 = 8;
                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
            }
            i17 = 8;
        } else {
            i17 = 8;
        }
        if (z21 == 0) {
            if (z12) {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, 0, 3);
                if (i11 > 0) {
                    linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i11, 8);
                }
                if (i12 < Integer.MAX_VALUE) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i12, 8);
                }
            } else {
                linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, i17);
            }
            i19 = i16;
            solverVariable3 = solverVariableCreateObjectVariable4;
            i30 = i30 == true ? 1 : 0;
            solverVariable5 = solverVariable5;
            z22 = z21;
            z23 = z11;
            i18 = i15;
        } else if (i30 == 2 || z13 || !(i31 == 1 || i31 == 0)) {
            int i35 = i15 == -2 ? iMin : i15;
            int i36 = i16 == -2 ? iMin : i16;
            if (iMin > 0 && i31 != 1) {
                iMin = 0;
            }
            if (i35 > 0) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i35, 8);
                iMin = Math.max(iMin, i35);
            }
            if (i36 > 0) {
                if (!z9 || i31 != 1) {
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, i36, 8);
                }
                iMin = Math.min(iMin, i36);
            }
            if (i31 == 1) {
                if (z9) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else if (z15) {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                } else {
                    linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 5);
                    linearSystem.addLowerThan(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMin, 8);
                }
                solverVariable3 = solverVariableCreateObjectVariable4;
                solverVariable5 = solverVariable5;
                z22 = z21;
                z23 = z11;
                i18 = i35;
                i19 = i36;
                i30 = i30 == true ? 1 : 0;
            } else {
                if (i31 == 2) {
                    ConstraintAnchor$Type type = constraintAnchor.getType();
                    ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.TOP;
                    if (type == constraintAnchor$Type || constraintAnchor.getType() == ConstraintAnchor$Type.BOTTOM) {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(constraintAnchor$Type));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor$Type.BOTTOM));
                    } else {
                        solverVariableCreateObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor$Type.LEFT));
                        solverVariableCreateObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor$Type.RIGHT));
                    }
                    SolverVariable solverVariable6 = solverVariableCreateObjectVariable2;
                    solverVariable3 = solverVariableCreateObjectVariable4;
                    linearSystem.addConstraint(linearSystem.createRow().createRowDimensionRatio(solverVariable3, solverVariableCreateObjectVariable3, solverVariable6, solverVariableCreateObjectVariable, f9));
                    if (z9) {
                        z21 = false;
                    }
                    z23 = z11;
                    z22 = z21;
                } else {
                    solverVariable3 = solverVariableCreateObjectVariable4;
                    z22 = z21;
                    z23 = true;
                }
                i18 = i35;
                i19 = i36;
            }
        } else {
            int iMax = Math.max(i15, iMin);
            if (i16 > 0) {
                iMax = Math.min(i16, iMax);
            }
            linearSystem.addEquality(solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable3, iMax, 8);
            i18 = i15;
            i19 = i16;
            solverVariable3 = solverVariableCreateObjectVariable4;
            i30 = i30 == true ? 1 : 0;
            solverVariable5 = solverVariable5;
            z22 = false;
            z23 = z11;
        }
        if (!z18 || z15) {
            if (i30 < 2 && z9 && z23) {
                linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 8);
                boolean z34 = z8 || this.mBaseline.mTarget == null;
                if (z8 || (constraintAnchor3 = this.mBaseline.mTarget) == null) {
                    z24 = z34;
                } else {
                    ConstraintWidget constraintWidget4 = constraintAnchor3.mOwner;
                    if (constraintWidget4.mDimensionRatio != 0.0f) {
                        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidget4.mListDimensionBehaviors;
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[0];
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                        if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 && constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour3) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                    } else {
                        z24 = false;
                    }
                }
                if (z24) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariable3, 0, 8);
                    return;
                }
                return;
            }
            return;
        }
        if (!zIsConnected && !zIsConnected2 && !zIsConnected3) {
            i23 = 5;
            z29 = z9;
            i29 = i23;
        } else if (!zIsConnected || zIsConnected2) {
            if (zIsConnected || !zIsConnected2) {
                if (zIsConnected && zIsConnected2) {
                    ConstraintWidget constraintWidget5 = constraintAnchor.mTarget.mOwner;
                    ConstraintWidget constraintWidget6 = constraintAnchor2.mTarget.mOwner;
                    ConstraintWidget parent = getParent();
                    int i37 = 6;
                    if (z22) {
                        if (i31 == 0) {
                            if (i19 != 0 || i18 != 0) {
                                z27 = false;
                                i28 = 5;
                                i20 = 5;
                                z32 = true;
                                z26 = true;
                            } else if (solverVariableCreateObjectVariable5.isFinalValue && solverVariable5.isFinalValue) {
                                linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), 8);
                                linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), 8);
                                return;
                            } else {
                                z32 = false;
                                z26 = false;
                                i28 = 8;
                                i20 = 8;
                                z27 = true;
                            }
                            if ((constraintWidget5 instanceof Barrier) || (constraintWidget6 instanceof Barrier)) {
                                i20 = 4;
                            }
                            z25 = z32;
                            i21 = i28;
                            solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                            i37 = 6;
                        } else {
                            if (i31 == 2) {
                                i20 = ((constraintWidget5 instanceof Barrier) || (constraintWidget6 instanceof Barrier)) ? 4 : 5;
                                i21 = 5;
                            } else if (i31 == 1) {
                                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                solverVariable5 = solverVariable5;
                                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                i37 = 6;
                                i20 = 4;
                                i21 = 8;
                            } else if (i31 == 3) {
                                if (this.mResolvedDimensionRatioSide == -1) {
                                    if (z16) {
                                        linearSystem = linearSystem;
                                        solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                        solverVariable5 = solverVariable5;
                                        solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                        i37 = z9 ? 5 : 4;
                                    } else {
                                        linearSystem = linearSystem;
                                        solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                        solverVariable5 = solverVariable5;
                                        solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                        i37 = 8;
                                    }
                                    i20 = 5;
                                    i21 = 8;
                                } else {
                                    if (z13) {
                                        if (i14 == 2 || i14 == 1) {
                                            i26 = 5;
                                            i27 = 4;
                                        } else {
                                            i26 = 8;
                                            i27 = 5;
                                        }
                                        i21 = i26;
                                        i20 = i27;
                                    } else {
                                        if (i19 > 0) {
                                            i20 = 5;
                                        } else if (i19 != 0 || i18 != 0) {
                                            i20 = 4;
                                        } else if (z16) {
                                            i21 = (constraintWidget5 == parent || constraintWidget6 == parent) ? 5 : 4;
                                            i20 = 4;
                                        } else {
                                            i20 = 8;
                                        }
                                        i21 = 5;
                                    }
                                    z25 = true;
                                    z26 = true;
                                    z27 = true;
                                    linearSystem = linearSystem;
                                }
                                z25 = true;
                                z26 = true;
                                z27 = true;
                            } else {
                                linearSystem = linearSystem;
                                solverVariableCreateObjectVariable3 = solverVariableCreateObjectVariable3;
                                solverVariable5 = solverVariable5;
                                solverVariableCreateObjectVariable5 = solverVariableCreateObjectVariable5;
                                i37 = 6;
                                i20 = 4;
                                i21 = 5;
                                z25 = false;
                                z26 = false;
                                z27 = false;
                            }
                            z25 = true;
                            z26 = true;
                            z27 = false;
                        }
                    } else {
                        if (solverVariableCreateObjectVariable5.isFinalValue && solverVariable5.isFinalValue) {
                            SolverVariable solverVariable7 = solverVariable5;
                            linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f8, solverVariable7, solverVariable3, constraintAnchor2.getMargin(), 8);
                            if (z9 && z23) {
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
                        i37 = 6;
                        i20 = 4;
                        i21 = 5;
                        z25 = true;
                        z26 = true;
                        z27 = false;
                    }
                    if (z26 && solverVariableCreateObjectVariable5 == solverVariable5 && constraintWidget5 != parent) {
                        z26 = false;
                        z28 = false;
                    } else {
                        z28 = true;
                    }
                    if (z25) {
                        if (z22 || z14 || z16 || solverVariableCreateObjectVariable5 != solverVariable || solverVariable5 != solverVariable2) {
                            i25 = i37;
                            z31 = z9;
                        } else {
                            i25 = 8;
                            z31 = false;
                            i21 = 8;
                            z28 = false;
                        }
                        solverVariable4 = solverVariable;
                        z9 = z31;
                        constraintWidget = constraintWidget6;
                        SolverVariable solverVariable8 = solverVariable3;
                        linearSystem.addCentering(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), f8, solverVariable5, solverVariable8, constraintAnchor2.getMargin(), i25);
                        solverVariable5 = solverVariable5;
                        solverVariable3 = solverVariable8;
                    } else {
                        solverVariable5 = solverVariable5;
                        solverVariable4 = solverVariable;
                        constraintWidget = constraintWidget6;
                    }
                    z29 = z9;
                    if (this.mVisibility == 8 && !constraintAnchor2.hasDependents()) {
                        return;
                    }
                    if (z26) {
                        int i38 = (!z29 || solverVariableCreateObjectVariable5 == solverVariable5 || z22 || !((constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier))) ? i21 : 6;
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i38);
                        linearSystem.addLowerThan(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), i38);
                        i21 = i38;
                    }
                    if (!z29 || !z17 || (constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier) || constraintWidget == parent) {
                        iMin2 = i20;
                        i22 = i21;
                        z30 = z28;
                    } else {
                        iMin2 = 6;
                        i22 = 6;
                        z30 = true;
                    }
                    if (z30) {
                        if (z27 && (!z16 || z10)) {
                            if (constraintWidget5 != parent && constraintWidget != parent) {
                                i37 = iMin2;
                            }
                            if ((constraintWidget5 instanceof Guideline) || (constraintWidget instanceof Guideline)) {
                                i37 = 5;
                            }
                            if ((constraintWidget5 instanceof Barrier) || (constraintWidget instanceof Barrier)) {
                                i37 = 5;
                            }
                            iMin2 = Math.max(z16 ? 5 : i37, iMin2);
                        }
                        if (z29) {
                            iMin2 = Math.min(i22, iMin2);
                            if (z13 && !z16 && (constraintWidget5 == parent || constraintWidget == parent)) {
                                i24 = 4;
                            } else {
                                i24 = iMin2;
                            }
                        } else {
                            i24 = iMin2;
                        }
                        linearSystem.addEquality(solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, constraintAnchor.getMargin(), i24);
                        linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), i24);
                    }
                    if (z29) {
                        int margin2 = solverVariable4 == solverVariableCreateObjectVariable5 ? constraintAnchor.getMargin() : 0;
                        if (solverVariableCreateObjectVariable5 != solverVariable4) {
                            linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable4, margin2, 5);
                        }
                    }
                    if (!z29 || !z22 || i11 != 0 || i18 != 0) {
                        i23 = 5;
                    } else if (z22 && i31 == 3) {
                        linearSystem.addGreaterThan(solverVariable3, solverVariableCreateObjectVariable3, 0, 8);
                        i23 = 5;
                    } else {
                        i23 = 5;
                        linearSystem.addGreaterThan(solverVariable3, solverVariableCreateObjectVariable3, 0, 5);
                    }
                }
                i29 = i23;
            } else {
                linearSystem.addEquality(solverVariable3, solverVariable5, -constraintAnchor2.getMargin(), 8);
                if (z9) {
                    if (this.mOptimizeWrapO && solverVariableCreateObjectVariable3.isFinalValue && (constraintWidget2 = this.mParent) != null) {
                        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                        if (z8) {
                            constraintWidgetContainer.addHorizontalWrapMinVariable(constraintAnchor);
                        } else {
                            constraintWidgetContainer.addVerticalWrapMinVariable(constraintAnchor);
                        }
                    } else {
                        i23 = 5;
                        linearSystem.addGreaterThan(solverVariableCreateObjectVariable3, solverVariable, 0, 5);
                    }
                }
                z29 = z9;
                i29 = i23;
            }
            i23 = 5;
            z29 = z9;
            i29 = i23;
        } else {
            SolverVariable solverVariable9 = solverVariable5;
            i29 = (z9 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
            solverVariable5 = solverVariable9;
            z29 = z9;
        }
        if (z29 && z23) {
            int margin3 = constraintAnchor2.mTarget != null ? constraintAnchor2.getMargin() : 0;
            if (solverVariable5 != solverVariable2) {
                if (!this.mOptimizeWrapO || !solverVariable3.isFinalValue || (constraintWidget3 = this.mParent) == null) {
                    linearSystem.addGreaterThan(solverVariable2, solverVariable3, margin3, i29);
                    return;
                }
                ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget3;
                if (z8) {
                    constraintWidgetContainer2.addHorizontalWrapMaxVariable(constraintAnchor2);
                } else {
                    constraintWidgetContainer2.addVerticalWrapMaxVariable(constraintAnchor2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isChainHead(int i9) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i10 = i9 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i10];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i10 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void serializeAttribute(StringBuilder sb, String str, String str2, String str3) {
        if (str3.equals(str2)) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(str2);
        sb.append(",\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void serializeDimensionRatio(StringBuilder sb, String str, float f8, int i9) {
        if (f8 == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f8);
        sb.append(",");
        sb.append(i9);
        sb.append("");
        sb.append("],\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void serializeSize(StringBuilder sb, String str, int i9, int i10, int i11, int i12, int i13, int i14, float f8, float f9) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "size", i9, Integer.MIN_VALUE);
        serializeAttribute(sb, "min", i10, 0);
        serializeAttribute(sb, "max", i11, Integer.MAX_VALUE);
        serializeAttribute(sb, "matchMin", i13, 0);
        serializeAttribute(sb, "matchDef", i14, 0);
        serializeAttribute(sb, "matchPercent", i14, 1);
        serializeAttribute(sb, "matchConstraintPercent", f8, 1.0f);
        serializeAttribute(sb, "weight", f9, 1.0f);
        serializeAttribute(sb, "override", i12, 1);
        sb.append("},\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i9, boolean z8) {
        if (z8) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i9 == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i9, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i9, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i9, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i9, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i9, true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean addFirst() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r18v0, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r18v1, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r18v2, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r27v2, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r27v3, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r27v4, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r27v5, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r27v6, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r9v10, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r9v8, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r9v9, resolved type: boolean */
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
    public void addToSolver(LinearSystem linearSystem, boolean z8) {
        boolean z9;
        boolean z10;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        boolean zIsInHorizontalChain;
        boolean zIsInVerticalChain;
        int i9;
        SolverVariable solverVariable;
        int i10;
        int i11;
        int i12;
        boolean z11;
        int i13;
        boolean z12;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        boolean z13;
        SolverVariable solverVariable2;
        int i14;
        boolean z14;
        boolean z15;
        boolean z16;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        int i15;
        char c;
        int i16;
        int i17;
        int i18;
        LinearSystem linearSystem2;
        Metrics metrics;
        int i19;
        float f8;
        boolean z17;
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int i20;
        int i21;
        int i22;
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
            z9 = false;
            z10 = false;
        } else {
            z10 = constraintWidget3 != null && constraintWidget3.mListDimensionBehaviors[0] == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            z9 = constraintWidget3 != null && constraintWidget3.mListDimensionBehaviors[1] == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            int i23 = this.mWrapBehaviorInParent;
            if (i23 == 1) {
                z9 = false;
            } else if (i23 == 2) {
                z10 = false;
            } else if (i23 == 3) {
                z9 = false;
                z10 = false;
            }
        }
        if (this.mVisibility == 8 && !this.mAnimated && !hasDependencies()) {
            boolean[] zArr = this.mIsInBarrier;
            if (!zArr[0] && !zArr[1]) {
                return;
            }
        }
        boolean z18 = this.mResolvedHorizontal;
        if (z18 || this.mResolvedVertical) {
            if (z18) {
                linearSystem3.addEquality(solverVariableCreateObjectVariable, this.mX);
                linearSystem3.addEquality(solverVariableCreateObjectVariable2, this.mX + this.mWidth);
                if (z10 && (constraintWidget2 = this.mParent) != null) {
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
                linearSystem3.addEquality(solverVariableCreateObjectVariable3, this.mY);
                linearSystem3.addEquality(solverVariableCreateObjectVariable4, this.mY + this.mHeight);
                if (this.mBaseline.hasDependents()) {
                    linearSystem3.addEquality(solverVariableCreateObjectVariable5, this.mY + this.mBaselineDistance);
                }
                if (z9 && (constraintWidget = this.mParent) != null) {
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
        if (z8 && (horizontalWidgetRun2 = this.mHorizontalRun) != null && (verticalWidgetRun2 = this.mVerticalRun) != null) {
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
                    if (z10 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable2, 0, 8);
                    }
                    if (z9 && this.isTerminalWidget[1] && !isInVerticalChain()) {
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
                i22 = 1;
            } else {
                zIsInHorizontalChain = isInHorizontalChain();
                i22 = 1;
            }
            if (isChainHead(i22)) {
                ((ConstraintWidgetContainer) this.mParent).addChain(this, i22);
                zIsInVerticalChain = true;
            } else {
                zIsInVerticalChain = isInVerticalChain();
            }
            if (!zIsInHorizontalChain && z10 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariableCreateObjectVariable2, 0, 1);
            }
            if (!zIsInVerticalChain && z9 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mBottom), solverVariableCreateObjectVariable4, 0, 1);
            }
        } else {
            zIsInHorizontalChain = false;
            zIsInVerticalChain = false;
        }
        int i24 = this.mWidth;
        int i25 = this.mMinWidth;
        if (i24 >= i25) {
            i25 = i24;
        }
        int i26 = this.mHeight;
        int i27 = this.mMinHeight;
        if (i26 >= i27) {
            i27 = i26;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviourArr[0];
        SolverVariable solverVariable6 = solverVariableCreateObjectVariable4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z19 = constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviourArr[1];
        boolean z20 = zIsInHorizontalChain;
        boolean z21 = constraintWidget$DimensionBehaviour5 != constraintWidget$DimensionBehaviour4;
        boolean z22 = zIsInVerticalChain;
        int i28 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i28;
        int i29 = i27;
        float f9 = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f9;
        int i30 = this.mMatchConstraintDefaultWidth;
        int i31 = this.mMatchConstraintDefaultHeight;
        if (f9 > 0.0f) {
            i9 = i25;
            if (this.mVisibility != 8) {
                i10 = (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4 && i30 == 0) ? 3 : i30;
                int i32 = (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour4 && i31 == 0) ? 3 : i31;
                if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4 && constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour4) {
                    solverVariable = solverVariableCreateObjectVariable2;
                    i21 = 3;
                    if (i10 == 3 && i32 == 3) {
                        setupDimensionRatio(z10, z9, z19, z21);
                    }
                    i29 = i29;
                    z11 = true;
                    i11 = i32;
                    i12 = i9;
                    int[] iArr = this.mResolvedMatchConstraintDefault;
                    iArr[0] = i10;
                    iArr[1] = i11;
                    this.mResolvedHasRatio = z11;
                    if (z11) {
                        int i33 = this.mResolvedDimensionRatioSide;
                        i13 = -1;
                        boolean z23 = i33 != 0 || i33 == -1;
                        if (z11 || !((i20 = this.mResolvedDimensionRatioSide) == 1 || i20 == i13)) {
                            z12 = false;
                        } else {
                            z12 = true;
                        }
                        constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
                        constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 || !(this instanceof ConstraintWidgetContainer)) {
                            z13 = false;
                        } else {
                            z13 = true;
                        }
                        if (z13) {
                            i12 = 0;
                        }
                        boolean z24 = !this.mCenter.isConnected();
                        boolean[] zArr2 = this.mIsInBarrier;
                        boolean z25 = zArr2[0];
                        boolean z26 = zArr2[1];
                        if (this.mHorizontalResolution != 2 || this.mResolvedHorizontal) {
                            z16 = z10;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                            z15 = z20;
                            z14 = z22;
                            i14 = i10;
                        } else {
                            if (z8 && (horizontalWidgetRun = this.mHorizontalRun) != null) {
                                DependencyNode dependencyNode2 = horizontalWidgetRun.start;
                                if (dependencyNode2.resolved && horizontalWidgetRun.end.resolved) {
                                    if (z8) {
                                        linearSystem3.addEquality(solverVariableCreateObjectVariable, dependencyNode2.value);
                                        SolverVariable solverVariable7 = solverVariable;
                                        linearSystem3.addEquality(solverVariable7, this.mHorizontalRun.end.value);
                                        if (this.mParent != null && z10 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                            linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(this.mParent.mRight), solverVariable7, 0, 8);
                                        }
                                        solverVariable = solverVariable7;
                                    }
                                    z16 = z10;
                                    solverVariable2 = solverVariableCreateObjectVariable3;
                                    z15 = z20;
                                    z14 = z22;
                                    i14 = i10;
                                }
                            }
                            SolverVariable solverVariable8 = solverVariable;
                            ConstraintWidget constraintWidget4 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable6 = constraintWidget4 != null ? linearSystem3.createObjectVariable(constraintWidget4.mRight) : null;
                            ConstraintWidget constraintWidget5 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable7 = constraintWidget5 != null ? linearSystem3.createObjectVariable(constraintWidget5.mLeft) : null;
                            boolean z27 = this.isTerminalWidget[0];
                            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = this.mListDimensionBehaviors;
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = constraintWidget$DimensionBehaviourArr2[0];
                            ConstraintAnchor constraintAnchor = this.mLeft;
                            i14 = i10;
                            ConstraintAnchor constraintAnchor2 = this.mRight;
                            z11 = z11;
                            z16 = z10;
                            int i34 = this.mX;
                            boolean z28 = z23;
                            SolverVariable solverVariable9 = solverVariableCreateObjectVariable7;
                            int i35 = this.mMinWidth;
                            int i36 = this.mMaxDimension[0];
                            float f10 = this.mHorizontalBiasPercent;
                            boolean z29 = constraintWidget$DimensionBehaviourArr2[1] == constraintWidget$DimensionBehaviour4;
                            solverVariableCreateObjectVariable = solverVariableCreateObjectVariable;
                            solverVariable6 = solverVariable6;
                            constraintWidget$DimensionBehaviour4 = constraintWidget$DimensionBehaviour4;
                            z9 = z9;
                            z15 = z20;
                            z14 = z22;
                            constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour2;
                            solverVariable = solverVariable8;
                            solverVariable2 = solverVariableCreateObjectVariable3;
                            linearSystem3 = linearSystem;
                            applyConstraints(linearSystem3, true, z16, z9, z27, solverVariable9, solverVariableCreateObjectVariable6, constraintWidget$DimensionBehaviour6, z13, constraintAnchor, constraintAnchor2, i34, i12, i35, i36, f10, z28, z29, z15, z14, z25, i14, i11, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z24);
                        }
                        if (z8 || (verticalWidgetRun = this.mVerticalRun) == null) {
                            solverVariable3 = solverVariable2;
                            solverVariable4 = solverVariable6;
                            solverVariable5 = r24;
                            i15 = 0;
                            c = 1;
                            i16 = 8;
                            i17 = 1;
                        } else {
                            DependencyNode dependencyNode3 = verticalWidgetRun.start;
                            if (dependencyNode3.resolved && verticalWidgetRun.end.resolved) {
                                int i37 = dependencyNode3.value;
                                solverVariable3 = solverVariable2;
                                linearSystem3.addEquality(solverVariable3, i37);
                                solverVariable4 = solverVariable6;
                                linearSystem3.addEquality(solverVariable4, this.mVerticalRun.end.value);
                                solverVariable5 = solverVariableCreateObjectVariable5;
                                linearSystem3.addEquality(solverVariable5, this.mVerticalRun.baseline.value);
                                ConstraintWidget constraintWidget6 = this.mParent;
                                if (constraintWidget6 == null || z14 || !z9) {
                                    i15 = 0;
                                    c = 1;
                                } else {
                                    c = 1;
                                    if (this.isTerminalWidget[1]) {
                                        i15 = 0;
                                        i16 = 8;
                                        linearSystem3.addGreaterThan(linearSystem3.createObjectVariable(constraintWidget6.mBottom), solverVariable4, 0, 8);
                                    } else {
                                        i15 = 0;
                                    }
                                    i17 = i15;
                                }
                                i16 = 8;
                                i17 = i15;
                            } else {
                                solverVariable3 = solverVariable2;
                                solverVariable4 = solverVariable6;
                                solverVariable5 = r24;
                                i15 = 0;
                                c = 1;
                                i16 = 8;
                                i17 = 1;
                            }
                        }
                        if (this.mVerticalResolution == 2) {
                            i18 = i15;
                        } else {
                            i18 = i17;
                        }
                        if (i18 == 0 && !this.mResolvedVertical) {
                            boolean z30 = (this.mListDimensionBehaviors[c] == constraintWidget$DimensionBehaviour2 && (this instanceof ConstraintWidgetContainer)) ? c : i15;
                            int i38 = z30 != 0 ? i15 : i29;
                            ConstraintWidget constraintWidget7 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable8 = constraintWidget7 != null ? linearSystem3.createObjectVariable(constraintWidget7.mBottom) : null;
                            ConstraintWidget constraintWidget8 = this.mParent;
                            SolverVariable solverVariableCreateObjectVariable9 = constraintWidget8 != null ? linearSystem3.createObjectVariable(constraintWidget8.mTop) : null;
                            if (this.mBaselineDistance > 0 || this.mVisibility == i16) {
                                z17 = z24;
                                ConstraintAnchor constraintAnchor3 = this.mBaseline;
                                if (constraintAnchor3.mTarget != null) {
                                    linearSystem3.addEquality(solverVariable5, solverVariable3, getBaselineDistance(), i16);
                                    linearSystem3.addEquality(solverVariable5, linearSystem3.createObjectVariable(this.mBaseline.mTarget), this.mBaseline.getMargin(), i16);
                                    if (z9) {
                                        linearSystem3.addGreaterThan(solverVariableCreateObjectVariable8, linearSystem3.createObjectVariable(this.mBottom), i15, 5);
                                    }
                                    z17 = i15;
                                } else if (this.mVisibility == i16) {
                                    linearSystem3.addEquality(solverVariable5, solverVariable3, constraintAnchor3.getMargin(), i16);
                                    z17 = z24;
                                } else {
                                    linearSystem3.addEquality(solverVariable5, solverVariable3, getBaselineDistance(), i16);
                                    z17 = z24;
                                }
                            }
                            z17 = z24;
                            boolean z31 = this.isTerminalWidget[c];
                            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr3 = this.mListDimensionBehaviors;
                            int i39 = i15;
                            char c9 = c;
                            applyConstraints(linearSystem, false, z9, z16, z31, solverVariableCreateObjectVariable9, solverVariableCreateObjectVariable8, constraintWidget$DimensionBehaviourArr3[c], z30, this.mTop, this.mBottom, this.mY, i38, this.mMinHeight, this.mMaxDimension[c9], this.mVerticalBiasPercent, z12, constraintWidget$DimensionBehaviourArr3[i39] == constraintWidget$DimensionBehaviour4 ? c9 : i39, z14, z15, z26, i11, i14, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z17);
                        }
                        if (z11) {
                            i19 = this.mResolvedDimensionRatioSide;
                            f8 = this.mResolvedDimensionRatio;
                            if (i19 == 1) {
                                linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                                linearSystem2 = linearSystem;
                            } else {
                                linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                                linearSystem2 = linearSystem;
                            }
                        } else {
                            linearSystem2 = linearSystem;
                        }
                        if (this.mCenter.isConnected()) {
                            linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                        }
                        this.mResolvedHorizontal = false;
                        this.mResolvedVertical = false;
                        metrics = LinearSystem.sMetrics;
                        if (metrics != null) {
                            metrics.mEquations = linearSystem2.getNumEquations();
                            LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
                        }
                    }
                    i13 = -1;
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
                    constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (z13) {
                        i12 = 0;
                    }
                    boolean z210 = !this.mCenter.isConnected();
                    boolean[] zArr3 = this.mIsInBarrier;
                    boolean z211 = zArr3[0];
                    boolean z212 = zArr3[1];
                    if (this.mHorizontalResolution != 2) {
                        z16 = z10;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        z15 = z20;
                        z14 = z22;
                        i14 = i10;
                    } else {
                        z16 = z10;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        z15 = z20;
                        z14 = z22;
                        i14 = i10;
                    }
                    if (z8) {
                        solverVariable3 = solverVariable2;
                        solverVariable4 = solverVariable6;
                        solverVariable5 = r24;
                        i15 = 0;
                        c = 1;
                        i16 = 8;
                        i17 = 1;
                    } else {
                        solverVariable3 = solverVariable2;
                        solverVariable4 = solverVariable6;
                        solverVariable5 = r24;
                        i15 = 0;
                        c = 1;
                        i16 = 8;
                        i17 = 1;
                    }
                    if (this.mVerticalResolution == 2) {
                        i18 = i15;
                    } else {
                        i18 = i17;
                    }
                    if (i18 == 0) {
                    }
                    if (z11) {
                        i19 = this.mResolvedDimensionRatioSide;
                        f8 = this.mResolvedDimensionRatio;
                        if (i19 == 1) {
                            linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                            linearSystem2 = linearSystem;
                        } else {
                            linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                            linearSystem2 = linearSystem;
                        }
                    } else {
                        linearSystem2 = linearSystem;
                    }
                    if (this.mCenter.isConnected()) {
                        linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                    }
                    this.mResolvedHorizontal = false;
                    this.mResolvedVertical = false;
                    metrics = LinearSystem.sMetrics;
                    if (metrics != null) {
                        metrics.mEquations = linearSystem2.getNumEquations();
                        LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
                    }
                }
                solverVariable = solverVariableCreateObjectVariable2;
                i21 = 3;
                if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4 && i10 == i21) {
                    this.mResolvedDimensionRatioSide = 0;
                    int i40 = (int) (i26 * f9);
                    if (constraintWidget$DimensionBehaviour5 != constraintWidget$DimensionBehaviour4) {
                        i10 = 4;
                        i11 = i32;
                        i12 = i40;
                    } else {
                        solverVariable6 = solverVariable6;
                        i29 = i29;
                        i11 = i32;
                        i12 = i40;
                        z11 = true;
                    }
                } else {
                    if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour4 && i32 == i21) {
                        this.mResolvedDimensionRatioSide = 1;
                        if (i28 == -1) {
                            this.mResolvedDimensionRatio = 1.0f / f9;
                        }
                        i29 = (int) (this.mResolvedDimensionRatio * i24);
                        if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour4) {
                            solverVariable6 = solverVariable6;
                            i12 = i9;
                            z11 = false;
                            i11 = 4;
                        }
                    } else {
                        i29 = i29;
                    }
                    z11 = true;
                    i11 = i32;
                    i12 = i9;
                }
                int[] iArr2 = this.mResolvedMatchConstraintDefault;
                iArr2[0] = i10;
                iArr2[1] = i11;
                this.mResolvedHasRatio = z11;
                if (z11) {
                    int i310 = this.mResolvedDimensionRatioSide;
                    i13 = -1;
                    if (i310 != 0) {
                    }
                    if (z11) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
                    constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (z13) {
                        i12 = 0;
                    }
                    boolean z213 = !this.mCenter.isConnected();
                    boolean[] zArr4 = this.mIsInBarrier;
                    boolean z214 = zArr4[0];
                    boolean z215 = zArr4[1];
                    if (this.mHorizontalResolution != 2) {
                        z16 = z10;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        z15 = z20;
                        z14 = z22;
                        i14 = i10;
                    } else {
                        z16 = z10;
                        solverVariable2 = solverVariableCreateObjectVariable3;
                        z15 = z20;
                        z14 = z22;
                        i14 = i10;
                    }
                    if (z8) {
                        solverVariable3 = solverVariable2;
                        solverVariable4 = solverVariable6;
                        solverVariable5 = r24;
                        i15 = 0;
                        c = 1;
                        i16 = 8;
                        i17 = 1;
                    } else {
                        solverVariable3 = solverVariable2;
                        solverVariable4 = solverVariable6;
                        solverVariable5 = r24;
                        i15 = 0;
                        c = 1;
                        i16 = 8;
                        i17 = 1;
                    }
                    if (this.mVerticalResolution == 2) {
                        i18 = i15;
                    } else {
                        i18 = i17;
                    }
                    if (i18 == 0) {
                    }
                    if (z11) {
                        i19 = this.mResolvedDimensionRatioSide;
                        f8 = this.mResolvedDimensionRatio;
                        if (i19 == 1) {
                            linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                            linearSystem2 = linearSystem;
                        } else {
                            linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                            linearSystem2 = linearSystem;
                        }
                    } else {
                        linearSystem2 = linearSystem;
                    }
                    if (this.mCenter.isConnected()) {
                        linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                    }
                    this.mResolvedHorizontal = false;
                    this.mResolvedVertical = false;
                    metrics = LinearSystem.sMetrics;
                    if (metrics != null) {
                        metrics.mEquations = linearSystem2.getNumEquations();
                        LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
                    }
                }
                i13 = -1;
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
                constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (z13) {
                    i12 = 0;
                }
                boolean z216 = !this.mCenter.isConnected();
                boolean[] zArr5 = this.mIsInBarrier;
                boolean z217 = zArr5[0];
                boolean z218 = zArr5[1];
                if (this.mHorizontalResolution != 2) {
                    z16 = z10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    z15 = z20;
                    z14 = z22;
                    i14 = i10;
                } else {
                    z16 = z10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    z15 = z20;
                    z14 = z22;
                    i14 = i10;
                }
                if (z8) {
                    solverVariable3 = solverVariable2;
                    solverVariable4 = solverVariable6;
                    solverVariable5 = r24;
                    i15 = 0;
                    c = 1;
                    i16 = 8;
                    i17 = 1;
                } else {
                    solverVariable3 = solverVariable2;
                    solverVariable4 = solverVariable6;
                    solverVariable5 = r24;
                    i15 = 0;
                    c = 1;
                    i16 = 8;
                    i17 = 1;
                }
                if (this.mVerticalResolution == 2) {
                    i18 = i15;
                } else {
                    i18 = i17;
                }
                if (i18 == 0) {
                }
                if (z11) {
                    i19 = this.mResolvedDimensionRatioSide;
                    f8 = this.mResolvedDimensionRatio;
                    if (i19 == 1) {
                        linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                        linearSystem2 = linearSystem;
                    } else {
                        linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                        linearSystem2 = linearSystem;
                    }
                } else {
                    linearSystem2 = linearSystem;
                }
                if (this.mCenter.isConnected()) {
                    linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.mEquations = linearSystem2.getNumEquations();
                    LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
                }
            }
            z11 = false;
            int[] iArr3 = this.mResolvedMatchConstraintDefault;
            iArr3[0] = i10;
            iArr3[1] = i11;
            this.mResolvedHasRatio = z11;
            if (z11) {
                int i311 = this.mResolvedDimensionRatioSide;
                i13 = -1;
                if (i311 != 0) {
                }
                if (z11) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
                constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (z13) {
                    i12 = 0;
                }
                boolean z219 = !this.mCenter.isConnected();
                boolean[] zArr6 = this.mIsInBarrier;
                boolean z2110 = zArr6[0];
                boolean z2111 = zArr6[1];
                if (this.mHorizontalResolution != 2) {
                    z16 = z10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    z15 = z20;
                    z14 = z22;
                    i14 = i10;
                } else {
                    z16 = z10;
                    solverVariable2 = solverVariableCreateObjectVariable3;
                    z15 = z20;
                    z14 = z22;
                    i14 = i10;
                }
                if (z8) {
                    solverVariable3 = solverVariable2;
                    solverVariable4 = solverVariable6;
                    solverVariable5 = r24;
                    i15 = 0;
                    c = 1;
                    i16 = 8;
                    i17 = 1;
                } else {
                    solverVariable3 = solverVariable2;
                    solverVariable4 = solverVariable6;
                    solverVariable5 = r24;
                    i15 = 0;
                    c = 1;
                    i16 = 8;
                    i17 = 1;
                }
                if (this.mVerticalResolution == 2) {
                    i18 = i15;
                } else {
                    i18 = i17;
                }
                if (i18 == 0) {
                }
                if (z11) {
                    i19 = this.mResolvedDimensionRatioSide;
                    f8 = this.mResolvedDimensionRatio;
                    if (i19 == 1) {
                        linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                        linearSystem2 = linearSystem;
                    } else {
                        linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                        linearSystem2 = linearSystem;
                    }
                } else {
                    linearSystem2 = linearSystem;
                }
                if (this.mCenter.isConnected()) {
                    linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.mEquations = linearSystem2.getNumEquations();
                    LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
                }
            }
            i13 = -1;
            if (z11) {
                z12 = false;
            } else {
                z12 = false;
            }
            constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
            constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (z13) {
                i12 = 0;
            }
            boolean z2112 = !this.mCenter.isConnected();
            boolean[] zArr7 = this.mIsInBarrier;
            boolean z2113 = zArr7[0];
            boolean z2114 = zArr7[1];
            if (this.mHorizontalResolution != 2) {
                z16 = z10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                z15 = z20;
                z14 = z22;
                i14 = i10;
            } else {
                z16 = z10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                z15 = z20;
                z14 = z22;
                i14 = i10;
            }
            if (z8) {
                solverVariable3 = solverVariable2;
                solverVariable4 = solverVariable6;
                solverVariable5 = r24;
                i15 = 0;
                c = 1;
                i16 = 8;
                i17 = 1;
            } else {
                solverVariable3 = solverVariable2;
                solverVariable4 = solverVariable6;
                solverVariable5 = r24;
                i15 = 0;
                c = 1;
                i16 = 8;
                i17 = 1;
            }
            if (this.mVerticalResolution == 2) {
                i18 = i15;
            } else {
                i18 = i17;
            }
            if (i18 == 0) {
            }
            if (z11) {
                i19 = this.mResolvedDimensionRatioSide;
                f8 = this.mResolvedDimensionRatio;
                if (i19 == 1) {
                    linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                    linearSystem2 = linearSystem;
                } else {
                    linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                    linearSystem2 = linearSystem;
                }
            } else {
                linearSystem2 = linearSystem;
            }
            if (this.mCenter.isConnected()) {
                linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
            }
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
            metrics = LinearSystem.sMetrics;
            if (metrics != null) {
                metrics.mEquations = linearSystem2.getNumEquations();
                LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
            }
        }
        i9 = i25;
        solverVariable = solverVariableCreateObjectVariable2;
        i10 = i30;
        i11 = i31;
        i12 = i9;
        z11 = false;
        int[] iArr4 = this.mResolvedMatchConstraintDefault;
        iArr4[0] = i10;
        iArr4[1] = i11;
        this.mResolvedHasRatio = z11;
        if (z11) {
            int i312 = this.mResolvedDimensionRatioSide;
            i13 = -1;
            if (i312 != 0) {
            }
            if (z11) {
                z12 = false;
            } else {
                z12 = false;
            }
            constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
            constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (z13) {
                i12 = 0;
            }
            boolean z2115 = !this.mCenter.isConnected();
            boolean[] zArr8 = this.mIsInBarrier;
            boolean z2116 = zArr8[0];
            boolean z2117 = zArr8[1];
            if (this.mHorizontalResolution != 2) {
                z16 = z10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                z15 = z20;
                z14 = z22;
                i14 = i10;
            } else {
                z16 = z10;
                solverVariable2 = solverVariableCreateObjectVariable3;
                z15 = z20;
                z14 = z22;
                i14 = i10;
            }
            if (z8) {
                solverVariable3 = solverVariable2;
                solverVariable4 = solverVariable6;
                solverVariable5 = r24;
                i15 = 0;
                c = 1;
                i16 = 8;
                i17 = 1;
            } else {
                solverVariable3 = solverVariable2;
                solverVariable4 = solverVariable6;
                solverVariable5 = r24;
                i15 = 0;
                c = 1;
                i16 = 8;
                i17 = 1;
            }
            if (this.mVerticalResolution == 2) {
                i18 = i15;
            } else {
                i18 = i17;
            }
            if (i18 == 0) {
            }
            if (z11) {
                i19 = this.mResolvedDimensionRatioSide;
                f8 = this.mResolvedDimensionRatio;
                if (i19 == 1) {
                    linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                    linearSystem2 = linearSystem;
                } else {
                    linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                    linearSystem2 = linearSystem;
                }
            } else {
                linearSystem2 = linearSystem;
            }
            if (this.mCenter.isConnected()) {
                linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
            }
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
            metrics = LinearSystem.sMetrics;
            if (metrics != null) {
                metrics.mEquations = linearSystem2.getNumEquations();
                LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
            }
        }
        i13 = -1;
        if (z11) {
            z12 = false;
        } else {
            z12 = false;
        }
        constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[0];
        constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
            z13 = false;
        } else {
            z13 = false;
        }
        if (z13) {
            i12 = 0;
        }
        boolean z2118 = !this.mCenter.isConnected();
        boolean[] zArr9 = this.mIsInBarrier;
        boolean z2119 = zArr9[0];
        boolean z21110 = zArr9[1];
        if (this.mHorizontalResolution != 2) {
            z16 = z10;
            solverVariable2 = solverVariableCreateObjectVariable3;
            z15 = z20;
            z14 = z22;
            i14 = i10;
        } else {
            z16 = z10;
            solverVariable2 = solverVariableCreateObjectVariable3;
            z15 = z20;
            z14 = z22;
            i14 = i10;
        }
        if (z8) {
            solverVariable3 = solverVariable2;
            solverVariable4 = solverVariable6;
            solverVariable5 = r24;
            i15 = 0;
            c = 1;
            i16 = 8;
            i17 = 1;
        } else {
            solverVariable3 = solverVariable2;
            solverVariable4 = solverVariable6;
            solverVariable5 = r24;
            i15 = 0;
            c = 1;
            i16 = 8;
            i17 = 1;
        }
        if (this.mVerticalResolution == 2) {
            i18 = i15;
        } else {
            i18 = i17;
        }
        if (i18 == 0) {
        }
        if (z11) {
            i19 = this.mResolvedDimensionRatioSide;
            f8 = this.mResolvedDimensionRatio;
            if (i19 == 1) {
                linearSystem.addRatio(solverVariable4, solverVariable3, solverVariable, solverVariableCreateObjectVariable, f8, 8);
                linearSystem2 = linearSystem;
            } else {
                linearSystem.addRatio(solverVariable, solverVariableCreateObjectVariable, solverVariable4, solverVariable3, f8, 8);
                linearSystem2 = linearSystem;
            }
        } else {
            linearSystem2 = linearSystem;
        }
        if (this.mCenter.isConnected()) {
            linearSystem2.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
        }
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        metrics = LinearSystem.sMetrics;
        if (metrics != null) {
            metrics.mEquations = linearSystem2.getNumEquations();
            LinearSystem.sMetrics.mVariables = linearSystem2.getNumVariables();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connect(ConstraintAnchor$Type constraintAnchor$Type, ConstraintWidget constraintWidget, ConstraintAnchor$Type constraintAnchor$Type2, int i9) {
        ConstraintAnchor$Type constraintAnchor$Type3;
        ConstraintAnchor$Type constraintAnchor$Type4;
        boolean z8;
        ConstraintAnchor$Type constraintAnchor$Type5 = ConstraintAnchor$Type.CENTER;
        if (constraintAnchor$Type == constraintAnchor$Type5) {
            if (constraintAnchor$Type2 != constraintAnchor$Type5) {
                ConstraintAnchor$Type constraintAnchor$Type6 = ConstraintAnchor$Type.LEFT;
                if (constraintAnchor$Type2 == constraintAnchor$Type6 || constraintAnchor$Type2 == ConstraintAnchor$Type.RIGHT) {
                    connect(constraintAnchor$Type6, constraintWidget, constraintAnchor$Type2, 0);
                    connect(ConstraintAnchor$Type.RIGHT, constraintWidget, constraintAnchor$Type2, 0);
                    getAnchor(constraintAnchor$Type5).connect(constraintWidget.getAnchor(constraintAnchor$Type2), 0);
                    return;
                }
                ConstraintAnchor$Type constraintAnchor$Type7 = ConstraintAnchor$Type.TOP;
                if (constraintAnchor$Type2 == constraintAnchor$Type7 || constraintAnchor$Type2 == ConstraintAnchor$Type.BOTTOM) {
                    connect(constraintAnchor$Type7, constraintWidget, constraintAnchor$Type2, 0);
                    connect(ConstraintAnchor$Type.BOTTOM, constraintWidget, constraintAnchor$Type2, 0);
                    getAnchor(constraintAnchor$Type5).connect(constraintWidget.getAnchor(constraintAnchor$Type2), 0);
                    return;
                }
                return;
            }
            ConstraintAnchor$Type constraintAnchor$Type8 = ConstraintAnchor$Type.LEFT;
            ConstraintAnchor anchor = getAnchor(constraintAnchor$Type8);
            ConstraintAnchor$Type constraintAnchor$Type9 = ConstraintAnchor$Type.RIGHT;
            ConstraintAnchor anchor2 = getAnchor(constraintAnchor$Type9);
            ConstraintAnchor$Type constraintAnchor$Type10 = ConstraintAnchor$Type.TOP;
            ConstraintAnchor anchor3 = getAnchor(constraintAnchor$Type10);
            ConstraintAnchor$Type constraintAnchor$Type11 = ConstraintAnchor$Type.BOTTOM;
            ConstraintAnchor anchor4 = getAnchor(constraintAnchor$Type11);
            boolean z9 = true;
            if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                connect(constraintAnchor$Type8, constraintWidget, constraintAnchor$Type8, 0);
                connect(constraintAnchor$Type9, constraintWidget, constraintAnchor$Type9, 0);
                z8 = true;
            } else {
                z8 = false;
            }
            if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                connect(constraintAnchor$Type10, constraintWidget, constraintAnchor$Type10, 0);
                connect(constraintAnchor$Type11, constraintWidget, constraintAnchor$Type11, 0);
            } else {
                z9 = false;
            }
            if (z8 && z9) {
                getAnchor(constraintAnchor$Type5).connect(constraintWidget.getAnchor(constraintAnchor$Type5), 0);
                return;
            }
            if (z8) {
                ConstraintAnchor$Type constraintAnchor$Type12 = ConstraintAnchor$Type.CENTER_X;
                getAnchor(constraintAnchor$Type12).connect(constraintWidget.getAnchor(constraintAnchor$Type12), 0);
                return;
            } else {
                if (z9) {
                    ConstraintAnchor$Type constraintAnchor$Type13 = ConstraintAnchor$Type.CENTER_Y;
                    getAnchor(constraintAnchor$Type13).connect(constraintWidget.getAnchor(constraintAnchor$Type13), 0);
                    return;
                }
                return;
            }
        }
        ConstraintAnchor$Type constraintAnchor$Type14 = ConstraintAnchor$Type.CENTER_X;
        if (constraintAnchor$Type == constraintAnchor$Type14 && (constraintAnchor$Type2 == (constraintAnchor$Type4 = ConstraintAnchor$Type.LEFT) || constraintAnchor$Type2 == ConstraintAnchor$Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(constraintAnchor$Type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(constraintAnchor$Type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor$Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(constraintAnchor$Type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor$Type constraintAnchor$Type15 = ConstraintAnchor$Type.CENTER_Y;
        if (constraintAnchor$Type == constraintAnchor$Type15 && (constraintAnchor$Type2 == (constraintAnchor$Type3 = ConstraintAnchor$Type.TOP) || constraintAnchor$Type2 == ConstraintAnchor$Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(constraintAnchor$Type2);
            getAnchor(constraintAnchor$Type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor$Type.BOTTOM).connect(anchor8, 0);
            getAnchor(constraintAnchor$Type15).connect(anchor8, 0);
            return;
        }
        if (constraintAnchor$Type == constraintAnchor$Type14 && constraintAnchor$Type2 == constraintAnchor$Type14) {
            ConstraintAnchor$Type constraintAnchor$Type16 = ConstraintAnchor$Type.LEFT;
            getAnchor(constraintAnchor$Type16).connect(constraintWidget.getAnchor(constraintAnchor$Type16), 0);
            ConstraintAnchor$Type constraintAnchor$Type17 = ConstraintAnchor$Type.RIGHT;
            getAnchor(constraintAnchor$Type17).connect(constraintWidget.getAnchor(constraintAnchor$Type17), 0);
            getAnchor(constraintAnchor$Type14).connect(constraintWidget.getAnchor(constraintAnchor$Type2), 0);
            return;
        }
        if (constraintAnchor$Type == constraintAnchor$Type15 && constraintAnchor$Type2 == constraintAnchor$Type15) {
            ConstraintAnchor$Type constraintAnchor$Type18 = ConstraintAnchor$Type.TOP;
            getAnchor(constraintAnchor$Type18).connect(constraintWidget.getAnchor(constraintAnchor$Type18), 0);
            ConstraintAnchor$Type constraintAnchor$Type19 = ConstraintAnchor$Type.BOTTOM;
            getAnchor(constraintAnchor$Type19).connect(constraintWidget.getAnchor(constraintAnchor$Type19), 0);
            getAnchor(constraintAnchor$Type15).connect(constraintWidget.getAnchor(constraintAnchor$Type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(constraintAnchor$Type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(constraintAnchor$Type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor$Type constraintAnchor$Type20 = ConstraintAnchor$Type.BASELINE;
            if (constraintAnchor$Type == constraintAnchor$Type20) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor$Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor$Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (constraintAnchor$Type == ConstraintAnchor$Type.TOP || constraintAnchor$Type == ConstraintAnchor$Type.BOTTOM) {
                ConstraintAnchor anchor13 = getAnchor(constraintAnchor$Type20);
                if (anchor13 != null) {
                    anchor13.reset();
                }
                ConstraintAnchor anchor14 = getAnchor(constraintAnchor$Type5);
                if (anchor14.getTarget() != anchor10) {
                    anchor14.reset();
                }
                ConstraintAnchor opposite = getAnchor(constraintAnchor$Type).getOpposite();
                ConstraintAnchor anchor15 = getAnchor(constraintAnchor$Type15);
                if (anchor15.isConnected()) {
                    opposite.reset();
                    anchor15.reset();
                }
            } else if (constraintAnchor$Type == ConstraintAnchor$Type.LEFT || constraintAnchor$Type == ConstraintAnchor$Type.RIGHT) {
                ConstraintAnchor anchor16 = getAnchor(constraintAnchor$Type5);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(constraintAnchor$Type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(constraintAnchor$Type14);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f8, int i9) {
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.CENTER;
        immediateConnect(constraintAnchor$Type, constraintWidget, constraintAnchor$Type, i9, 0);
        this.mCircleConstraintAngle = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        this.mListDimensionBehaviors = (ConstraintWidget$DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : map.get(constraintWidget.mParent);
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureMeasureRequested() {
        this.mMeasureRequested = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureWidgetRuns() {
        if (this.mHorizontalRun == null) {
            this.mHorizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.mVerticalRun == null) {
            this.mVerticalRun = new VerticalWidgetRun(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintAnchor getAnchor(ConstraintAnchor$Type constraintAnchor$Type) {
        switch (ConstraintWidget$1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor$Type.ordinal()]) {
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
                i.e(constraintAnchor$Type.name());
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getBiasPercent(int i9) {
        if (i9 == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i9 == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBottom() {
        return getY() + this.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDebugName() {
        return this.mDebugName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget$DimensionBehaviour getDimensionBehaviour(int i9) {
        if (i9 == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i9 == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getHasBaseline() {
        return this.mHasBaseline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor$Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor$Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget$DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalMargin() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i9 = constraintAnchor != null ? constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i9 + constraintAnchor2.mMargin : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLastHorizontalMeasureSpec() {
        return this.mLastHorizontalMeasureSpec;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLastVerticalMeasureSpec() {
        return this.mLastVerticalMeasureSpec;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLeft() {
        return getX();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLength(int i9) {
        if (i9 == 0) {
            return getWidth();
        }
        if (i9 == 1) {
            return getHeight();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinHeight() {
        return this.mMinHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinWidth() {
        return this.mMinWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getNextChainMember(int i9) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i9 != 0) {
            if (i9 == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOptimizerWrapHeight() {
        int i9 = this.mHeight;
        if (this.mListDimensionBehaviors[1] != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            return i9;
        }
        int i10 = this.mMatchConstraintDefaultHeight;
        int iMax = this.mMatchConstraintMinHeight;
        if (i10 == 1) {
            iMax = Math.max(iMax, i9);
        } else if (iMax > 0) {
            this.mHeight = iMax;
        } else {
            iMax = 0;
        }
        int i11 = this.mMatchConstraintMaxHeight;
        return (i11 <= 0 || i11 >= iMax) ? iMax : i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOptimizerWrapWidth() {
        int i9 = this.mWidth;
        int iMax = 0;
        if (this.mListDimensionBehaviors[0] != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            return i9;
        }
        int i10 = this.mMatchConstraintDefaultWidth;
        int i11 = this.mMatchConstraintMinWidth;
        if (i10 == 1) {
            iMax = Math.max(i11, i9);
        } else if (i11 > 0) {
            this.mWidth = i11;
            iMax = i11;
        }
        int i12 = this.mMatchConstraintMaxWidth;
        return (i12 <= 0 || i12 >= iMax) ? iMax : i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getParent() {
        return this.mParent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getPreviousChainMember(int i9) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i9 != 0) {
            if (i9 == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRelativePositioning(int i9) {
        if (i9 == 0) {
            return this.mRelX;
        }
        if (i9 == 1) {
            return this.mRelY;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRight() {
        return getX() + this.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRootX() {
        return this.mX + this.mOffsetX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRootY() {
        return this.mY + this.mOffsetY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetRun getRun(int i9) {
        if (i9 == 0) {
            return this.mHorizontalRun;
        }
        if (i9 == 1) {
            return this.mVerticalRun;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.mHeight);
        sb.append("\n");
        sb.append("    actualLeft:" + this.mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.mY);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTop() {
        return getY();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getType() {
        return this.mType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor$Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor$Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget$DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalMargin() {
        int i9 = this.mLeft != null ? this.mTop.mMargin : 0;
        return this.mRight != null ? i9 + this.mBottom.mMargin : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVisibility() {
        return this.mVisibility;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWrapBehaviorInParent() {
        return this.mWrapBehaviorInParent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasBaseline() {
        return this.mHasBaseline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDanglingDimension(int i9) {
        if (i9 == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDependencies() {
        int size = this.mAnchors.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (this.mAnchors.get(i9).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDimensionOverride() {
        return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasResolvedTargets(int i9, int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i9 == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            if (constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) {
                return (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.getMargin() + this.mLeft.mTarget.getFinalValue()) >= i10;
            }
        } else {
            ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue()) {
                if ((this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.getMargin() + this.mTop.mTarget.getFinalValue()) >= i10) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void immediateConnect(ConstraintAnchor$Type constraintAnchor$Type, ConstraintWidget constraintWidget, ConstraintAnchor$Type constraintAnchor$Type2, int i9, int i10) {
        getAnchor(constraintAnchor$Type).connect(constraintWidget.getAnchor(constraintAnchor$Type2), i9, i10, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAnimated() {
        return this.mAnimated;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHorizontalSolvingPassDone() {
        return this.mHorizontalSolvingPass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInBarrier(int i9) {
        return this.mIsInBarrier[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInPlaceholder() {
        return this.mInPlaceholder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInVirtualLayout() {
        return this.mInVirtualLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMeasureRequested() {
        return this.mMeasureRequested && this.mVisibility != 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isResolvedHorizontally() {
        if (this.mResolvedHorizontal) {
            return true;
        }
        return this.mLeft.hasFinalValue() && this.mRight.hasFinalValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isResolvedVertically() {
        if (this.mResolvedVertical) {
            return true;
        }
        return this.mTop.hasFinalValue() && this.mBottom.hasFinalValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRoot() {
        return this.mParent == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isVerticalSolvingPassDone() {
        return this.mVerticalSolvingPass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markHorizontalSolvingPassDone() {
        this.mHorizontalSolvingPass = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void markVerticalSolvingPassDone() {
        this.mVerticalSolvingPass = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean oppositeDimensionDependsOn(int i9) {
        char c = i9 == 0 ? (char) 1 : (char) 0;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[i9];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[c];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        return constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3 && constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean oppositeDimensionsTied() {
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        return constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        this.mX = 0;
        this.mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f8 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f8;
        this.mVerticalBiasPercent = f8;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.FIXED;
        constraintWidget$DimensionBehaviourArr[0] = constraintWidget$DimensionBehaviour;
        constraintWidget$DimensionBehaviourArr[1] = constraintWidget$DimensionBehaviour;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor$Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor$Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor$Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor$Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor$Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor$Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor$Type.CENTER_Y);
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mAnchors.get(i9).reset();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetFinalResolution() {
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mAnchors.get(i9).resetFinalResolution();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resetSolvingPassFlag() {
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnimated(boolean z8) {
        this.mAnimated = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBaselineDistance(int i9) {
        this.mBaselineDistance = i9;
        this.mHasBaseline = i9 > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setContainerItemSkip(int i9) {
        if (i9 >= 0) {
            this.mContainerItemSkip = i9;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDimension(int i9, int i10) {
        this.mWidth = i9;
        int i11 = this.mMinWidth;
        if (i9 < i11) {
            this.mWidth = i11;
        }
        this.mHeight = i10;
        int i12 = this.mMinHeight;
        if (i10 < i12) {
            this.mHeight = i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[PHI: r0
  0x0086: PHI (r0v2 int) = (r0v1 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int) binds: [B:46:0x0086, B:36:0x007f, B:24:0x0051, B:26:0x0057, B:28:0x0063, B:30:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0086 -> B:40:0x0087). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float fAbs;
        int i9 = 0;
        if (str == null || str.length() == 0) {
            this.mDimensionRatio = 0.0f;
            return;
        }
        int length = str.length();
        int iIndexOf = str.indexOf(44);
        int i10 = 0;
        int i11 = -1;
        if (iIndexOf > 0 && iIndexOf < length - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            if (!strSubstring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                i10 = strSubstring.equalsIgnoreCase("H") ? 1 : -1;
            }
            i11 = i10;
            i10 = iIndexOf + 1;
        }
        int iIndexOf2 = str.indexOf(58);
        try {
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i10);
                if (strSubstring2.length() > 0) {
                    fAbs = Float.parseFloat(strSubstring2);
                } else {
                    fAbs = i9;
                }
            } else {
                String strSubstring3 = str.substring(i10, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = i9;
                } else {
                    float f8 = Float.parseFloat(strSubstring3);
                    float f9 = Float.parseFloat(strSubstring4);
                    if (f8 <= 0.0f || f9 <= 0.0f) {
                        fAbs = i9;
                    } else {
                        fAbs = i11 == 1 ? Math.abs(f9 / f8) : Math.abs(f8 / f9);
                    }
                }
            }
        } catch (NumberFormatException unused) {
        }
        i9 = (fAbs > i9 ? 1 : (fAbs == i9 ? 0 : -1));
        if (i9 > 0) {
            this.mDimensionRatio = fAbs;
            this.mDimensionRatioSide = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalBaseline(int i9) {
        if (this.mHasBaseline) {
            int i10 = i9 - this.mBaselineDistance;
            int i11 = this.mHeight + i10;
            this.mY = i10;
            this.mTop.setFinalValue(i10);
            this.mBottom.setFinalValue(i11);
            this.mBaseline.setFinalValue(i9);
            this.mResolvedVertical = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalFrame(int i9, int i10, int i11, int i12, int i13, int i14) {
        setFrame(i9, i10, i11, i12);
        setBaselineDistance(i13);
        if (i14 == 0) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = false;
        } else if (i14 == 1) {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = true;
        } else if (i14 == 2) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = true;
        } else {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalHorizontal(int i9, int i10) {
        if (this.mResolvedHorizontal) {
            return;
        }
        this.mLeft.setFinalValue(i9);
        this.mRight.setFinalValue(i10);
        this.mX = i9;
        this.mWidth = i10 - i9;
        this.mResolvedHorizontal = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalLeft(int i9) {
        this.mLeft.setFinalValue(i9);
        this.mX = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalTop(int i9) {
        this.mTop.setFinalValue(i9);
        this.mY = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalVertical(int i9, int i10) {
        if (this.mResolvedVertical) {
            return;
        }
        this.mTop.setFinalValue(i9);
        this.mBottom.setFinalValue(i10);
        this.mY = i9;
        this.mHeight = i10 - i9;
        if (this.mHasBaseline) {
            this.mBaseline.setFinalValue(i9 + this.mBaselineDistance);
        }
        this.mResolvedVertical = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFrame(int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = i11 - i9;
        int i16 = i12 - i10;
        this.mX = i9;
        this.mY = i10;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.FIXED;
        if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && i15 < (i14 = this.mWidth)) {
            i15 = i14;
        }
        if (constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2 && i16 < (i13 = this.mHeight)) {
            i16 = i13;
        }
        this.mWidth = i15;
        this.mHeight = i16;
        int i17 = this.mMinHeight;
        if (i16 < i17) {
            this.mHeight = i17;
        }
        int i18 = this.mMinWidth;
        if (i15 < i18) {
            this.mWidth = i18;
        }
        int i19 = this.mMatchConstraintMaxWidth;
        if (i19 > 0 && constraintWidget$DimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mWidth = Math.min(this.mWidth, i19);
        }
        int i20 = this.mMatchConstraintMaxHeight;
        if (i20 > 0 && this.mListDimensionBehaviors[1] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mHeight = Math.min(this.mHeight, i20);
        }
        int i21 = this.mWidth;
        if (i15 != i21) {
            this.mWidthOverride = i21;
        }
        int i22 = this.mHeight;
        if (i16 != i22) {
            this.mHeightOverride = i22;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGoneMargin(ConstraintAnchor$Type constraintAnchor$Type, int i9) {
        int i10 = ConstraintWidget$1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor$Type.ordinal()];
        if (i10 == 1) {
            this.mLeft.mGoneMargin = i9;
            return;
        }
        if (i10 == 2) {
            this.mTop.mGoneMargin = i9;
            return;
        }
        if (i10 == 3) {
            this.mRight.mGoneMargin = i9;
        } else if (i10 == 4) {
            this.mBottom.mGoneMargin = i9;
        } else {
            if (i10 != 5) {
                return;
            }
            this.mBaseline.mGoneMargin = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHasBaseline(boolean z8) {
        this.mHasBaseline = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeight(int i9) {
        this.mHeight = i9;
        int i10 = this.mMinHeight;
        if (i9 < i10) {
            this.mHeight = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeightWrapContent(boolean z8) {
        this.mIsHeightWrapContent = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalBiasPercent(float f8) {
        this.mHorizontalBiasPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalChainStyle(int i9) {
        this.mHorizontalChainStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalDimension(int i9, int i10) {
        this.mX = i9;
        int i11 = i10 - i9;
        this.mWidth = i11;
        int i12 = this.mMinWidth;
        if (i11 < i12) {
            this.mWidth = i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour) {
        this.mListDimensionBehaviors[0] = constraintWidget$DimensionBehaviour;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalMatchStyle(int i9, int i10, int i11, float f8) {
        this.mMatchConstraintDefaultWidth = i9;
        this.mMatchConstraintMinWidth = i10;
        if (i11 == Integer.MAX_VALUE) {
            i11 = 0;
        }
        this.mMatchConstraintMaxWidth = i11;
        this.mMatchConstraintPercentWidth = f8;
        if (f8 <= 0.0f || f8 >= 1.0f || i9 != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalWeight(float f8) {
        this.mWeight[0] = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInBarrier(int i9, boolean z8) {
        this.mIsInBarrier[i9] = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInPlaceholder(boolean z8) {
        this.mInPlaceholder = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInVirtualLayout(boolean z8) {
        this.mInVirtualLayout = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastMeasureSpec(int i9, int i10) {
        this.mLastHorizontalMeasureSpec = i9;
        this.mLastVerticalMeasureSpec = i10;
        setMeasureRequested(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLength(int i9, int i10) {
        if (i10 == 0) {
            setWidth(i9);
        } else if (i10 == 1) {
            setHeight(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxHeight(int i9) {
        this.mMaxDimension[1] = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxWidth(int i9) {
        this.mMaxDimension[0] = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasureRequested(boolean z8) {
        this.mMeasureRequested = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinHeight(int i9) {
        if (i9 < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinWidth(int i9) {
        if (i9 < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOffset(int i9, int i10) {
        this.mOffsetX = i9;
        this.mOffsetY = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrigin(int i9, int i10) {
        this.mX = i9;
        this.mY = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRelativePositioning(int i9, int i10) {
        if (i10 == 0) {
            this.mRelX = i9;
        } else if (i10 == 1) {
            this.mRelY = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(String str) {
        this.mType = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalBiasPercent(float f8) {
        this.mVerticalBiasPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalChainStyle(int i9) {
        this.mVerticalChainStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalDimension(int i9, int i10) {
        this.mY = i9;
        int i11 = i10 - i9;
        this.mHeight = i11;
        int i12 = this.mMinHeight;
        if (i11 < i12) {
            this.mHeight = i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour) {
        this.mListDimensionBehaviors[1] = constraintWidget$DimensionBehaviour;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalMatchStyle(int i9, int i10, int i11, float f8) {
        this.mMatchConstraintDefaultHeight = i9;
        this.mMatchConstraintMinHeight = i10;
        if (i11 == Integer.MAX_VALUE) {
            i11 = 0;
        }
        this.mMatchConstraintMaxHeight = i11;
        this.mMatchConstraintPercentHeight = f8;
        if (f8 <= 0.0f || f8 >= 1.0f || i9 != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalWeight(float f8) {
        this.mWeight[1] = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVisibility(int i9) {
        this.mVisibility = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidth(int i9) {
        this.mWidth = i9;
        int i10 = this.mMinWidth;
        if (i9 < i10) {
            this.mWidth = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthWrapContent(boolean z8) {
        this.mIsWidthWrapContent = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWrapBehaviorInParent(int i9) {
        if (i9 < 0 || i9 > 3) {
            return;
        }
        this.mWrapBehaviorInParent = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setX(int i9) {
        this.mX = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setY(int i9) {
        this.mY = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupDimensionRatio(boolean z8, boolean z9, boolean z10, boolean z11) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z10 && !z11) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z10 && z11) {
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
            int i9 = this.mMatchConstraintMinWidth;
            if (i9 > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else {
                if (i9 != 0 || this.mMatchConstraintMinHeight <= 0) {
                    return;
                }
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mType != null ? a.p(new StringBuilder("type: "), this.mType, " ") : "");
        sb.append(this.mDebugName != null ? a.p(new StringBuilder("id: "), this.mDebugName, " ") : "");
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        return a.o(sb, ")", this.mHeight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFromRuns(boolean z8, boolean z9) {
        int i9;
        int i10;
        boolean zIsResolved = z8 & this.mHorizontalRun.isResolved();
        boolean zIsResolved2 = z9 & this.mVerticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.mHorizontalRun;
        int i11 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.mVerticalRun;
        int i12 = verticalWidgetRun.start.value;
        int i13 = horizontalWidgetRun.end.value;
        int i14 = verticalWidgetRun.end.value;
        int i15 = i14 - i12;
        if (i13 - i11 < 0 || i15 < 0 || i11 == Integer.MIN_VALUE || i11 == Integer.MAX_VALUE || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE) {
            i13 = 0;
            i11 = 0;
            i14 = 0;
            i12 = 0;
        }
        int i16 = i13 - i11;
        int i17 = i14 - i12;
        if (zIsResolved) {
            this.mX = i11;
        }
        if (zIsResolved2) {
            this.mY = i12;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (zIsResolved) {
            if (this.mListDimensionBehaviors[0] == ConstraintWidget$DimensionBehaviour.FIXED && i16 < (i10 = this.mWidth)) {
                i16 = i10;
            }
            this.mWidth = i16;
            int i18 = this.mMinWidth;
            if (i16 < i18) {
                this.mWidth = i18;
            }
        }
        if (zIsResolved2) {
            if (this.mListDimensionBehaviors[1] == ConstraintWidget$DimensionBehaviour.FIXED && i17 < (i9 = this.mHeight)) {
                i17 = i9;
            }
            this.mHeight = i17;
            int i19 = this.mMinHeight;
            if (i17 < i19) {
                this.mHeight = i19;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFromSolver(LinearSystem linearSystem, boolean z8) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z8 && (horizontalWidgetRun = this.mHorizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z8 && (verticalWidgetRun = this.mVerticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i9 = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i9 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    private void serializeAttribute(StringBuilder sb, String str, int i9, int i10) {
        if (i9 == i10) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i9);
        sb.append(",\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, float f8, float f9) {
        if (f8 == f9) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f8);
        sb.append(",\n");
    }

    public void setFrame(int i9, int i10, int i11) {
        if (i11 == 0) {
            setHorizontalDimension(i9, i10);
        } else if (i11 == 1) {
            setVerticalDimension(i9, i10);
        }
    }

    public void setDimensionRatio(float f8, int i9) {
        this.mDimensionRatio = f8;
        this.mDimensionRatioSide = i9;
    }

    private void getSceneString(StringBuilder sb, String str, int i9, int i10, int i11, int i12, int i13, int i14, float f8, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, float f9) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "      behavior", constraintWidget$DimensionBehaviour.toString(), ConstraintWidget$DimensionBehaviour.FIXED.toString());
        serializeAttribute(sb, "      size", i9, 0);
        serializeAttribute(sb, "      min", i10, 0);
        serializeAttribute(sb, "      max", i11, Integer.MAX_VALUE);
        serializeAttribute(sb, "      matchMin", i13, 0);
        serializeAttribute(sb, "      matchDef", i14, 0);
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
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor$Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor$Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor$Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor$Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor$Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new ConstraintWidget$DimensionBehaviour[]{constraintWidget$DimensionBehaviour, constraintWidget$DimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
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

    public ConstraintWidget(int i9, int i10, int i11, int i12) {
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
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor$Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor$Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor$Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor$Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor$Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor$Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new ConstraintWidget$DimensionBehaviour[]{constraintWidget$DimensionBehaviour, constraintWidget$DimensionBehaviour};
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
        this.mX = i9;
        this.mY = i10;
        this.mWidth = i11;
        this.mHeight = i12;
        addAnchors();
    }

    public ConstraintWidget(String str, int i9, int i10, int i11, int i12) {
        this(i9, i10, i11, i12);
        setDebugName(str);
    }

    public ConstraintWidget(int i9, int i10) {
        this(0, 0, i9, i10);
    }

    public ConstraintWidget(String str, int i9, int i10) {
        this(i9, i10);
        setDebugName(str);
    }

    public void connect(ConstraintAnchor$Type constraintAnchor$Type, ConstraintWidget constraintWidget, ConstraintAnchor$Type constraintAnchor$Type2) {
        connect(constraintAnchor$Type, constraintWidget, constraintAnchor$Type2, 0);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i9) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i9);
        }
    }
}
