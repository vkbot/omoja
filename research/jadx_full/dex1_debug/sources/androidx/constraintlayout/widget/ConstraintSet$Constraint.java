package androidx.constraintlayout.widget;

import android.util.Log;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.navigation.b;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$Constraint {
    ConstraintSet$Constraint$Delta mDelta;
    String mTargetString;
    int mViewId;
    public final ConstraintSet$PropertySet propertySet = new ConstraintSet$PropertySet();
    public final ConstraintSet$Motion motion = new ConstraintSet$Motion();
    public final ConstraintSet$Layout layout = new ConstraintSet$Layout();
    public final ConstraintSet$Transform transform = new ConstraintSet$Transform();
    public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$000(ConstraintSet$Constraint constraintSet$Constraint, int i9, ConstraintLayout$LayoutParams constraintLayout$LayoutParams) {
        constraintSet$Constraint.fillFrom(i9, constraintLayout$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1000(ConstraintSet$Constraint constraintSet$Constraint, String str, int i9) {
        constraintSet$Constraint.setColorValue(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1100(ConstraintSet$Constraint constraintSet$Constraint, String str, float f8) {
        constraintSet$Constraint.setFloatValue(str, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$1200(ConstraintSet$Constraint constraintSet$Constraint, String str, String str2) {
        constraintSet$Constraint.setStringValue(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$700(ConstraintSet$Constraint constraintSet$Constraint, ConstraintHelper constraintHelper, int i9, Constraints$LayoutParams constraints$LayoutParams) {
        constraintSet$Constraint.fillFromConstraints(constraintHelper, i9, constraints$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$800(ConstraintSet$Constraint constraintSet$Constraint, int i9, Constraints$LayoutParams constraints$LayoutParams) {
        constraintSet$Constraint.fillFromConstraints(i9, constraints$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$900(ConstraintSet$Constraint constraintSet$Constraint, String str, int i9) {
        constraintSet$Constraint.setIntValue(str, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillFrom(int i9, ConstraintLayout$LayoutParams constraintLayout$LayoutParams) {
        this.mViewId = i9;
        ConstraintSet$Layout constraintSet$Layout = this.layout;
        constraintSet$Layout.leftToLeft = constraintLayout$LayoutParams.leftToLeft;
        constraintSet$Layout.leftToRight = constraintLayout$LayoutParams.leftToRight;
        constraintSet$Layout.rightToLeft = constraintLayout$LayoutParams.rightToLeft;
        constraintSet$Layout.rightToRight = constraintLayout$LayoutParams.rightToRight;
        constraintSet$Layout.topToTop = constraintLayout$LayoutParams.topToTop;
        constraintSet$Layout.topToBottom = constraintLayout$LayoutParams.topToBottom;
        constraintSet$Layout.bottomToTop = constraintLayout$LayoutParams.bottomToTop;
        constraintSet$Layout.bottomToBottom = constraintLayout$LayoutParams.bottomToBottom;
        constraintSet$Layout.baselineToBaseline = constraintLayout$LayoutParams.baselineToBaseline;
        constraintSet$Layout.baselineToTop = constraintLayout$LayoutParams.baselineToTop;
        constraintSet$Layout.baselineToBottom = constraintLayout$LayoutParams.baselineToBottom;
        constraintSet$Layout.startToEnd = constraintLayout$LayoutParams.startToEnd;
        constraintSet$Layout.startToStart = constraintLayout$LayoutParams.startToStart;
        constraintSet$Layout.endToStart = constraintLayout$LayoutParams.endToStart;
        constraintSet$Layout.endToEnd = constraintLayout$LayoutParams.endToEnd;
        constraintSet$Layout.horizontalBias = constraintLayout$LayoutParams.horizontalBias;
        constraintSet$Layout.verticalBias = constraintLayout$LayoutParams.verticalBias;
        constraintSet$Layout.dimensionRatio = constraintLayout$LayoutParams.dimensionRatio;
        constraintSet$Layout.circleConstraint = constraintLayout$LayoutParams.circleConstraint;
        constraintSet$Layout.circleRadius = constraintLayout$LayoutParams.circleRadius;
        constraintSet$Layout.circleAngle = constraintLayout$LayoutParams.circleAngle;
        constraintSet$Layout.editorAbsoluteX = constraintLayout$LayoutParams.editorAbsoluteX;
        constraintSet$Layout.editorAbsoluteY = constraintLayout$LayoutParams.editorAbsoluteY;
        constraintSet$Layout.orientation = constraintLayout$LayoutParams.orientation;
        constraintSet$Layout.guidePercent = constraintLayout$LayoutParams.guidePercent;
        constraintSet$Layout.guideBegin = constraintLayout$LayoutParams.guideBegin;
        constraintSet$Layout.guideEnd = constraintLayout$LayoutParams.guideEnd;
        constraintSet$Layout.mWidth = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).width;
        constraintSet$Layout.mHeight = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).height;
        constraintSet$Layout.leftMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).leftMargin;
        constraintSet$Layout.rightMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).rightMargin;
        constraintSet$Layout.topMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).topMargin;
        constraintSet$Layout.bottomMargin = ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).bottomMargin;
        constraintSet$Layout.baselineMargin = constraintLayout$LayoutParams.baselineMargin;
        constraintSet$Layout.verticalWeight = constraintLayout$LayoutParams.verticalWeight;
        constraintSet$Layout.horizontalWeight = constraintLayout$LayoutParams.horizontalWeight;
        constraintSet$Layout.verticalChainStyle = constraintLayout$LayoutParams.verticalChainStyle;
        constraintSet$Layout.horizontalChainStyle = constraintLayout$LayoutParams.horizontalChainStyle;
        constraintSet$Layout.constrainedWidth = constraintLayout$LayoutParams.constrainedWidth;
        constraintSet$Layout.constrainedHeight = constraintLayout$LayoutParams.constrainedHeight;
        constraintSet$Layout.widthDefault = constraintLayout$LayoutParams.matchConstraintDefaultWidth;
        constraintSet$Layout.heightDefault = constraintLayout$LayoutParams.matchConstraintDefaultHeight;
        constraintSet$Layout.widthMax = constraintLayout$LayoutParams.matchConstraintMaxWidth;
        constraintSet$Layout.heightMax = constraintLayout$LayoutParams.matchConstraintMaxHeight;
        constraintSet$Layout.widthMin = constraintLayout$LayoutParams.matchConstraintMinWidth;
        constraintSet$Layout.heightMin = constraintLayout$LayoutParams.matchConstraintMinHeight;
        constraintSet$Layout.widthPercent = constraintLayout$LayoutParams.matchConstraintPercentWidth;
        constraintSet$Layout.heightPercent = constraintLayout$LayoutParams.matchConstraintPercentHeight;
        constraintSet$Layout.mConstraintTag = constraintLayout$LayoutParams.constraintTag;
        constraintSet$Layout.goneTopMargin = constraintLayout$LayoutParams.goneTopMargin;
        constraintSet$Layout.goneBottomMargin = constraintLayout$LayoutParams.goneBottomMargin;
        constraintSet$Layout.goneLeftMargin = constraintLayout$LayoutParams.goneLeftMargin;
        constraintSet$Layout.goneRightMargin = constraintLayout$LayoutParams.goneRightMargin;
        constraintSet$Layout.goneStartMargin = constraintLayout$LayoutParams.goneStartMargin;
        constraintSet$Layout.goneEndMargin = constraintLayout$LayoutParams.goneEndMargin;
        constraintSet$Layout.goneBaselineMargin = constraintLayout$LayoutParams.goneBaselineMargin;
        constraintSet$Layout.mWrapBehavior = constraintLayout$LayoutParams.wrapBehaviorInParent;
        constraintSet$Layout.endMargin = constraintLayout$LayoutParams.getMarginEnd();
        this.layout.startMargin = constraintLayout$LayoutParams.getMarginStart();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillFromConstraints(int i9, Constraints$LayoutParams constraints$LayoutParams) {
        fillFrom(i9, constraints$LayoutParams);
        this.propertySet.alpha = constraints$LayoutParams.alpha;
        ConstraintSet$Transform constraintSet$Transform = this.transform;
        constraintSet$Transform.rotation = constraints$LayoutParams.rotation;
        constraintSet$Transform.rotationX = constraints$LayoutParams.rotationX;
        constraintSet$Transform.rotationY = constraints$LayoutParams.rotationY;
        constraintSet$Transform.scaleX = constraints$LayoutParams.scaleX;
        constraintSet$Transform.scaleY = constraints$LayoutParams.scaleY;
        constraintSet$Transform.transformPivotX = constraints$LayoutParams.transformPivotX;
        constraintSet$Transform.transformPivotY = constraints$LayoutParams.transformPivotY;
        constraintSet$Transform.translationX = constraints$LayoutParams.translationX;
        constraintSet$Transform.translationY = constraints$LayoutParams.translationY;
        constraintSet$Transform.translationZ = constraints$LayoutParams.translationZ;
        constraintSet$Transform.elevation = constraints$LayoutParams.elevation;
        constraintSet$Transform.applyElevation = constraints$LayoutParams.applyElevation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintAttribute get(String str, ConstraintAttribute$AttributeType constraintAttribute$AttributeType) {
        if (!this.mCustomConstraints.containsKey(str)) {
            ConstraintAttribute constraintAttribute = new ConstraintAttribute(str, constraintAttribute$AttributeType);
            this.mCustomConstraints.put(str, constraintAttribute);
            return constraintAttribute;
        }
        ConstraintAttribute constraintAttribute2 = this.mCustomConstraints.get(str);
        if (constraintAttribute2.getType() == constraintAttribute$AttributeType) {
            return constraintAttribute2;
        }
        b.o(constraintAttribute2.getType().name(), "ConstraintAttribute is already a ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setColorValue(String str, int i9) {
        get(str, ConstraintAttribute$AttributeType.COLOR_TYPE).setColorValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setFloatValue(String str, float f8) {
        get(str, ConstraintAttribute$AttributeType.FLOAT_TYPE).setFloatValue(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setIntValue(String str, int i9) {
        get(str, ConstraintAttribute$AttributeType.INT_TYPE).setIntValue(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setStringValue(String str, String str2) {
        get(str, ConstraintAttribute$AttributeType.STRING_TYPE).setStringValue(str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyDelta(ConstraintSet$Constraint constraintSet$Constraint) {
        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta = this.mDelta;
        if (constraintSet$Constraint$Delta != null) {
            constraintSet$Constraint$Delta.applyDelta(constraintSet$Constraint);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyTo(ConstraintLayout$LayoutParams constraintLayout$LayoutParams) {
        ConstraintSet$Layout constraintSet$Layout = this.layout;
        constraintLayout$LayoutParams.leftToLeft = constraintSet$Layout.leftToLeft;
        constraintLayout$LayoutParams.leftToRight = constraintSet$Layout.leftToRight;
        constraintLayout$LayoutParams.rightToLeft = constraintSet$Layout.rightToLeft;
        constraintLayout$LayoutParams.rightToRight = constraintSet$Layout.rightToRight;
        constraintLayout$LayoutParams.topToTop = constraintSet$Layout.topToTop;
        constraintLayout$LayoutParams.topToBottom = constraintSet$Layout.topToBottom;
        constraintLayout$LayoutParams.bottomToTop = constraintSet$Layout.bottomToTop;
        constraintLayout$LayoutParams.bottomToBottom = constraintSet$Layout.bottomToBottom;
        constraintLayout$LayoutParams.baselineToBaseline = constraintSet$Layout.baselineToBaseline;
        constraintLayout$LayoutParams.baselineToTop = constraintSet$Layout.baselineToTop;
        constraintLayout$LayoutParams.baselineToBottom = constraintSet$Layout.baselineToBottom;
        constraintLayout$LayoutParams.startToEnd = constraintSet$Layout.startToEnd;
        constraintLayout$LayoutParams.startToStart = constraintSet$Layout.startToStart;
        constraintLayout$LayoutParams.endToStart = constraintSet$Layout.endToStart;
        constraintLayout$LayoutParams.endToEnd = constraintSet$Layout.endToEnd;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).leftMargin = constraintSet$Layout.leftMargin;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).rightMargin = constraintSet$Layout.rightMargin;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).topMargin = constraintSet$Layout.topMargin;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).bottomMargin = constraintSet$Layout.bottomMargin;
        constraintLayout$LayoutParams.goneStartMargin = constraintSet$Layout.goneStartMargin;
        constraintLayout$LayoutParams.goneEndMargin = constraintSet$Layout.goneEndMargin;
        constraintLayout$LayoutParams.goneTopMargin = constraintSet$Layout.goneTopMargin;
        constraintLayout$LayoutParams.goneBottomMargin = constraintSet$Layout.goneBottomMargin;
        constraintLayout$LayoutParams.horizontalBias = constraintSet$Layout.horizontalBias;
        constraintLayout$LayoutParams.verticalBias = constraintSet$Layout.verticalBias;
        constraintLayout$LayoutParams.circleConstraint = constraintSet$Layout.circleConstraint;
        constraintLayout$LayoutParams.circleRadius = constraintSet$Layout.circleRadius;
        constraintLayout$LayoutParams.circleAngle = constraintSet$Layout.circleAngle;
        constraintLayout$LayoutParams.dimensionRatio = constraintSet$Layout.dimensionRatio;
        constraintLayout$LayoutParams.editorAbsoluteX = constraintSet$Layout.editorAbsoluteX;
        constraintLayout$LayoutParams.editorAbsoluteY = constraintSet$Layout.editorAbsoluteY;
        constraintLayout$LayoutParams.verticalWeight = constraintSet$Layout.verticalWeight;
        constraintLayout$LayoutParams.horizontalWeight = constraintSet$Layout.horizontalWeight;
        constraintLayout$LayoutParams.verticalChainStyle = constraintSet$Layout.verticalChainStyle;
        constraintLayout$LayoutParams.horizontalChainStyle = constraintSet$Layout.horizontalChainStyle;
        constraintLayout$LayoutParams.constrainedWidth = constraintSet$Layout.constrainedWidth;
        constraintLayout$LayoutParams.constrainedHeight = constraintSet$Layout.constrainedHeight;
        constraintLayout$LayoutParams.matchConstraintDefaultWidth = constraintSet$Layout.widthDefault;
        constraintLayout$LayoutParams.matchConstraintDefaultHeight = constraintSet$Layout.heightDefault;
        constraintLayout$LayoutParams.matchConstraintMaxWidth = constraintSet$Layout.widthMax;
        constraintLayout$LayoutParams.matchConstraintMaxHeight = constraintSet$Layout.heightMax;
        constraintLayout$LayoutParams.matchConstraintMinWidth = constraintSet$Layout.widthMin;
        constraintLayout$LayoutParams.matchConstraintMinHeight = constraintSet$Layout.heightMin;
        constraintLayout$LayoutParams.matchConstraintPercentWidth = constraintSet$Layout.widthPercent;
        constraintLayout$LayoutParams.matchConstraintPercentHeight = constraintSet$Layout.heightPercent;
        constraintLayout$LayoutParams.orientation = constraintSet$Layout.orientation;
        constraintLayout$LayoutParams.guidePercent = constraintSet$Layout.guidePercent;
        constraintLayout$LayoutParams.guideBegin = constraintSet$Layout.guideBegin;
        constraintLayout$LayoutParams.guideEnd = constraintSet$Layout.guideEnd;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).width = constraintSet$Layout.mWidth;
        ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).height = constraintSet$Layout.mHeight;
        String str = constraintSet$Layout.mConstraintTag;
        if (str != null) {
            constraintLayout$LayoutParams.constraintTag = str;
        }
        constraintLayout$LayoutParams.wrapBehaviorInParent = constraintSet$Layout.mWrapBehavior;
        constraintLayout$LayoutParams.setMarginStart(constraintSet$Layout.startMargin);
        constraintLayout$LayoutParams.setMarginEnd(this.layout.endMargin);
        constraintLayout$LayoutParams.validate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSet$Constraint clone() {
        ConstraintSet$Constraint constraintSet$Constraint = new ConstraintSet$Constraint();
        constraintSet$Constraint.layout.copyFrom(this.layout);
        constraintSet$Constraint.motion.copyFrom(this.motion);
        constraintSet$Constraint.propertySet.copyFrom(this.propertySet);
        constraintSet$Constraint.transform.copyFrom(this.transform);
        constraintSet$Constraint.mViewId = this.mViewId;
        constraintSet$Constraint.mDelta = this.mDelta;
        return constraintSet$Constraint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void printDelta(String str) {
        ConstraintSet$Constraint$Delta constraintSet$Constraint$Delta = this.mDelta;
        if (constraintSet$Constraint$Delta != null) {
            constraintSet$Constraint$Delta.printDelta(str);
        } else {
            Log.v(str, "DELTA IS NULL");
        }
    }

    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m31clone() {
        return clone();
    }

    private void fillFromConstraints(ConstraintHelper constraintHelper, int i9, Constraints$LayoutParams constraints$LayoutParams) {
        fillFromConstraints(i9, constraints$LayoutParams);
        if (constraintHelper instanceof Barrier) {
            ConstraintSet$Layout constraintSet$Layout = this.layout;
            constraintSet$Layout.mHelperType = 1;
            Barrier barrier = (Barrier) constraintHelper;
            constraintSet$Layout.mBarrierDirection = barrier.getType();
            this.layout.mReferenceIds = barrier.getReferencedIds();
            this.layout.mBarrierMargin = barrier.getMargin();
        }
    }
}
