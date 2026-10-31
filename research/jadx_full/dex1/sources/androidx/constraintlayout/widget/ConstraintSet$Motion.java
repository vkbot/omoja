package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.Easing;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSet$Motion {
    private static final int ANIMATE_CIRCLE_ANGLE_TO = 6;
    private static final int ANIMATE_RELATIVE_TO = 5;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    private static final int MOTION_DRAW_PATH = 4;
    private static final int MOTION_STAGGER = 7;
    private static final int PATH_MOTION_ARC = 2;
    private static final int QUANTIZE_MOTION_INTERPOLATOR = 10;
    private static final int QUANTIZE_MOTION_PHASE = 9;
    private static final int QUANTIZE_MOTION_STEPS = 8;
    private static final int SPLINE_STRING = -1;
    private static final int TRANSITION_EASING = 3;
    private static final int TRANSITION_PATH_ROTATE = 1;
    private static SparseIntArray sMapToConstant;
    public boolean mApply = false;
    public int mAnimateRelativeTo = -1;
    public int mAnimateCircleAngleTo = 0;
    public String mTransitionEasing = null;
    public int mPathMotionArc = -1;
    public int mDrawPath = 0;
    public float mMotionStagger = Float.NaN;
    public int mPolarRelativeTo = -1;
    public float mPathRotate = Float.NaN;
    public float mQuantizeMotionPhase = Float.NaN;
    public int mQuantizeMotionSteps = -1;
    public String mQuantizeInterpolatorString = null;
    public int mQuantizeInterpolatorType = -3;
    public int mQuantizeInterpolatorID = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sMapToConstant = sparseIntArray;
        sparseIntArray.append(R$styleable.Motion_motionPathRotate, 1);
        sMapToConstant.append(R$styleable.Motion_pathMotionArc, 2);
        sMapToConstant.append(R$styleable.Motion_transitionEasing, 3);
        sMapToConstant.append(R$styleable.Motion_drawPath, 4);
        sMapToConstant.append(R$styleable.Motion_animateRelativeTo, 5);
        sMapToConstant.append(R$styleable.Motion_animateCircleAngleTo, 6);
        sMapToConstant.append(R$styleable.Motion_motionStagger, 7);
        sMapToConstant.append(R$styleable.Motion_quantizeMotionSteps, 8);
        sMapToConstant.append(R$styleable.Motion_quantizeMotionPhase, 9);
        sMapToConstant.append(R$styleable.Motion_quantizeMotionInterpolator, 10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void copyFrom(ConstraintSet$Motion constraintSet$Motion) {
        this.mApply = constraintSet$Motion.mApply;
        this.mAnimateRelativeTo = constraintSet$Motion.mAnimateRelativeTo;
        this.mTransitionEasing = constraintSet$Motion.mTransitionEasing;
        this.mPathMotionArc = constraintSet$Motion.mPathMotionArc;
        this.mDrawPath = constraintSet$Motion.mDrawPath;
        this.mPathRotate = constraintSet$Motion.mPathRotate;
        this.mMotionStagger = constraintSet$Motion.mMotionStagger;
        this.mPolarRelativeTo = constraintSet$Motion.mPolarRelativeTo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillFromAttributeList(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
        this.mApply = true;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i9);
            switch (sMapToConstant.get(index)) {
                case 1:
                    this.mPathRotate = typedArrayObtainStyledAttributes.getFloat(index, this.mPathRotate);
                    break;
                case 2:
                    this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.mTransitionEasing = typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        this.mTransitionEasing = Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    this.mDrawPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.mAnimateRelativeTo = ConstraintSet.access$100(typedArrayObtainStyledAttributes, index, this.mAnimateRelativeTo);
                    break;
                case 6:
                    this.mAnimateCircleAngleTo = typedArrayObtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                    break;
                case 7:
                    this.mMotionStagger = typedArrayObtainStyledAttributes.getFloat(index, this.mMotionStagger);
                    break;
                case 8:
                    this.mQuantizeMotionSteps = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                    break;
                case 9:
                    this.mQuantizeMotionPhase = typedArrayObtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                    break;
                case 10:
                    int i10 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i10 == 1) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.mQuantizeInterpolatorID = resourceId;
                        if (resourceId != -1) {
                            this.mQuantizeInterpolatorType = -2;
                        }
                    } else if (i10 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.mQuantizeInterpolatorString = string;
                        if (string.indexOf("/") > 0) {
                            this.mQuantizeInterpolatorID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.mQuantizeInterpolatorType = -2;
                        } else {
                            this.mQuantizeInterpolatorType = -1;
                        }
                    } else {
                        this.mQuantizeInterpolatorType = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
