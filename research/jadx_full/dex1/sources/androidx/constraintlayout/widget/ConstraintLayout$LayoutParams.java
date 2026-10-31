package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayout$LayoutParams extends ViewGroup$MarginLayoutParams {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int CIRCLE = 8;
    public static final int END = 7;
    public static final int GONE_UNSET = Integer.MIN_VALUE;
    public static final int HORIZONTAL = 0;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int VERTICAL = 1;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    public int baselineMargin;
    public int baselineToBaseline;
    public int baselineToBottom;
    public int baselineToTop;
    public int bottomToBottom;
    public int bottomToTop;
    public float circleAngle;
    public int circleConstraint;
    public int circleRadius;
    public boolean constrainedHeight;
    public boolean constrainedWidth;
    public String constraintTag;
    public String dimensionRatio;
    public int editorAbsoluteX;
    public int editorAbsoluteY;
    public int endToEnd;
    public int endToStart;
    public int goneBaselineMargin;
    public int goneBottomMargin;
    public int goneEndMargin;
    public int goneLeftMargin;
    public int goneRightMargin;
    public int goneStartMargin;
    public int goneTopMargin;
    public int guideBegin;
    public int guideEnd;
    public float guidePercent;
    public boolean guidelineUseRtl;
    public boolean helped;
    public float horizontalBias;
    public int horizontalChainStyle;
    public float horizontalWeight;
    public int leftToLeft;
    public int leftToRight;
    int mDimensionRatioSide;
    float mDimensionRatioValue;
    boolean mHeightSet;
    boolean mHorizontalDimensionFixed;
    boolean mIsGuideline;
    boolean mIsHelper;
    boolean mIsInPlaceholder;
    boolean mIsVirtualGroup;
    boolean mNeedsBaseline;
    int mResolveGoneLeftMargin;
    int mResolveGoneRightMargin;
    int mResolvedGuideBegin;
    int mResolvedGuideEnd;
    float mResolvedGuidePercent;
    float mResolvedHorizontalBias;
    int mResolvedLeftToLeft;
    int mResolvedLeftToRight;
    int mResolvedRightToLeft;
    int mResolvedRightToRight;
    boolean mVerticalDimensionFixed;
    ConstraintWidget mWidget;
    boolean mWidthSet;
    public int matchConstraintDefaultHeight;
    public int matchConstraintDefaultWidth;
    public int matchConstraintMaxHeight;
    public int matchConstraintMaxWidth;
    public int matchConstraintMinHeight;
    public int matchConstraintMinWidth;
    public float matchConstraintPercentHeight;
    public float matchConstraintPercentWidth;
    public int orientation;
    public int rightToLeft;
    public int rightToRight;
    public int startToEnd;
    public int startToStart;
    public int topToBottom;
    public int topToTop;
    public float verticalBias;
    public int verticalChainStyle;
    public float verticalWeight;
    public int wrapBehaviorInParent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayout$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.guideBegin = -1;
        this.guideEnd = -1;
        this.guidePercent = -1.0f;
        this.guidelineUseRtl = true;
        this.leftToLeft = -1;
        this.leftToRight = -1;
        this.rightToLeft = -1;
        this.rightToRight = -1;
        this.topToTop = -1;
        this.topToBottom = -1;
        this.bottomToTop = -1;
        this.bottomToBottom = -1;
        this.baselineToBaseline = -1;
        this.baselineToTop = -1;
        this.baselineToBottom = -1;
        this.circleConstraint = -1;
        this.circleRadius = 0;
        this.circleAngle = 0.0f;
        this.startToEnd = -1;
        this.startToStart = -1;
        this.endToStart = -1;
        this.endToEnd = -1;
        this.goneLeftMargin = Integer.MIN_VALUE;
        this.goneTopMargin = Integer.MIN_VALUE;
        this.goneRightMargin = Integer.MIN_VALUE;
        this.goneBottomMargin = Integer.MIN_VALUE;
        this.goneStartMargin = Integer.MIN_VALUE;
        this.goneEndMargin = Integer.MIN_VALUE;
        this.goneBaselineMargin = Integer.MIN_VALUE;
        this.baselineMargin = 0;
        this.mWidthSet = true;
        this.mHeightSet = true;
        this.horizontalBias = 0.5f;
        this.verticalBias = 0.5f;
        this.dimensionRatio = null;
        this.mDimensionRatioValue = 0.0f;
        this.mDimensionRatioSide = 1;
        this.horizontalWeight = -1.0f;
        this.verticalWeight = -1.0f;
        this.horizontalChainStyle = 0;
        this.verticalChainStyle = 0;
        this.matchConstraintDefaultWidth = 0;
        this.matchConstraintDefaultHeight = 0;
        this.matchConstraintMinWidth = 0;
        this.matchConstraintMinHeight = 0;
        this.matchConstraintMaxWidth = 0;
        this.matchConstraintMaxHeight = 0;
        this.matchConstraintPercentWidth = 1.0f;
        this.matchConstraintPercentHeight = 1.0f;
        this.editorAbsoluteX = -1;
        this.editorAbsoluteY = -1;
        this.orientation = -1;
        this.constrainedWidth = false;
        this.constrainedHeight = false;
        this.constraintTag = null;
        this.wrapBehaviorInParent = 0;
        this.mHorizontalDimensionFixed = true;
        this.mVerticalDimensionFixed = true;
        this.mNeedsBaseline = false;
        this.mIsGuideline = false;
        this.mIsHelper = false;
        this.mIsInPlaceholder = false;
        this.mIsVirtualGroup = false;
        this.mResolvedLeftToLeft = -1;
        this.mResolvedLeftToRight = -1;
        this.mResolvedRightToLeft = -1;
        this.mResolvedRightToRight = -1;
        this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        this.mResolveGoneRightMargin = Integer.MIN_VALUE;
        this.mResolvedHorizontalBias = 0.5f;
        this.mWidget = new ConstraintWidget();
        this.helped = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            int i10 = ConstraintLayout$LayoutParams$Table.sMap.get(index);
            switch (i10) {
                case 1:
                    this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.circleConstraint);
                    this.circleConstraint = resourceId;
                    if (resourceId == -1) {
                        this.circleConstraint = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 3:
                    this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                    break;
                case 4:
                    float f8 = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle) % 360.0f;
                    this.circleAngle = f8;
                    if (f8 < 0.0f) {
                        this.circleAngle = (360.0f - f8) % 360.0f;
                    }
                    break;
                case 5:
                    this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                    break;
                case 6:
                    this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                    break;
                case 7:
                    this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.leftToLeft);
                    this.leftToLeft = resourceId2;
                    if (resourceId2 == -1) {
                        this.leftToLeft = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.leftToRight);
                    this.leftToRight = resourceId3;
                    if (resourceId3 == -1) {
                        this.leftToRight = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.rightToLeft);
                    this.rightToLeft = resourceId4;
                    if (resourceId4 == -1) {
                        this.rightToLeft = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 11:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.rightToRight);
                    this.rightToRight = resourceId5;
                    if (resourceId5 == -1) {
                        this.rightToRight = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.topToTop);
                    this.topToTop = resourceId6;
                    if (resourceId6 == -1) {
                        this.topToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.topToBottom);
                    this.topToBottom = resourceId7;
                    if (resourceId7 == -1) {
                        this.topToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.bottomToTop);
                    this.bottomToTop = resourceId8;
                    if (resourceId8 == -1) {
                        this.bottomToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                    this.bottomToBottom = resourceId9;
                    if (resourceId9 == -1) {
                        this.bottomToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                    this.baselineToBaseline = resourceId10;
                    if (resourceId10 == -1) {
                        this.baselineToBaseline = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.startToEnd);
                    this.startToEnd = resourceId11;
                    if (resourceId11 == -1) {
                        this.startToEnd = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.startToStart);
                    this.startToStart = resourceId12;
                    if (resourceId12 == -1) {
                        this.startToStart = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.endToStart);
                    this.endToStart = resourceId13;
                    if (resourceId13 == -1) {
                        this.endToStart = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.endToEnd);
                    this.endToEnd = resourceId14;
                    if (resourceId14 == -1) {
                        this.endToEnd = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 21:
                    this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                    break;
                case 22:
                    this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                    break;
                case 23:
                    this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                    break;
                case 24:
                    this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                    break;
                case 25:
                    this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                    break;
                case 26:
                    this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                    break;
                case 27:
                    this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                    break;
                case 28:
                    this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS /* 29 */:
                    this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS /* 30 */:
                    this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                    break;
                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_WIDTH_DEFAULT /* 31 */:
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    this.matchConstraintDefaultWidth = i11;
                    if (i11 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    this.matchConstraintDefaultHeight = i12;
                    if (i12 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                    }
                    break;
                case 33:
                    try {
                        this.matchConstraintMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMinWidth) == -2) {
                            this.matchConstraintMinWidth = -2;
                        }
                    }
                    break;
                case 34:
                    try {
                        this.matchConstraintMaxWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMaxWidth) == -2) {
                            this.matchConstraintMaxWidth = -2;
                        }
                    }
                    break;
                case 35:
                    this.matchConstraintPercentWidth = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.matchConstraintPercentWidth));
                    this.matchConstraintDefaultWidth = 2;
                    break;
                case 36:
                    try {
                        this.matchConstraintMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMinHeight) == -2) {
                            this.matchConstraintMinHeight = -2;
                        }
                    }
                    break;
                case 37:
                    try {
                        this.matchConstraintMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, this.matchConstraintMaxHeight) == -2) {
                            this.matchConstraintMaxHeight = -2;
                        }
                    }
                    break;
                case 38:
                    this.matchConstraintPercentHeight = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.matchConstraintPercentHeight));
                    this.matchConstraintDefaultHeight = 2;
                    break;
                default:
                    switch (i10) {
                        case 44:
                            ConstraintSet.parseDimensionRatioString(this, typedArrayObtainStyledAttributes.getString(index));
                            break;
                        case 45:
                            this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                            break;
                        case 46:
                            this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                            break;
                        case 47:
                            this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                            this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                            this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                            break;
                        case 50:
                            this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                            this.constraintTag = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                            int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToTop);
                            this.baselineToTop = resourceId15;
                            if (resourceId15 == -1) {
                                this.baselineToTop = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                            int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.baselineToBottom);
                            this.baselineToBottom = resourceId16;
                            if (resourceId16 == -1) {
                                this.baselineToBottom = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                            this.baselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                            break;
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                            this.goneBaselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                            break;
                        default:
                            switch (i10) {
                                case 64:
                                    ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 0);
                                    this.mWidthSet = true;
                                    break;
                                case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                                    ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 1);
                                    this.mHeightSet = true;
                                    break;
                                case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                                    this.wrapBehaviorInParent = typedArrayObtainStyledAttributes.getInt(index, this.wrapBehaviorInParent);
                                    break;
                                case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                                    this.guidelineUseRtl = typedArrayObtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        validate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getConstraintTag() {
        return this.constraintTag;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidget getConstraintWidget() {
        return this.mWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        ConstraintWidget constraintWidget = this.mWidget;
        if (constraintWidget != null) {
            constraintWidget.reset();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x004a  */
    /* JADX WARN: Code duplicated, block: B:19:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Code duplicated, block: B:25:0x005e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:37:0x007a  */
    /* JADX WARN: Code duplicated, block: B:38:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0084  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x008d  */
    @Override // android.view.ViewGroup$MarginLayoutParams, android.view.ViewGroup$LayoutParams
    public void resolveLayoutDirection(int i9) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = ((ViewGroup$MarginLayoutParams) this).leftMargin;
        int i15 = ((ViewGroup$MarginLayoutParams) this).rightMargin;
        super.resolveLayoutDirection(i9);
        boolean z8 = false;
        boolean z9 = 1 == getLayoutDirection();
        this.mResolvedRightToLeft = -1;
        this.mResolvedRightToRight = -1;
        this.mResolvedLeftToLeft = -1;
        this.mResolvedLeftToRight = -1;
        this.mResolveGoneLeftMargin = this.goneLeftMargin;
        this.mResolveGoneRightMargin = this.goneRightMargin;
        float f8 = this.horizontalBias;
        this.mResolvedHorizontalBias = f8;
        int i16 = this.guideBegin;
        this.mResolvedGuideBegin = i16;
        int i17 = this.guideEnd;
        this.mResolvedGuideEnd = i17;
        float f9 = this.guidePercent;
        this.mResolvedGuidePercent = f9;
        int i18 = this.startToEnd;
        if (z9) {
            if (i18 != -1) {
                this.mResolvedRightToLeft = i18;
            } else {
                int i19 = this.startToStart;
                if (i19 != -1) {
                    this.mResolvedRightToRight = i19;
                } else {
                    i10 = this.endToStart;
                    if (i10 != -1) {
                        this.mResolvedLeftToRight = i10;
                        z8 = true;
                    }
                    i11 = this.endToEnd;
                    if (i11 != -1) {
                        this.mResolvedLeftToLeft = i11;
                        z8 = true;
                    }
                    i12 = this.goneStartMargin;
                    if (i12 != Integer.MIN_VALUE) {
                        this.mResolveGoneRightMargin = i12;
                    }
                    i13 = this.goneEndMargin;
                    if (i13 != Integer.MIN_VALUE) {
                        this.mResolveGoneLeftMargin = i13;
                    }
                    if (z8) {
                        this.mResolvedHorizontalBias = 1.0f - f8;
                    }
                    if (this.mIsGuideline && this.orientation == 1 && this.guidelineUseRtl) {
                        if (f9 != -1.0f) {
                            this.mResolvedGuidePercent = 1.0f - f9;
                            this.mResolvedGuideBegin = -1;
                            this.mResolvedGuideEnd = -1;
                        } else if (i16 != -1) {
                            this.mResolvedGuideEnd = i16;
                            this.mResolvedGuideBegin = -1;
                            this.mResolvedGuidePercent = -1.0f;
                        } else if (i17 != -1) {
                            this.mResolvedGuideBegin = i17;
                            this.mResolvedGuideEnd = -1;
                            this.mResolvedGuidePercent = -1.0f;
                        }
                    }
                }
            }
            z8 = true;
            i10 = this.endToStart;
            if (i10 != -1) {
                this.mResolvedLeftToRight = i10;
                z8 = true;
            }
            i11 = this.endToEnd;
            if (i11 != -1) {
                this.mResolvedLeftToLeft = i11;
                z8 = true;
            }
            i12 = this.goneStartMargin;
            if (i12 != Integer.MIN_VALUE) {
                this.mResolveGoneRightMargin = i12;
            }
            i13 = this.goneEndMargin;
            if (i13 != Integer.MIN_VALUE) {
                this.mResolveGoneLeftMargin = i13;
            }
            if (z8) {
                this.mResolvedHorizontalBias = 1.0f - f8;
            }
            if (this.mIsGuideline) {
                if (f9 != -1.0f) {
                    this.mResolvedGuidePercent = 1.0f - f9;
                    this.mResolvedGuideBegin = -1;
                    this.mResolvedGuideEnd = -1;
                } else if (i16 != -1) {
                    this.mResolvedGuideEnd = i16;
                    this.mResolvedGuideBegin = -1;
                    this.mResolvedGuidePercent = -1.0f;
                } else if (i17 != -1) {
                    this.mResolvedGuideBegin = i17;
                    this.mResolvedGuideEnd = -1;
                    this.mResolvedGuidePercent = -1.0f;
                }
            }
        } else {
            if (i18 != -1) {
                this.mResolvedLeftToRight = i18;
            }
            int i20 = this.startToStart;
            if (i20 != -1) {
                this.mResolvedLeftToLeft = i20;
            }
            int i21 = this.endToStart;
            if (i21 != -1) {
                this.mResolvedRightToLeft = i21;
            }
            int i22 = this.endToEnd;
            if (i22 != -1) {
                this.mResolvedRightToRight = i22;
            }
            int i23 = this.goneStartMargin;
            if (i23 != Integer.MIN_VALUE) {
                this.mResolveGoneLeftMargin = i23;
            }
            int i24 = this.goneEndMargin;
            if (i24 != Integer.MIN_VALUE) {
                this.mResolveGoneRightMargin = i24;
            }
        }
        if (this.endToStart == -1 && this.endToEnd == -1 && this.startToStart == -1 && this.startToEnd == -1) {
            int i25 = this.rightToLeft;
            if (i25 != -1) {
                this.mResolvedRightToLeft = i25;
                if (((ViewGroup$MarginLayoutParams) this).rightMargin <= 0 && i15 > 0) {
                    ((ViewGroup$MarginLayoutParams) this).rightMargin = i15;
                }
            } else {
                int i26 = this.rightToRight;
                if (i26 != -1) {
                    this.mResolvedRightToRight = i26;
                    if (((ViewGroup$MarginLayoutParams) this).rightMargin <= 0 && i15 > 0) {
                        ((ViewGroup$MarginLayoutParams) this).rightMargin = i15;
                    }
                }
            }
            int i27 = this.leftToLeft;
            if (i27 != -1) {
                this.mResolvedLeftToLeft = i27;
                if (((ViewGroup$MarginLayoutParams) this).leftMargin > 0 || i14 <= 0) {
                    return;
                }
                ((ViewGroup$MarginLayoutParams) this).leftMargin = i14;
                return;
            }
            int i28 = this.leftToRight;
            if (i28 != -1) {
                this.mResolvedLeftToRight = i28;
                if (((ViewGroup$MarginLayoutParams) this).leftMargin > 0 || i14 <= 0) {
                    return;
                }
                ((ViewGroup$MarginLayoutParams) this).leftMargin = i14;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidgetDebugName(String str) {
        this.mWidget.setDebugName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void validate() {
        this.mIsGuideline = false;
        this.mHorizontalDimensionFixed = true;
        this.mVerticalDimensionFixed = true;
        int i9 = ((ViewGroup$MarginLayoutParams) this).width;
        if (i9 == -2 && this.constrainedWidth) {
            this.mHorizontalDimensionFixed = false;
            if (this.matchConstraintDefaultWidth == 0) {
                this.matchConstraintDefaultWidth = 1;
            }
        }
        int i10 = ((ViewGroup$MarginLayoutParams) this).height;
        if (i10 == -2 && this.constrainedHeight) {
            this.mVerticalDimensionFixed = false;
            if (this.matchConstraintDefaultHeight == 0) {
                this.matchConstraintDefaultHeight = 1;
            }
        }
        if (i9 == 0 || i9 == -1) {
            this.mHorizontalDimensionFixed = false;
            if (i9 == 0 && this.matchConstraintDefaultWidth == 1) {
                ((ViewGroup$MarginLayoutParams) this).width = -2;
                this.constrainedWidth = true;
            }
        }
        if (i10 == 0 || i10 == -1) {
            this.mVerticalDimensionFixed = false;
            if (i10 == 0 && this.matchConstraintDefaultHeight == 1) {
                ((ViewGroup$MarginLayoutParams) this).height = -2;
                this.constrainedHeight = true;
            }
        }
        if (this.guidePercent == -1.0f && this.guideBegin == -1 && this.guideEnd == -1) {
            return;
        }
        this.mIsGuideline = true;
        this.mHorizontalDimensionFixed = true;
        this.mVerticalDimensionFixed = true;
        if (!(this.mWidget instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            this.mWidget = new androidx.constraintlayout.core.widgets.Guideline();
        }
        ((androidx.constraintlayout.core.widgets.Guideline) this.mWidget).setOrientation(this.orientation);
    }

    public ConstraintLayout$LayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.guideBegin = -1;
        this.guideEnd = -1;
        this.guidePercent = -1.0f;
        this.guidelineUseRtl = true;
        this.leftToLeft = -1;
        this.leftToRight = -1;
        this.rightToLeft = -1;
        this.rightToRight = -1;
        this.topToTop = -1;
        this.topToBottom = -1;
        this.bottomToTop = -1;
        this.bottomToBottom = -1;
        this.baselineToBaseline = -1;
        this.baselineToTop = -1;
        this.baselineToBottom = -1;
        this.circleConstraint = -1;
        this.circleRadius = 0;
        this.circleAngle = 0.0f;
        this.startToEnd = -1;
        this.startToStart = -1;
        this.endToStart = -1;
        this.endToEnd = -1;
        this.goneLeftMargin = Integer.MIN_VALUE;
        this.goneTopMargin = Integer.MIN_VALUE;
        this.goneRightMargin = Integer.MIN_VALUE;
        this.goneBottomMargin = Integer.MIN_VALUE;
        this.goneStartMargin = Integer.MIN_VALUE;
        this.goneEndMargin = Integer.MIN_VALUE;
        this.goneBaselineMargin = Integer.MIN_VALUE;
        this.baselineMargin = 0;
        this.mWidthSet = true;
        this.mHeightSet = true;
        this.horizontalBias = 0.5f;
        this.verticalBias = 0.5f;
        this.dimensionRatio = null;
        this.mDimensionRatioValue = 0.0f;
        this.mDimensionRatioSide = 1;
        this.horizontalWeight = -1.0f;
        this.verticalWeight = -1.0f;
        this.horizontalChainStyle = 0;
        this.verticalChainStyle = 0;
        this.matchConstraintDefaultWidth = 0;
        this.matchConstraintDefaultHeight = 0;
        this.matchConstraintMinWidth = 0;
        this.matchConstraintMinHeight = 0;
        this.matchConstraintMaxWidth = 0;
        this.matchConstraintMaxHeight = 0;
        this.matchConstraintPercentWidth = 1.0f;
        this.matchConstraintPercentHeight = 1.0f;
        this.editorAbsoluteX = -1;
        this.editorAbsoluteY = -1;
        this.orientation = -1;
        this.constrainedWidth = false;
        this.constrainedHeight = false;
        this.constraintTag = null;
        this.wrapBehaviorInParent = 0;
        this.mHorizontalDimensionFixed = true;
        this.mVerticalDimensionFixed = true;
        this.mNeedsBaseline = false;
        this.mIsGuideline = false;
        this.mIsHelper = false;
        this.mIsInPlaceholder = false;
        this.mIsVirtualGroup = false;
        this.mResolvedLeftToLeft = -1;
        this.mResolvedLeftToRight = -1;
        this.mResolvedRightToLeft = -1;
        this.mResolvedRightToRight = -1;
        this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        this.mResolveGoneRightMargin = Integer.MIN_VALUE;
        this.mResolvedHorizontalBias = 0.5f;
        this.mWidget = new ConstraintWidget();
        this.helped = false;
        if (viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams) {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) viewGroup$LayoutParams;
            ((ViewGroup$MarginLayoutParams) this).leftMargin = viewGroup$MarginLayoutParams.leftMargin;
            ((ViewGroup$MarginLayoutParams) this).rightMargin = viewGroup$MarginLayoutParams.rightMargin;
            ((ViewGroup$MarginLayoutParams) this).topMargin = viewGroup$MarginLayoutParams.topMargin;
            ((ViewGroup$MarginLayoutParams) this).bottomMargin = viewGroup$MarginLayoutParams.bottomMargin;
            setMarginStart(viewGroup$MarginLayoutParams.getMarginStart());
            setMarginEnd(viewGroup$MarginLayoutParams.getMarginEnd());
        }
        if (viewGroup$LayoutParams instanceof ConstraintLayout$LayoutParams) {
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) viewGroup$LayoutParams;
            this.guideBegin = constraintLayout$LayoutParams.guideBegin;
            this.guideEnd = constraintLayout$LayoutParams.guideEnd;
            this.guidePercent = constraintLayout$LayoutParams.guidePercent;
            this.guidelineUseRtl = constraintLayout$LayoutParams.guidelineUseRtl;
            this.leftToLeft = constraintLayout$LayoutParams.leftToLeft;
            this.leftToRight = constraintLayout$LayoutParams.leftToRight;
            this.rightToLeft = constraintLayout$LayoutParams.rightToLeft;
            this.rightToRight = constraintLayout$LayoutParams.rightToRight;
            this.topToTop = constraintLayout$LayoutParams.topToTop;
            this.topToBottom = constraintLayout$LayoutParams.topToBottom;
            this.bottomToTop = constraintLayout$LayoutParams.bottomToTop;
            this.bottomToBottom = constraintLayout$LayoutParams.bottomToBottom;
            this.baselineToBaseline = constraintLayout$LayoutParams.baselineToBaseline;
            this.baselineToTop = constraintLayout$LayoutParams.baselineToTop;
            this.baselineToBottom = constraintLayout$LayoutParams.baselineToBottom;
            this.circleConstraint = constraintLayout$LayoutParams.circleConstraint;
            this.circleRadius = constraintLayout$LayoutParams.circleRadius;
            this.circleAngle = constraintLayout$LayoutParams.circleAngle;
            this.startToEnd = constraintLayout$LayoutParams.startToEnd;
            this.startToStart = constraintLayout$LayoutParams.startToStart;
            this.endToStart = constraintLayout$LayoutParams.endToStart;
            this.endToEnd = constraintLayout$LayoutParams.endToEnd;
            this.goneLeftMargin = constraintLayout$LayoutParams.goneLeftMargin;
            this.goneTopMargin = constraintLayout$LayoutParams.goneTopMargin;
            this.goneRightMargin = constraintLayout$LayoutParams.goneRightMargin;
            this.goneBottomMargin = constraintLayout$LayoutParams.goneBottomMargin;
            this.goneStartMargin = constraintLayout$LayoutParams.goneStartMargin;
            this.goneEndMargin = constraintLayout$LayoutParams.goneEndMargin;
            this.goneBaselineMargin = constraintLayout$LayoutParams.goneBaselineMargin;
            this.baselineMargin = constraintLayout$LayoutParams.baselineMargin;
            this.horizontalBias = constraintLayout$LayoutParams.horizontalBias;
            this.verticalBias = constraintLayout$LayoutParams.verticalBias;
            this.dimensionRatio = constraintLayout$LayoutParams.dimensionRatio;
            this.mDimensionRatioValue = constraintLayout$LayoutParams.mDimensionRatioValue;
            this.mDimensionRatioSide = constraintLayout$LayoutParams.mDimensionRatioSide;
            this.horizontalWeight = constraintLayout$LayoutParams.horizontalWeight;
            this.verticalWeight = constraintLayout$LayoutParams.verticalWeight;
            this.horizontalChainStyle = constraintLayout$LayoutParams.horizontalChainStyle;
            this.verticalChainStyle = constraintLayout$LayoutParams.verticalChainStyle;
            this.constrainedWidth = constraintLayout$LayoutParams.constrainedWidth;
            this.constrainedHeight = constraintLayout$LayoutParams.constrainedHeight;
            this.matchConstraintDefaultWidth = constraintLayout$LayoutParams.matchConstraintDefaultWidth;
            this.matchConstraintDefaultHeight = constraintLayout$LayoutParams.matchConstraintDefaultHeight;
            this.matchConstraintMinWidth = constraintLayout$LayoutParams.matchConstraintMinWidth;
            this.matchConstraintMaxWidth = constraintLayout$LayoutParams.matchConstraintMaxWidth;
            this.matchConstraintMinHeight = constraintLayout$LayoutParams.matchConstraintMinHeight;
            this.matchConstraintMaxHeight = constraintLayout$LayoutParams.matchConstraintMaxHeight;
            this.matchConstraintPercentWidth = constraintLayout$LayoutParams.matchConstraintPercentWidth;
            this.matchConstraintPercentHeight = constraintLayout$LayoutParams.matchConstraintPercentHeight;
            this.editorAbsoluteX = constraintLayout$LayoutParams.editorAbsoluteX;
            this.editorAbsoluteY = constraintLayout$LayoutParams.editorAbsoluteY;
            this.orientation = constraintLayout$LayoutParams.orientation;
            this.mHorizontalDimensionFixed = constraintLayout$LayoutParams.mHorizontalDimensionFixed;
            this.mVerticalDimensionFixed = constraintLayout$LayoutParams.mVerticalDimensionFixed;
            this.mNeedsBaseline = constraintLayout$LayoutParams.mNeedsBaseline;
            this.mIsGuideline = constraintLayout$LayoutParams.mIsGuideline;
            this.mResolvedLeftToLeft = constraintLayout$LayoutParams.mResolvedLeftToLeft;
            this.mResolvedLeftToRight = constraintLayout$LayoutParams.mResolvedLeftToRight;
            this.mResolvedRightToLeft = constraintLayout$LayoutParams.mResolvedRightToLeft;
            this.mResolvedRightToRight = constraintLayout$LayoutParams.mResolvedRightToRight;
            this.mResolveGoneLeftMargin = constraintLayout$LayoutParams.mResolveGoneLeftMargin;
            this.mResolveGoneRightMargin = constraintLayout$LayoutParams.mResolveGoneRightMargin;
            this.mResolvedHorizontalBias = constraintLayout$LayoutParams.mResolvedHorizontalBias;
            this.constraintTag = constraintLayout$LayoutParams.constraintTag;
            this.wrapBehaviorInParent = constraintLayout$LayoutParams.wrapBehaviorInParent;
            this.mWidget = constraintLayout$LayoutParams.mWidget;
            this.mWidthSet = constraintLayout$LayoutParams.mWidthSet;
            this.mHeightSet = constraintLayout$LayoutParams.mHeightSet;
        }
    }

    public ConstraintLayout$LayoutParams(int i9, int i10) {
        super(i9, i10);
        this.guideBegin = -1;
        this.guideEnd = -1;
        this.guidePercent = -1.0f;
        this.guidelineUseRtl = true;
        this.leftToLeft = -1;
        this.leftToRight = -1;
        this.rightToLeft = -1;
        this.rightToRight = -1;
        this.topToTop = -1;
        this.topToBottom = -1;
        this.bottomToTop = -1;
        this.bottomToBottom = -1;
        this.baselineToBaseline = -1;
        this.baselineToTop = -1;
        this.baselineToBottom = -1;
        this.circleConstraint = -1;
        this.circleRadius = 0;
        this.circleAngle = 0.0f;
        this.startToEnd = -1;
        this.startToStart = -1;
        this.endToStart = -1;
        this.endToEnd = -1;
        this.goneLeftMargin = Integer.MIN_VALUE;
        this.goneTopMargin = Integer.MIN_VALUE;
        this.goneRightMargin = Integer.MIN_VALUE;
        this.goneBottomMargin = Integer.MIN_VALUE;
        this.goneStartMargin = Integer.MIN_VALUE;
        this.goneEndMargin = Integer.MIN_VALUE;
        this.goneBaselineMargin = Integer.MIN_VALUE;
        this.baselineMargin = 0;
        this.mWidthSet = true;
        this.mHeightSet = true;
        this.horizontalBias = 0.5f;
        this.verticalBias = 0.5f;
        this.dimensionRatio = null;
        this.mDimensionRatioValue = 0.0f;
        this.mDimensionRatioSide = 1;
        this.horizontalWeight = -1.0f;
        this.verticalWeight = -1.0f;
        this.horizontalChainStyle = 0;
        this.verticalChainStyle = 0;
        this.matchConstraintDefaultWidth = 0;
        this.matchConstraintDefaultHeight = 0;
        this.matchConstraintMinWidth = 0;
        this.matchConstraintMinHeight = 0;
        this.matchConstraintMaxWidth = 0;
        this.matchConstraintMaxHeight = 0;
        this.matchConstraintPercentWidth = 1.0f;
        this.matchConstraintPercentHeight = 1.0f;
        this.editorAbsoluteX = -1;
        this.editorAbsoluteY = -1;
        this.orientation = -1;
        this.constrainedWidth = false;
        this.constrainedHeight = false;
        this.constraintTag = null;
        this.wrapBehaviorInParent = 0;
        this.mHorizontalDimensionFixed = true;
        this.mVerticalDimensionFixed = true;
        this.mNeedsBaseline = false;
        this.mIsGuideline = false;
        this.mIsHelper = false;
        this.mIsInPlaceholder = false;
        this.mIsVirtualGroup = false;
        this.mResolvedLeftToLeft = -1;
        this.mResolvedLeftToRight = -1;
        this.mResolvedRightToLeft = -1;
        this.mResolvedRightToRight = -1;
        this.mResolveGoneLeftMargin = Integer.MIN_VALUE;
        this.mResolveGoneRightMargin = Integer.MIN_VALUE;
        this.mResolvedHorizontalBias = 0.5f;
        this.mWidget = new ConstraintWidget();
        this.helped = false;
    }
}
