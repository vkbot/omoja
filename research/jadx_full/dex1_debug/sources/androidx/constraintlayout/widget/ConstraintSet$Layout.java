package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.MotionScene;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$Layout {
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_MARGIN = 73;
    private static final int BASELINE_MARGIN = 80;
    private static final int BASELINE_TO_BASELINE = 1;
    private static final int BASELINE_TO_BOTTOM = 78;
    private static final int BASELINE_TO_TOP = 77;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    private static final int CONSTRAINED_HEIGHT = 88;
    private static final int CONSTRAINED_WIDTH = 87;
    private static final int CONSTRAINT_REFERENCED_IDS = 74;
    private static final int CONSTRAINT_TAG = 89;
    private static final int DIMENSION_RATIO = 5;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    private static final int GONE_BASELINE_MARGIN = 79;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int GUIDE_USE_RTL = 90;
    private static final int HEIGHT_DEFAULT = 82;
    private static final int HEIGHT_MAX = 83;
    private static final int HEIGHT_MIN = 85;
    private static final int HEIGHT_PERCENT = 70;
    private static final int HORIZONTAL_BIAS = 20;
    private static final int HORIZONTAL_STYLE = 39;
    private static final int HORIZONTAL_WEIGHT = 37;
    private static final int LAYOUT_CONSTRAINT_HEIGHT = 42;
    private static final int LAYOUT_CONSTRAINT_WIDTH = 41;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_WIDTH = 22;
    private static final int LAYOUT_WRAP_BEHAVIOR = 76;
    private static final int LEFT_MARGIN = 23;
    private static final int LEFT_TO_LEFT = 24;
    private static final int LEFT_TO_RIGHT = 25;
    private static final int ORIENTATION = 26;
    private static final int RIGHT_MARGIN = 27;
    private static final int RIGHT_TO_LEFT = 28;
    private static final int RIGHT_TO_RIGHT = 29;
    private static final int START_MARGIN = 30;
    private static final int START_TO_END = 31;
    private static final int START_TO_START = 32;
    private static final int TOP_MARGIN = 33;
    private static final int TOP_TO_BOTTOM = 34;
    private static final int TOP_TO_TOP = 35;
    public static final int UNSET = -1;
    public static final int UNSET_GONE_MARGIN = Integer.MIN_VALUE;
    private static final int UNUSED = 91;
    private static final int VERTICAL_BIAS = 36;
    private static final int VERTICAL_STYLE = 40;
    private static final int VERTICAL_WEIGHT = 38;
    private static final int WIDTH_DEFAULT = 81;
    private static final int WIDTH_MAX = 84;
    private static final int WIDTH_MIN = 86;
    private static final int WIDTH_PERCENT = 69;
    private static SparseIntArray sMapToConstant;
    public String mConstraintTag;
    public int mHeight;
    public String mReferenceIdString;
    public int[] mReferenceIds;
    public int mWidth;
    public boolean mIsGuideline = false;
    public boolean mApply = false;
    public boolean mOverride = false;
    public int guideBegin = -1;
    public int guideEnd = -1;
    public float guidePercent = -1.0f;
    public boolean guidelineUseRtl = true;
    public int leftToLeft = -1;
    public int leftToRight = -1;
    public int rightToLeft = -1;
    public int rightToRight = -1;
    public int topToTop = -1;
    public int topToBottom = -1;
    public int bottomToTop = -1;
    public int bottomToBottom = -1;
    public int baselineToBaseline = -1;
    public int baselineToTop = -1;
    public int baselineToBottom = -1;
    public int startToEnd = -1;
    public int startToStart = -1;
    public int endToStart = -1;
    public int endToEnd = -1;
    public float horizontalBias = 0.5f;
    public float verticalBias = 0.5f;
    public String dimensionRatio = null;
    public int circleConstraint = -1;
    public int circleRadius = 0;
    public float circleAngle = 0.0f;
    public int editorAbsoluteX = -1;
    public int editorAbsoluteY = -1;
    public int orientation = -1;
    public int leftMargin = 0;
    public int rightMargin = 0;
    public int topMargin = 0;
    public int bottomMargin = 0;
    public int endMargin = 0;
    public int startMargin = 0;
    public int baselineMargin = 0;
    public int goneLeftMargin = Integer.MIN_VALUE;
    public int goneTopMargin = Integer.MIN_VALUE;
    public int goneRightMargin = Integer.MIN_VALUE;
    public int goneBottomMargin = Integer.MIN_VALUE;
    public int goneEndMargin = Integer.MIN_VALUE;
    public int goneStartMargin = Integer.MIN_VALUE;
    public int goneBaselineMargin = Integer.MIN_VALUE;
    public float verticalWeight = -1.0f;
    public float horizontalWeight = -1.0f;
    public int horizontalChainStyle = 0;
    public int verticalChainStyle = 0;
    public int widthDefault = 0;
    public int heightDefault = 0;
    public int widthMax = 0;
    public int heightMax = 0;
    public int widthMin = 0;
    public int heightMin = 0;
    public float widthPercent = 1.0f;
    public float heightPercent = 1.0f;
    public int mBarrierDirection = -1;
    public int mBarrierMargin = 0;
    public int mHelperType = -1;
    public boolean constrainedWidth = false;
    public boolean constrainedHeight = false;
    public boolean mBarrierAllowsGoneWidgets = true;
    public int mWrapBehavior = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sMapToConstant = sparseIntArray;
        sparseIntArray.append(R$styleable.Layout_layout_constraintLeft_toLeftOf, 24);
        sMapToConstant.append(R$styleable.Layout_layout_constraintLeft_toRightOf, 25);
        sMapToConstant.append(R$styleable.Layout_layout_constraintRight_toLeftOf, 28);
        sMapToConstant.append(R$styleable.Layout_layout_constraintRight_toRightOf, 29);
        sMapToConstant.append(R$styleable.Layout_layout_constraintTop_toTopOf, 35);
        sMapToConstant.append(R$styleable.Layout_layout_constraintTop_toBottomOf, 34);
        sMapToConstant.append(R$styleable.Layout_layout_constraintBottom_toTopOf, 4);
        sMapToConstant.append(R$styleable.Layout_layout_constraintBottom_toBottomOf, 3);
        sMapToConstant.append(R$styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
        sMapToConstant.append(R$styleable.Layout_layout_editor_absoluteX, 6);
        sMapToConstant.append(R$styleable.Layout_layout_editor_absoluteY, 7);
        sMapToConstant.append(R$styleable.Layout_layout_constraintGuide_begin, 17);
        sMapToConstant.append(R$styleable.Layout_layout_constraintGuide_end, 18);
        sMapToConstant.append(R$styleable.Layout_layout_constraintGuide_percent, 19);
        sMapToConstant.append(R$styleable.Layout_guidelineUseRtl, GUIDE_USE_RTL);
        sMapToConstant.append(R$styleable.Layout_android_orientation, 26);
        sMapToConstant.append(R$styleable.Layout_layout_constraintStart_toEndOf, 31);
        sMapToConstant.append(R$styleable.Layout_layout_constraintStart_toStartOf, 32);
        sMapToConstant.append(R$styleable.Layout_layout_constraintEnd_toStartOf, 10);
        sMapToConstant.append(R$styleable.Layout_layout_constraintEnd_toEndOf, 9);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginLeft, 13);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginTop, 16);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginRight, 14);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginBottom, 11);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginStart, 15);
        sMapToConstant.append(R$styleable.Layout_layout_goneMarginEnd, 12);
        sMapToConstant.append(R$styleable.Layout_layout_constraintVertical_weight, 38);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHorizontal_weight, 37);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
        sMapToConstant.append(R$styleable.Layout_layout_constraintVertical_chainStyle, 40);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHorizontal_bias, 20);
        sMapToConstant.append(R$styleable.Layout_layout_constraintVertical_bias, 36);
        sMapToConstant.append(R$styleable.Layout_layout_constraintDimensionRatio, 5);
        sMapToConstant.append(R$styleable.Layout_layout_constraintLeft_creator, UNUSED);
        sMapToConstant.append(R$styleable.Layout_layout_constraintTop_creator, UNUSED);
        sMapToConstant.append(R$styleable.Layout_layout_constraintRight_creator, UNUSED);
        sMapToConstant.append(R$styleable.Layout_layout_constraintBottom_creator, UNUSED);
        sMapToConstant.append(R$styleable.Layout_layout_constraintBaseline_creator, UNUSED);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginLeft, 23);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginRight, 27);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginStart, 30);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginEnd, 8);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginTop, 33);
        sMapToConstant.append(R$styleable.Layout_android_layout_marginBottom, 2);
        sMapToConstant.append(R$styleable.Layout_android_layout_width, 22);
        sMapToConstant.append(R$styleable.Layout_android_layout_height, 21);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth, 41);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHeight, 42);
        sMapToConstant.append(R$styleable.Layout_layout_constrainedWidth, CONSTRAINED_WIDTH);
        sMapToConstant.append(R$styleable.Layout_layout_constrainedHeight, CONSTRAINED_HEIGHT);
        sMapToConstant.append(R$styleable.Layout_layout_wrapBehaviorInParent, LAYOUT_WRAP_BEHAVIOR);
        sMapToConstant.append(R$styleable.Layout_layout_constraintCircle, CIRCLE);
        sMapToConstant.append(R$styleable.Layout_layout_constraintCircleRadius, CIRCLE_RADIUS);
        sMapToConstant.append(R$styleable.Layout_layout_constraintCircleAngle, 63);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth_percent, WIDTH_PERCENT);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHeight_percent, HEIGHT_PERCENT);
        sMapToConstant.append(R$styleable.Layout_chainUseRtl, CHAIN_USE_RTL);
        sMapToConstant.append(R$styleable.Layout_barrierDirection, BARRIER_DIRECTION);
        sMapToConstant.append(R$styleable.Layout_barrierMargin, BARRIER_MARGIN);
        sMapToConstant.append(R$styleable.Layout_constraint_referenced_ids, CONSTRAINT_REFERENCED_IDS);
        sMapToConstant.append(R$styleable.Layout_barrierAllowsGoneWidgets, BARRIER_ALLOWS_GONE_WIDGETS);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth_max, WIDTH_MAX);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth_min, WIDTH_MIN);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth_max, HEIGHT_MAX);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHeight_min, HEIGHT_MIN);
        sMapToConstant.append(R$styleable.Layout_layout_constraintWidth, CONSTRAINED_WIDTH);
        sMapToConstant.append(R$styleable.Layout_layout_constraintHeight, CONSTRAINED_HEIGHT);
        sMapToConstant.append(R$styleable.ConstraintLayout_Layout_layout_constraintTag, CONSTRAINT_TAG);
        sMapToConstant.append(R$styleable.Layout_guidelineUseRtl, GUIDE_USE_RTL);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyFrom(ConstraintSet$Layout constraintSet$Layout) {
        this.mIsGuideline = constraintSet$Layout.mIsGuideline;
        this.mWidth = constraintSet$Layout.mWidth;
        this.mApply = constraintSet$Layout.mApply;
        this.mHeight = constraintSet$Layout.mHeight;
        this.guideBegin = constraintSet$Layout.guideBegin;
        this.guideEnd = constraintSet$Layout.guideEnd;
        this.guidePercent = constraintSet$Layout.guidePercent;
        this.guidelineUseRtl = constraintSet$Layout.guidelineUseRtl;
        this.leftToLeft = constraintSet$Layout.leftToLeft;
        this.leftToRight = constraintSet$Layout.leftToRight;
        this.rightToLeft = constraintSet$Layout.rightToLeft;
        this.rightToRight = constraintSet$Layout.rightToRight;
        this.topToTop = constraintSet$Layout.topToTop;
        this.topToBottom = constraintSet$Layout.topToBottom;
        this.bottomToTop = constraintSet$Layout.bottomToTop;
        this.bottomToBottom = constraintSet$Layout.bottomToBottom;
        this.baselineToBaseline = constraintSet$Layout.baselineToBaseline;
        this.baselineToTop = constraintSet$Layout.baselineToTop;
        this.baselineToBottom = constraintSet$Layout.baselineToBottom;
        this.startToEnd = constraintSet$Layout.startToEnd;
        this.startToStart = constraintSet$Layout.startToStart;
        this.endToStart = constraintSet$Layout.endToStart;
        this.endToEnd = constraintSet$Layout.endToEnd;
        this.horizontalBias = constraintSet$Layout.horizontalBias;
        this.verticalBias = constraintSet$Layout.verticalBias;
        this.dimensionRatio = constraintSet$Layout.dimensionRatio;
        this.circleConstraint = constraintSet$Layout.circleConstraint;
        this.circleRadius = constraintSet$Layout.circleRadius;
        this.circleAngle = constraintSet$Layout.circleAngle;
        this.editorAbsoluteX = constraintSet$Layout.editorAbsoluteX;
        this.editorAbsoluteY = constraintSet$Layout.editorAbsoluteY;
        this.orientation = constraintSet$Layout.orientation;
        this.leftMargin = constraintSet$Layout.leftMargin;
        this.rightMargin = constraintSet$Layout.rightMargin;
        this.topMargin = constraintSet$Layout.topMargin;
        this.bottomMargin = constraintSet$Layout.bottomMargin;
        this.endMargin = constraintSet$Layout.endMargin;
        this.startMargin = constraintSet$Layout.startMargin;
        this.baselineMargin = constraintSet$Layout.baselineMargin;
        this.goneLeftMargin = constraintSet$Layout.goneLeftMargin;
        this.goneTopMargin = constraintSet$Layout.goneTopMargin;
        this.goneRightMargin = constraintSet$Layout.goneRightMargin;
        this.goneBottomMargin = constraintSet$Layout.goneBottomMargin;
        this.goneEndMargin = constraintSet$Layout.goneEndMargin;
        this.goneStartMargin = constraintSet$Layout.goneStartMargin;
        this.goneBaselineMargin = constraintSet$Layout.goneBaselineMargin;
        this.verticalWeight = constraintSet$Layout.verticalWeight;
        this.horizontalWeight = constraintSet$Layout.horizontalWeight;
        this.horizontalChainStyle = constraintSet$Layout.horizontalChainStyle;
        this.verticalChainStyle = constraintSet$Layout.verticalChainStyle;
        this.widthDefault = constraintSet$Layout.widthDefault;
        this.heightDefault = constraintSet$Layout.heightDefault;
        this.widthMax = constraintSet$Layout.widthMax;
        this.heightMax = constraintSet$Layout.heightMax;
        this.widthMin = constraintSet$Layout.widthMin;
        this.heightMin = constraintSet$Layout.heightMin;
        this.widthPercent = constraintSet$Layout.widthPercent;
        this.heightPercent = constraintSet$Layout.heightPercent;
        this.mBarrierDirection = constraintSet$Layout.mBarrierDirection;
        this.mBarrierMargin = constraintSet$Layout.mBarrierMargin;
        this.mHelperType = constraintSet$Layout.mHelperType;
        this.mConstraintTag = constraintSet$Layout.mConstraintTag;
        int[] iArr = constraintSet$Layout.mReferenceIds;
        if (iArr == null || constraintSet$Layout.mReferenceIdString != null) {
            this.mReferenceIds = null;
        } else {
            this.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
        }
        this.mReferenceIdString = constraintSet$Layout.mReferenceIdString;
        this.constrainedWidth = constraintSet$Layout.constrainedWidth;
        this.constrainedHeight = constraintSet$Layout.constrainedHeight;
        this.mBarrierAllowsGoneWidgets = constraintSet$Layout.mBarrierAllowsGoneWidgets;
        this.mWrapBehavior = constraintSet$Layout.mWrapBehavior;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dump(MotionScene motionScene, StringBuilder sb) {
        Field[] declaredFields = getClass().getDeclaredFields();
        sb.append("\n");
        for (Field field : declaredFields) {
            String name = field.getName();
            if (!Modifier.isStatic(field.getModifiers())) {
                try {
                    Object obj = field.get(this);
                    Class<?> type = field.getType();
                    if (type == Integer.TYPE) {
                        Integer num = (Integer) obj;
                        if (num.intValue() != -1) {
                            Object objLookUpConstraintName = motionScene.lookUpConstraintName(num.intValue());
                            sb.append("    ");
                            sb.append(name);
                            sb.append(" = \"");
                            sb.append(objLookUpConstraintName == null ? num : objLookUpConstraintName);
                            sb.append("\"\n");
                        }
                    } else if (type == Float.TYPE) {
                        Float f8 = (Float) obj;
                        if (f8.floatValue() != -1.0f) {
                            sb.append("    ");
                            sb.append(name);
                            sb.append(" = \"");
                            sb.append(f8);
                            sb.append("\"\n");
                        }
                    }
                } catch (IllegalAccessException e) {
                    Log.e("ConstraintSet", "Error accessing ConstraintSet field", e);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
        this.mApply = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            int i10 = sMapToConstant.get(index);
            switch (i10) {
                case 1:
                    this.baselineToBaseline = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.baselineToBaseline);
                    break;
                case 2:
                    this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                    break;
                case 3:
                    this.bottomToBottom = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.bottomToBottom);
                    break;
                case 4:
                    this.bottomToTop = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.bottomToTop);
                    break;
                case 5:
                    this.dimensionRatio = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                    break;
                case 7:
                    this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                    break;
                case 8:
                    this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                    break;
                case 9:
                    this.endToEnd = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.endToEnd);
                    break;
                case 10:
                    this.endToStart = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.endToStart);
                    break;
                case 11:
                    this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                    break;
                case 12:
                    this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                    break;
                case 13:
                    this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                    break;
                case 14:
                    this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                    break;
                case 15:
                    this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                    break;
                case 16:
                    this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                    break;
                case 17:
                    this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                    break;
                case 18:
                    this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                    break;
                case 19:
                    this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                    break;
                case 20:
                    this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                    break;
                case 21:
                    this.mHeight = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                    break;
                case 22:
                    this.mWidth = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                    break;
                case 23:
                    this.leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                    break;
                case 24:
                    this.leftToLeft = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.leftToLeft);
                    break;
                case 25:
                    this.leftToRight = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.leftToRight);
                    break;
                case 26:
                    this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                    break;
                case 27:
                    this.rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                    break;
                case 28:
                    this.rightToLeft = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.rightToLeft);
                    break;
                case 29:
                    this.rightToRight = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.rightToRight);
                    break;
                case 30:
                    this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                    break;
                case 31:
                    this.startToEnd = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.startToEnd);
                    break;
                case 32:
                    this.startToStart = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.startToStart);
                    break;
                case 33:
                    this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                    break;
                case 34:
                    this.topToBottom = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.topToBottom);
                    break;
                case 35:
                    this.topToTop = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.topToTop);
                    break;
                case 36:
                    this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                    break;
                case 37:
                    this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                    break;
                case 38:
                    this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                    break;
                case 39:
                    this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                    break;
                case 40:
                    this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.verticalChainStyle);
                    break;
                case 41:
                    ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 0);
                    break;
                case 42:
                    ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 1);
                    break;
                default:
                    switch (i10) {
                        case CIRCLE /* 61 */:
                            this.circleConstraint = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.circleConstraint);
                            break;
                        case CIRCLE_RADIUS /* 62 */:
                            this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                            break;
                        case 63:
                            this.circleAngle = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle);
                            break;
                        default:
                            switch (i10) {
                                case WIDTH_PERCENT /* 69 */:
                                    this.widthPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case HEIGHT_PERCENT /* 70 */:
                                    this.heightPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                                    break;
                                case CHAIN_USE_RTL /* 71 */:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    break;
                                case BARRIER_DIRECTION /* 72 */:
                                    this.mBarrierDirection = typedArrayObtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                    break;
                                case BARRIER_MARGIN /* 73 */:
                                    this.mBarrierMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                    break;
                                case CONSTRAINT_REFERENCED_IDS /* 74 */:
                                    this.mReferenceIdString = typedArrayObtainStyledAttributes.getString(index);
                                    break;
                                case BARRIER_ALLOWS_GONE_WIDGETS /* 75 */:
                                    this.mBarrierAllowsGoneWidgets = typedArrayObtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                    break;
                                case LAYOUT_WRAP_BEHAVIOR /* 76 */:
                                    this.mWrapBehavior = typedArrayObtainStyledAttributes.getInt(index, this.mWrapBehavior);
                                    break;
                                case BASELINE_TO_TOP /* 77 */:
                                    this.baselineToTop = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.baselineToTop);
                                    break;
                                case BASELINE_TO_BOTTOM /* 78 */:
                                    this.baselineToBottom = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.baselineToBottom);
                                    break;
                                case GONE_BASELINE_MARGIN /* 79 */:
                                    this.goneBaselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                    break;
                                case BASELINE_MARGIN /* 80 */:
                                    this.baselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                    break;
                                case WIDTH_DEFAULT /* 81 */:
                                    this.widthDefault = typedArrayObtainStyledAttributes.getInt(index, this.widthDefault);
                                    break;
                                case HEIGHT_DEFAULT /* 82 */:
                                    this.heightDefault = typedArrayObtainStyledAttributes.getInt(index, this.heightDefault);
                                    break;
                                case HEIGHT_MAX /* 83 */:
                                    this.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                    break;
                                case WIDTH_MAX /* 84 */:
                                    this.widthMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                    break;
                                case HEIGHT_MIN /* 85 */:
                                    this.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                    break;
                                case WIDTH_MIN /* 86 */:
                                    this.widthMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                    break;
                                case CONSTRAINED_WIDTH /* 87 */:
                                    this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                                    break;
                                case CONSTRAINED_HEIGHT /* 88 */:
                                    this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                                    break;
                                case CONSTRAINT_TAG /* 89 */:
                                    this.mConstraintTag = typedArrayObtainStyledAttributes.getString(index);
                                    break;
                                case GUIDE_USE_RTL /* 90 */:
                                    this.guidelineUseRtl = typedArrayObtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                    break;
                                case UNUSED /* 91 */:
                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                                    break;
                                default:
                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sMapToConstant.get(index));
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
