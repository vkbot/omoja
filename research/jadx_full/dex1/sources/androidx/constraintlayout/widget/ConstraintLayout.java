package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources$NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayout extends ViewGroup {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_DRAW_CONSTRAINTS = false;
    public static final int DESIGN_INFO_ID = 0;
    private static final boolean OPTIMIZE_HEIGHT_CHANGE = false;
    private static final String TAG = "ConstraintLayout";
    private static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-2.2.0-alpha04";
    private static SharedValues sSharedValues;
    SparseArray<View> mChildrenByIds;
    private ArrayList<ConstraintHelper> mConstraintHelpers;
    protected ConstraintLayoutStates mConstraintLayoutSpec;
    private ConstraintSet mConstraintSet;
    private int mConstraintSetId;
    private HashMap<String, Integer> mDesignIds;
    protected boolean mDirtyHierarchy;
    private int mLastMeasureHeight;
    int mLastMeasureHeightMode;
    int mLastMeasureHeightSize;
    private int mLastMeasureWidth;
    int mLastMeasureWidthMode;
    int mLastMeasureWidthSize;
    protected ConstraintWidgetContainer mLayoutWidget;
    private int mMaxHeight;
    private int mMaxWidth;
    ConstraintLayout$Measurer mMeasurer;
    private Metrics mMetrics;
    private int mMinHeight;
    private int mMinWidth;
    private ArrayList<ConstraintLayout$ValueModifier> mModifiers;
    private int mOnMeasureHeightMeasureSpec;
    private int mOnMeasureWidthMeasureSpec;
    private int mOptimizationLevel;
    private SparseArray<ConstraintWidget> mTempMapIdToWidget;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayout(@NonNull Context context) {
        super(context);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new ConstraintLayout$Measurer(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(null, 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Metrics access$000(ConstraintLayout constraintLayout) {
        return constraintLayout.mMetrics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(ConstraintLayout constraintLayout) {
        return constraintLayout.mOptimizationLevel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ArrayList access$200(ConstraintLayout constraintLayout) {
        return constraintLayout.mConstraintHelpers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SharedValues getSharedValues() {
        if (sSharedValues == null) {
            sSharedValues = new SharedValues();
        }
        return sSharedValues;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintWidget getTargetWidget(int i9) {
        if (i9 == 0) {
            return this.mLayoutWidget;
        }
        View viewFindViewById = this.mChildrenByIds.get(i9);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i9)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.mLayoutWidget;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((ConstraintLayout$LayoutParams) viewFindViewById.getLayoutParams()).mWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void init(AttributeSet attributeSet, int i9, int i10) {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mLayoutWidget.setMeasurer(this.mMeasurer);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout, i9, i10);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = typedArrayObtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == R$styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            parseLayoutDescription(resourceId);
                        } catch (Resources$NotFoundException unused) {
                            this.mConstraintLayoutSpec = null;
                        }
                    }
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.mConstraintSet = constraintSet;
                        constraintSet.load(getContext(), resourceId2);
                    } catch (Resources$NotFoundException unused2) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void markHierarchyDirty() {
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setChildrenConstraints() {
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            ConstraintWidget viewWidget = getViewWidget(getChildAt(i9));
            if (viewWidget != null) {
                viewWidget.reset();
            }
        }
        if (zIsInEditMode) {
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    getTargetWidget(childAt.getId()).setDebugName(resourceName);
                } catch (Resources$NotFoundException unused) {
                }
            }
        }
        if (this.mConstraintSetId != -1) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt2 = getChildAt(i11);
                if (childAt2.getId() == this.mConstraintSetId && (childAt2 instanceof Constraints)) {
                    this.mConstraintSet = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        ConstraintSet constraintSet = this.mConstraintSet;
        if (constraintSet != null) {
            constraintSet.applyToInternal(this, true);
        }
        this.mLayoutWidget.removeAllChildren();
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i12 = 0; i12 < size; i12++) {
                this.mConstraintHelpers.get(i12).updatePreLayout(this);
            }
        }
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt3 = getChildAt(i13);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).updatePreLayout(this);
            }
        }
        this.mTempMapIdToWidget.clear();
        this.mTempMapIdToWidget.put(0, this.mLayoutWidget);
        this.mTempMapIdToWidget.put(getId(), this.mLayoutWidget);
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt4 = getChildAt(i14);
            this.mTempMapIdToWidget.put(childAt4.getId(), getViewWidget(childAt4));
        }
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt5 = getChildAt(i15);
            ConstraintWidget viewWidget2 = getViewWidget(childAt5);
            if (viewWidget2 != null) {
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) childAt5.getLayoutParams();
                this.mLayoutWidget.add(viewWidget2);
                applyConstraintsFromLayoutParams(zIsInEditMode, childAt5, viewWidget2, constraintLayout$LayoutParams, this.mTempMapIdToWidget);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setWidgetBaseline(ConstraintWidget constraintWidget, ConstraintLayout$LayoutParams constraintLayout$LayoutParams, SparseArray<ConstraintWidget> sparseArray, int i9, ConstraintAnchor$Type constraintAnchor$Type) {
        View view = this.mChildrenByIds.get(i9);
        ConstraintWidget constraintWidget2 = sparseArray.get(i9);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof ConstraintLayout$LayoutParams)) {
            return;
        }
        constraintLayout$LayoutParams.mNeedsBaseline = true;
        ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.BASELINE;
        if (constraintAnchor$Type == constraintAnchor$Type2) {
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = (ConstraintLayout$LayoutParams) view.getLayoutParams();
            constraintLayout$LayoutParams2.mNeedsBaseline = true;
            constraintLayout$LayoutParams2.mWidget.setHasBaseline(true);
        }
        constraintWidget.getAnchor(constraintAnchor$Type2).connect(constraintWidget2.getAnchor(constraintAnchor$Type), constraintLayout$LayoutParams.baselineMargin, constraintLayout$LayoutParams.goneBaselineMargin, true);
        constraintWidget.setHasBaseline(true);
        constraintWidget.getAnchor(ConstraintAnchor$Type.TOP).reset();
        constraintWidget.getAnchor(ConstraintAnchor$Type.BOTTOM).reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean updateHierarchy() {
        int childCount = getChildCount();
        boolean z8 = false;
        for (int i9 = 0; i9 < childCount; i9++) {
            if (getChildAt(i9).isLayoutRequested()) {
                z8 = true;
                break;
            }
        }
        if (z8) {
            setChildrenConstraints();
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addValueModifier(ConstraintLayout$ValueModifier constraintLayout$ValueModifier) {
        if (this.mModifiers == null) {
            this.mModifiers = new ArrayList<>();
        }
        this.mModifiers.add(constraintLayout$ValueModifier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:75:0x0174  */
    /* JADX WARN: Code duplicated, block: B:78:0x017d  */
    public void applyConstraintsFromLayoutParams(boolean z8, View view, ConstraintWidget constraintWidget, ConstraintLayout$LayoutParams constraintLayout$LayoutParams, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        ConstraintLayout$LayoutParams constraintLayout$LayoutParams2;
        ConstraintWidget constraintWidget6;
        float f8;
        int i9;
        constraintLayout$LayoutParams.validate();
        constraintLayout$LayoutParams.helped = false;
        constraintWidget.setVisibility(view.getVisibility());
        if (constraintLayout$LayoutParams.mIsInPlaceholder) {
            constraintWidget.setInPlaceholder(true);
            constraintWidget.setVisibility(8);
        }
        constraintWidget.setCompanionWidget(view);
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).resolveRtl(constraintWidget, this.mLayoutWidget.isRtl());
        }
        if (constraintLayout$LayoutParams.mIsGuideline) {
            androidx.constraintlayout.core.widgets.Guideline guideline = (androidx.constraintlayout.core.widgets.Guideline) constraintWidget;
            int i10 = constraintLayout$LayoutParams.mResolvedGuideBegin;
            int i11 = constraintLayout$LayoutParams.mResolvedGuideEnd;
            float f9 = constraintLayout$LayoutParams.mResolvedGuidePercent;
            if (f9 != -1.0f) {
                guideline.setGuidePercent(f9);
                return;
            } else if (i10 != -1) {
                guideline.setGuideBegin(i10);
                return;
            } else {
                if (i11 != -1) {
                    guideline.setGuideEnd(i11);
                    return;
                }
                return;
            }
        }
        int i12 = constraintLayout$LayoutParams.mResolvedLeftToLeft;
        int i13 = constraintLayout$LayoutParams.mResolvedLeftToRight;
        int i14 = constraintLayout$LayoutParams.mResolvedRightToLeft;
        int i15 = constraintLayout$LayoutParams.mResolvedRightToRight;
        int i16 = constraintLayout$LayoutParams.mResolveGoneLeftMargin;
        int i17 = constraintLayout$LayoutParams.mResolveGoneRightMargin;
        float f10 = constraintLayout$LayoutParams.mResolvedHorizontalBias;
        int i18 = constraintLayout$LayoutParams.circleConstraint;
        if (i18 != -1) {
            ConstraintWidget constraintWidget7 = sparseArray.get(i18);
            if (constraintWidget7 != null) {
                constraintWidget.connectCircularConstraint(constraintWidget7, constraintLayout$LayoutParams.circleAngle, constraintLayout$LayoutParams.circleRadius);
            }
            constraintWidget6 = constraintWidget;
            constraintLayout$LayoutParams2 = constraintLayout$LayoutParams;
        } else {
            if (i12 != -1) {
                ConstraintWidget constraintWidget8 = sparseArray.get(i12);
                if (constraintWidget8 != null) {
                    ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.LEFT;
                    constraintWidget.immediateConnect(constraintAnchor$Type, constraintWidget8, constraintAnchor$Type, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).leftMargin, i16);
                }
            } else if (i13 != -1 && (constraintWidget2 = sparseArray.get(i13)) != null) {
                constraintWidget.immediateConnect(ConstraintAnchor$Type.LEFT, constraintWidget2, ConstraintAnchor$Type.RIGHT, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).leftMargin, i16);
            }
            if (i14 != -1) {
                ConstraintWidget constraintWidget9 = sparseArray.get(i14);
                if (constraintWidget9 != null) {
                    constraintWidget.immediateConnect(ConstraintAnchor$Type.RIGHT, constraintWidget9, ConstraintAnchor$Type.LEFT, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).rightMargin, i17);
                }
            } else if (i15 != -1 && (constraintWidget3 = sparseArray.get(i15)) != null) {
                ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.RIGHT;
                constraintWidget.immediateConnect(constraintAnchor$Type2, constraintWidget3, constraintAnchor$Type2, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).rightMargin, i17);
            }
            int i19 = constraintLayout$LayoutParams.topToTop;
            if (i19 != -1) {
                ConstraintWidget constraintWidget10 = sparseArray.get(i19);
                if (constraintWidget10 != null) {
                    ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.TOP;
                    constraintWidget.immediateConnect(constraintAnchor$Type3, constraintWidget10, constraintAnchor$Type3, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).topMargin, constraintLayout$LayoutParams.goneTopMargin);
                }
            } else {
                int i20 = constraintLayout$LayoutParams.topToBottom;
                if (i20 != -1 && (constraintWidget4 = sparseArray.get(i20)) != null) {
                    constraintWidget.immediateConnect(ConstraintAnchor$Type.TOP, constraintWidget4, ConstraintAnchor$Type.BOTTOM, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).topMargin, constraintLayout$LayoutParams.goneTopMargin);
                }
            }
            int i21 = constraintLayout$LayoutParams.bottomToTop;
            if (i21 != -1) {
                ConstraintWidget constraintWidget11 = sparseArray.get(i21);
                if (constraintWidget11 != null) {
                    constraintWidget.immediateConnect(ConstraintAnchor$Type.BOTTOM, constraintWidget11, ConstraintAnchor$Type.TOP, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).bottomMargin, constraintLayout$LayoutParams.goneBottomMargin);
                }
            } else {
                int i22 = constraintLayout$LayoutParams.bottomToBottom;
                if (i22 != -1 && (constraintWidget5 = sparseArray.get(i22)) != null) {
                    ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.BOTTOM;
                    constraintWidget.immediateConnect(constraintAnchor$Type4, constraintWidget5, constraintAnchor$Type4, ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).bottomMargin, constraintLayout$LayoutParams.goneBottomMargin);
                }
            }
            int i23 = constraintLayout$LayoutParams.baselineToBaseline;
            if (i23 != -1) {
                constraintLayout$LayoutParams2 = constraintLayout$LayoutParams;
                setWidgetBaseline(constraintWidget, constraintLayout$LayoutParams2, sparseArray, i23, ConstraintAnchor$Type.BASELINE);
            } else {
                constraintLayout$LayoutParams2 = constraintLayout$LayoutParams;
                int i24 = constraintLayout$LayoutParams2.baselineToTop;
                if (i24 != -1) {
                    setWidgetBaseline(constraintWidget, constraintLayout$LayoutParams2, sparseArray, i24, ConstraintAnchor$Type.TOP);
                } else {
                    int i25 = constraintLayout$LayoutParams2.baselineToBottom;
                    if (i25 != -1) {
                        setWidgetBaseline(constraintWidget, constraintLayout$LayoutParams2, sparseArray, i25, ConstraintAnchor$Type.BOTTOM);
                        constraintWidget6 = constraintWidget;
                    }
                    if (f10 >= 0.0f) {
                        constraintWidget6.setHorizontalBiasPercent(f10);
                    }
                    f8 = constraintLayout$LayoutParams2.verticalBias;
                    if (f8 >= 0.0f) {
                        constraintWidget6.setVerticalBiasPercent(f8);
                    }
                }
            }
            constraintWidget6 = constraintWidget;
            if (f10 >= 0.0f) {
                constraintWidget6.setHorizontalBiasPercent(f10);
            }
            f8 = constraintLayout$LayoutParams2.verticalBias;
            if (f8 >= 0.0f) {
                constraintWidget6.setVerticalBiasPercent(f8);
            }
        }
        if (z8 && ((i9 = constraintLayout$LayoutParams2.editorAbsoluteX) != -1 || constraintLayout$LayoutParams2.editorAbsoluteY != -1)) {
            constraintWidget6.setOrigin(i9, constraintLayout$LayoutParams2.editorAbsoluteY);
        }
        if (constraintLayout$LayoutParams2.mHorizontalDimensionFixed) {
            constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
            constraintWidget6.setWidth(((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).width);
            if (((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).width == -2) {
                constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).width == -1) {
            if (constraintLayout$LayoutParams2.constrainedWidth) {
                constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget6.getAnchor(ConstraintAnchor$Type.LEFT).mMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).leftMargin;
            constraintWidget6.getAnchor(ConstraintAnchor$Type.RIGHT).mMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).rightMargin;
        } else {
            constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget6.setWidth(0);
        }
        if (constraintLayout$LayoutParams2.mVerticalDimensionFixed) {
            constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
            constraintWidget6.setHeight(((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).height);
            if (((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).height == -2) {
                constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).height == -1) {
            if (constraintLayout$LayoutParams2.constrainedHeight) {
                constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget6.getAnchor(ConstraintAnchor$Type.TOP).mMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).topMargin;
            constraintWidget6.getAnchor(ConstraintAnchor$Type.BOTTOM).mMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).bottomMargin;
        } else {
            constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget6.setHeight(0);
        }
        constraintWidget6.setDimensionRatio(constraintLayout$LayoutParams2.dimensionRatio);
        constraintWidget6.setHorizontalWeight(constraintLayout$LayoutParams2.horizontalWeight);
        constraintWidget6.setVerticalWeight(constraintLayout$LayoutParams2.verticalWeight);
        constraintWidget6.setHorizontalChainStyle(constraintLayout$LayoutParams2.horizontalChainStyle);
        constraintWidget6.setVerticalChainStyle(constraintLayout$LayoutParams2.verticalChainStyle);
        constraintWidget6.setWrapBehaviorInParent(constraintLayout$LayoutParams2.wrapBehaviorInParent);
        constraintWidget6.setHorizontalMatchStyle(constraintLayout$LayoutParams2.matchConstraintDefaultWidth, constraintLayout$LayoutParams2.matchConstraintMinWidth, constraintLayout$LayoutParams2.matchConstraintMaxWidth, constraintLayout$LayoutParams2.matchConstraintPercentWidth);
        constraintWidget6.setVerticalMatchStyle(constraintLayout$LayoutParams2.matchConstraintDefaultHeight, constraintLayout$LayoutParams2.matchConstraintMinHeight, constraintLayout$LayoutParams2.matchConstraintMaxHeight, constraintLayout$LayoutParams2.matchConstraintPercentHeight);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ConstraintLayout$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<ConstraintHelper> arrayList = this.mConstraintHelpers;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i9 = 0; i9 < size; i9++) {
                this.mConstraintHelpers.get(i9).updatePreDraw(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i11 = Integer.parseInt(strArrSplit[0]);
                        int i12 = Integer.parseInt(strArrSplit[1]);
                        int i13 = Integer.parseInt(strArrSplit[2]);
                        int i14 = (int) ((i11 / 1080.0f) * width);
                        int i15 = (int) ((i12 / 1920.0f) * height);
                        int i16 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(SupportMenu.CATEGORY_MASK);
                        float f8 = i14;
                        float f9 = i15;
                        float f10 = i14 + ((int) ((i13 / 1080.0f) * width));
                        canvas.drawLine(f8, f9, f10, f9, paint);
                        float f11 = i15 + i16;
                        canvas.drawLine(f10, f9, f10, f11, paint);
                        canvas.drawLine(f10, f11, f8, f11, paint);
                        canvas.drawLine(f8, f11, f8, f9, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f8, f9, f10, f11, paint);
                        canvas.drawLine(f8, f11, f10, f9, paint);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dynamicUpdateConstraints(int i9, int i10) {
        if (this.mModifiers == null) {
            return false;
        }
        int size = View$MeasureSpec.getSize(i9);
        int size2 = View$MeasureSpec.getSize(i10);
        ArrayList<ConstraintLayout$ValueModifier> arrayList = this.mModifiers;
        int size3 = arrayList.size();
        boolean zUpdate = false;
        int i11 = 0;
        while (i11 < size3) {
            int i12 = i11 + 1;
            ConstraintLayout$ValueModifier constraintLayout$ValueModifier = arrayList.get(i11);
            ArrayList<ConstraintWidget> children = this.mLayoutWidget.getChildren();
            int size4 = children.size();
            for (int i13 = 0; i13 < size4; i13++) {
                View view = (View) children.get(i13).getCompanionWidget();
                zUpdate |= constraintLayout$ValueModifier.update(size, size2, view.getId(), view, (ConstraintLayout$LayoutParams) view.getLayoutParams());
            }
            i11 = i12;
        }
        return zUpdate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillMetrics(Metrics metrics) {
        this.mMetrics = metrics;
        this.mLayoutWidget.fillMetrics(metrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void forceLayout() {
        markHierarchyDirty();
        super.forceLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ConstraintLayout$LayoutParams generateDefaultLayoutParams() {
        return new ConstraintLayout$LayoutParams(-2, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ConstraintLayout$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ConstraintLayout$LayoutParams(getContext(), attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getDesignInformation(int i9, Object obj) {
        if (i9 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.mDesignIds;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxWidth() {
        return this.mMaxWidth;
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
    public int getOptimizationLevel() {
        return this.mLayoutWidget.getOptimizationLevel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.mLayoutWidget.stringId == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.mLayoutWidget.stringId = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.mLayoutWidget.stringId = "parent";
            }
        }
        if (this.mLayoutWidget.getDebugName() == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
            constraintWidgetContainer.setDebugName(constraintWidgetContainer.stringId);
            Log.v(TAG, " setDebugName " + this.mLayoutWidget.getDebugName());
        }
        ArrayList<ConstraintWidget> children = this.mLayoutWidget.getChildren();
        int size = children.size();
        int i9 = 0;
        while (i9 < size) {
            ConstraintWidget constraintWidget = children.get(i9);
            i9++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            View view = (View) constraintWidget2.getCompanionWidget();
            if (view != null) {
                if (constraintWidget2.stringId == null && (id = view.getId()) != -1) {
                    constraintWidget2.stringId = getContext().getResources().getResourceEntryName(id);
                }
                if (constraintWidget2.getDebugName() == null) {
                    constraintWidget2.setDebugName(constraintWidget2.stringId);
                    Log.v(TAG, " setDebugName " + constraintWidget2.getDebugName());
                }
            }
        }
        this.mLayoutWidget.getSceneString(sb);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getViewById(int i9) {
        return this.mChildrenByIds.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof ConstraintLayout$LayoutParams) {
            return ((ConstraintLayout$LayoutParams) view.getLayoutParams()).mWidget;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof ConstraintLayout$LayoutParams) {
            return ((ConstraintLayout$LayoutParams) view.getLayoutParams()).mWidget;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRtl() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void loadLayoutDescription(int i9) {
        if (i9 == 0) {
            this.mConstraintLayoutSpec = null;
            return;
        }
        try {
            this.mConstraintLayoutSpec = new ConstraintLayoutStates(getContext(), this, i9);
        } catch (Resources$NotFoundException unused) {
            this.mConstraintLayoutSpec = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        View content;
        Metrics metrics = this.mMetrics;
        if (metrics != null) {
            metrics.mNumberOfLayouts++;
        }
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = constraintLayout$LayoutParams.mWidget;
            if ((childAt.getVisibility() != 8 || constraintLayout$LayoutParams.mIsGuideline || constraintLayout$LayoutParams.mIsHelper || constraintLayout$LayoutParams.mIsVirtualGroup || zIsInEditMode) && !constraintLayout$LayoutParams.mIsInPlaceholder) {
                int x8 = constraintWidget.getX();
                int y8 = constraintWidget.getY();
                int width = constraintWidget.getWidth() + x8;
                int height = constraintWidget.getHeight() + y8;
                childAt.layout(x8, y8, width, height);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(x8, y8, width, height);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i14 = 0; i14 < size; i14++) {
                this.mConstraintHelpers.get(i14).updatePostLayout(this);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        long jNanoTime;
        if (this.mMetrics != null) {
            jNanoTime = System.nanoTime();
            this.mMetrics.mChildCount = getChildCount();
            this.mMetrics.mMeasureCalls++;
        } else {
            jNanoTime = 0;
        }
        boolean zDynamicUpdateConstraints = this.mDirtyHierarchy | dynamicUpdateConstraints(i9, i10);
        this.mDirtyHierarchy = zDynamicUpdateConstraints;
        if (!zDynamicUpdateConstraints) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                if (getChildAt(i11).isLayoutRequested()) {
                    this.mDirtyHierarchy = true;
                    break;
                }
            }
        }
        this.mOnMeasureWidthMeasureSpec = i9;
        this.mOnMeasureHeightMeasureSpec = i10;
        this.mLayoutWidget.setRtl(isRtl());
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            if (updateHierarchy()) {
                this.mLayoutWidget.updateHierarchy();
            }
        }
        this.mLayoutWidget.fillMetrics(this.mMetrics);
        resolveSystem(this.mLayoutWidget, this.mOptimizationLevel, i9, i10);
        resolveMeasuredDimension(i9, i10, this.mLayoutWidget.getWidth(), this.mLayoutWidget.getHeight(), this.mLayoutWidget.isWidthMeasuredTooSmall(), this.mLayoutWidget.isHeightMeasuredTooSmall());
        Metrics metrics = this.mMetrics;
        if (metrics != null) {
            metrics.mMeasureDuration = (System.nanoTime() - jNanoTime) + metrics.mMeasureDuration;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            constraintLayout$LayoutParams.mWidget = guideline;
            constraintLayout$LayoutParams.mIsGuideline = true;
            guideline.setOrientation(constraintLayout$LayoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((ConstraintLayout$LayoutParams) view.getLayoutParams()).mIsHelper = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.mChildrenByIds.remove(view.getId());
        this.mLayoutWidget.remove(getViewWidget(view));
        this.mConstraintHelpers.remove(view);
        this.mDirtyHierarchy = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void parseLayoutDescription(int i9) {
        this.mConstraintLayoutSpec = new ConstraintLayoutStates(getContext(), this, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeValueModifier(ConstraintLayout$ValueModifier constraintLayout$ValueModifier) {
        if (constraintLayout$ValueModifier == null) {
            return;
        }
        this.mModifiers.remove(constraintLayout$ValueModifier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        markHierarchyDirty();
        super.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resolveMeasuredDimension(int i9, int i10, int i11, int i12, boolean z8, boolean z9) {
        ConstraintLayout$Measurer constraintLayout$Measurer = this.mMeasurer;
        int i13 = constraintLayout$Measurer.mPaddingHeight;
        int iResolveSizeAndState = View.resolveSizeAndState(i11 + constraintLayout$Measurer.mPaddingWidth, i9, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i12 + i13, i10, 0);
        int i14 = iResolveSizeAndState & ViewCompat.MEASURED_SIZE_MASK;
        int i15 = iResolveSizeAndState2 & ViewCompat.MEASURED_SIZE_MASK;
        int iMin = Math.min(this.mMaxWidth, i14);
        int iMin2 = Math.min(this.mMaxHeight, i15);
        if (z8) {
            iMin |= 16777216;
        }
        if (z9) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
        this.mLastMeasureWidth = iMin;
        this.mLastMeasureHeight = iMin2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void resolveSystem(ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11) {
        int i12;
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        int mode2 = View$MeasureSpec.getMode(i11);
        int size2 = View$MeasureSpec.getSize(i11);
        int iMax = Math.max(0, getPaddingTop());
        int iMax2 = Math.max(0, getPaddingBottom());
        int i13 = iMax + iMax2;
        int paddingWidth = getPaddingWidth();
        this.mMeasurer.captureLayoutInfo(i10, i11, iMax, iMax2, paddingWidth, i13);
        int iMax3 = Math.max(0, getPaddingStart());
        int iMax4 = Math.max(0, getPaddingEnd());
        if (iMax3 > 0 || iMax4 > 0) {
            if (isRtl()) {
                i12 = iMax4;
            }
            int i14 = size - paddingWidth;
            int i15 = size2 - i13;
            setSelfDimensionBehaviour(constraintWidgetContainer, mode, i14, mode2, i15);
            constraintWidgetContainer.measure(i9, mode, i14, mode2, i15, this.mLastMeasureWidth, this.mLastMeasureHeight, i12, iMax);
        }
        iMax3 = Math.max(0, getPaddingLeft());
        i12 = iMax3;
        int i16 = size - paddingWidth;
        int i17 = size2 - i13;
        setSelfDimensionBehaviour(constraintWidgetContainer, mode, i16, mode2, i17);
        constraintWidgetContainer.measure(i9, mode, i16, mode2, i17, this.mLastMeasureWidth, this.mLastMeasureHeight, i12, iMax);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConstraintSet(ConstraintSet constraintSet) {
        this.mConstraintSet = constraintSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDesignInformation(int i9, Object obj, Object obj2) {
        if (i9 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.mDesignIds.put(strSubstring, (Integer) obj2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void setId(int i9) {
        this.mChildrenByIds.remove(getId());
        super.setId(i9);
        this.mChildrenByIds.put(getId(), this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxHeight(int i9) {
        if (i9 == this.mMaxHeight) {
            return;
        }
        this.mMaxHeight = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxWidth(int i9) {
        if (i9 == this.mMaxWidth) {
            return;
        }
        this.mMaxWidth = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinHeight(int i9) {
        if (i9 == this.mMinHeight) {
            return;
        }
        this.mMinHeight = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinWidth(int i9) {
        if (i9 == this.mMinWidth) {
            return;
        }
        this.mMinWidth = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.setOnConstraintsChanged(constraintsChangedListener);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOptimizationLevel(int i9) {
        this.mOptimizationLevel = i9;
        this.mLayoutWidget.setOptimizationLevel(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:18:0x003e A[PHI: r2
  0x003e: PHI (r2v4 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
  (r2v3 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
  (r2v0 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
 binds: [B:21:0x004a, B:17:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    public void setSelfDimensionBehaviour(ConstraintWidgetContainer constraintWidgetContainer, int i9, int i10, int i11, int i12) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        ConstraintLayout$Measurer constraintLayout$Measurer = this.mMeasurer;
        int i13 = constraintLayout$Measurer.mPaddingHeight;
        int i14 = constraintLayout$Measurer.mPaddingWidth;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (i9 == Integer.MIN_VALUE) {
            constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i10 = Math.max(0, this.mMinWidth);
            }
        } else if (i9 == 0) {
            constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            i10 = childCount == 0 ? Math.max(0, this.mMinWidth) : 0;
        } else if (i9 != 1073741824) {
            constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour2;
        } else {
            i10 = Math.min(this.mMaxWidth - i14, i10);
            constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour2;
        }
        if (i11 == Integer.MIN_VALUE) {
            constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i12 = Math.max(0, this.mMinHeight);
            }
        } else if (i11 == 0) {
            constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                i12 = Math.max(0, this.mMinHeight);
            } else {
                i12 = 0;
            }
        } else if (i11 != 1073741824) {
            i12 = 0;
        } else {
            i12 = Math.min(this.mMaxHeight - i13, i12);
        }
        if (i10 != constraintWidgetContainer.getWidth() || i12 != constraintWidgetContainer.getHeight()) {
            constraintWidgetContainer.invalidateMeasures();
        }
        constraintWidgetContainer.setX(0);
        constraintWidgetContainer.setY(0);
        constraintWidgetContainer.setMaxWidth(this.mMaxWidth - i14);
        constraintWidgetContainer.setMaxHeight(this.mMaxHeight - i13);
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour);
        constraintWidgetContainer.setWidth(i10);
        constraintWidgetContainer.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
        constraintWidgetContainer.setHeight(i12);
        constraintWidgetContainer.setMinWidth(this.mMinWidth - i14);
        constraintWidgetContainer.setMinHeight(this.mMinHeight - i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setState(int i9, int i10, int i11) {
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i9, i10, i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new ConstraintLayout$LayoutParams(viewGroup$LayoutParams);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new ConstraintLayout$Measurer(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, 0, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new ConstraintLayout$Measurer(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i9, 0);
    }

    public ConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.mChildrenByIds = new SparseArray<>();
        this.mConstraintHelpers = new ArrayList<>(4);
        this.mLayoutWidget = new ConstraintWidgetContainer();
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        this.mDirtyHierarchy = true;
        this.mOptimizationLevel = 257;
        this.mConstraintSet = null;
        this.mConstraintLayoutSpec = null;
        this.mConstraintSetId = -1;
        this.mDesignIds = new HashMap<>();
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
        this.mTempMapIdToWidget = new SparseArray<>();
        this.mMeasurer = new ConstraintLayout$Measurer(this, this);
        this.mOnMeasureWidthMeasureSpec = 0;
        this.mOnMeasureHeightMeasureSpec = 0;
        init(attributeSet, i9, i10);
    }
}
