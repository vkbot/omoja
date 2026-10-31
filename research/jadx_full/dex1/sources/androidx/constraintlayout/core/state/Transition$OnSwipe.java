package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine$Decelerate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Transition$OnSwipe {
    public static final int ANCHOR_SIDE_BOTTOM = 3;
    public static final int ANCHOR_SIDE_END = 6;
    public static final int ANCHOR_SIDE_LEFT = 1;
    public static final int ANCHOR_SIDE_MIDDLE = 4;
    public static final int ANCHOR_SIDE_RIGHT = 2;
    public static final int ANCHOR_SIDE_START = 5;
    public static final int ANCHOR_SIDE_TOP = 0;
    public static final int BOUNDARY_BOUNCE_BOTH = 3;
    public static final int BOUNDARY_BOUNCE_END = 2;
    public static final int BOUNDARY_BOUNCE_START = 1;
    public static final int BOUNDARY_OVERSHOOT = 0;
    public static final int DRAG_ANTICLOCKWISE = 7;
    public static final int DRAG_CLOCKWISE = 6;
    public static final int DRAG_DOWN = 1;
    public static final int DRAG_END = 5;
    public static final int DRAG_LEFT = 2;
    public static final int DRAG_RIGHT = 3;
    public static final int DRAG_START = 4;
    public static final int DRAG_UP = 0;
    public static final int MODE_CONTINUOUS_VELOCITY = 0;
    public static final int MODE_SPRING = 1;
    public static final int ON_UP_AUTOCOMPLETE = 0;
    public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
    public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
    public static final int ON_UP_DECELERATE = 4;
    public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int ON_UP_NEVER_COMPLETE_TO_END = 7;
    public static final int ON_UP_NEVER_COMPLETE_TO_START = 6;
    public static final int ON_UP_STOP = 3;
    String mAnchorId;
    private int mAnchorSide;
    private StopEngine mEngine;
    String mLimitBoundsTo;
    private String mRotationCenterId;
    private long mStart;
    public static final String[] SIDES = {"top", "left", "right", "bottom", "middle", "start", "end"};
    private static final float[][] TOUCH_SIDES = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    public static final String[] DIRECTIONS = {"up", "down", "left", "right", "start", "end", "clockwise", "anticlockwise"};
    public static final String[] MODE = {"velocity", "spring"};
    public static final String[] TOUCH_UP = {"autocomplete", "toStart", "toEnd", "stop", "decelerate", "decelerateComplete", "neverCompleteStart", "neverCompleteEnd"};
    public static final String[] BOUNDARY = {"overshoot", "bounceStart", "bounceEnd", "bounceBoth"};
    private static final float[][] TOUCH_DIRECTION = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};
    private boolean mDragVertical = true;
    private int mDragDirection = 0;
    private float mDragScale = 1.0f;
    private float mDragThreshold = 10.0f;
    private int mAutoCompleteMode = 0;
    private float mMaxVelocity = 4.0f;
    private float mMaxAcceleration = 1.2f;
    private int mOnTouchUp = 0;
    private float mSpringMass = 1.0f;
    private float mSpringStiffness = 400.0f;
    private float mSpringDamping = 10.0f;
    private float mSpringStopThreshold = 0.01f;
    private float mDestination = 0.0f;
    private int mSpringBoundary = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void config(float f8, float f9, long j9, float f10) {
        SpringStopEngine springStopEngine;
        StopLogicEngine stopLogicEngine;
        StopLogicEngine$Decelerate stopLogicEngine$Decelerate;
        this.mStart = j9;
        float fAbs = Math.abs(f9);
        float f11 = this.mMaxVelocity;
        if (fAbs > f11) {
            f9 = Math.signum(f9) * f11;
        }
        float f12 = f9;
        float destinationPosition = getDestinationPosition(f8, f12, f10);
        this.mDestination = destinationPosition;
        if (destinationPosition == f8) {
            this.mEngine = null;
            return;
        }
        if (this.mOnTouchUp == 4 && this.mAutoCompleteMode == 0) {
            StopEngine stopEngine = this.mEngine;
            if (stopEngine instanceof StopLogicEngine$Decelerate) {
                stopLogicEngine$Decelerate = (StopLogicEngine$Decelerate) stopEngine;
            } else {
                stopLogicEngine$Decelerate = new StopLogicEngine$Decelerate();
                this.mEngine = stopLogicEngine$Decelerate;
            }
            stopLogicEngine$Decelerate.config(f8, this.mDestination, f12);
            return;
        }
        int i9 = this.mAutoCompleteMode;
        StopEngine stopEngine2 = this.mEngine;
        if (i9 == 0) {
            if (stopEngine2 instanceof StopLogicEngine) {
                stopLogicEngine = (StopLogicEngine) stopEngine2;
            } else {
                stopLogicEngine = new StopLogicEngine();
                this.mEngine = stopLogicEngine;
            }
            stopLogicEngine.config(f8, this.mDestination, f12, f10, this.mMaxAcceleration, this.mMaxVelocity);
            return;
        }
        if (stopEngine2 instanceof SpringStopEngine) {
            springStopEngine = (SpringStopEngine) stopEngine2;
        } else {
            springStopEngine = new SpringStopEngine();
            this.mEngine = springStopEngine;
        }
        springStopEngine.springConfig(f8, this.mDestination, f12, this.mSpringMass, this.mSpringStiffness, this.mSpringDamping, this.mSpringStopThreshold, this.mSpringBoundary);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDestinationPosition(float f8, float f9, float f10) {
        float fAbs = (((Math.abs(f9) * 0.5f) * f9) / this.mMaxAcceleration) + f8;
        switch (this.mOnTouchUp) {
            case 1:
                return f8 >= 1.0f ? 1.0f : 0.0f;
            case 2:
                return f8 <= 0.0f ? 0.0f : 1.0f;
            case 3:
                return Float.NaN;
            case 4:
                return Math.max(0.0f, Math.min(1.0f, fAbs));
            case 5:
                if (fAbs <= 0.2f || fAbs >= 0.8f) {
                    return fAbs > 0.5f ? 1.0f : 0.0f;
                }
                return fAbs;
            case 6:
                return 1.0f;
            default:
                if (fAbs > 0.5d) {
                    return 1.0f;
                }
            case 7:
                return 0.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getDirection() {
        return TOUCH_DIRECTION[this.mDragDirection];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getScale() {
        return this.mDragScale;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float[] getSide() {
        return TOUCH_SIDES[this.mAnchorSide];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getTouchUpProgress(long j9) {
        return this.mEngine.isStopped() ? this.mDestination : this.mEngine.getInterpolation((j9 - this.mStart) * 1.0E-9f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isNotDone(float f8) {
        StopEngine stopEngine;
        return (this.mOnTouchUp == 3 || (stopEngine = this.mEngine) == null || stopEngine.isStopped()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void printInfo() {
        if (this.mAutoCompleteMode == 0) {
            System.out.println("velocity = " + this.mEngine.getVelocity());
            System.out.println("mMaxAcceleration = " + this.mMaxAcceleration);
            System.out.println("mMaxVelocity = " + this.mMaxVelocity);
            return;
        }
        System.out.println("mSpringMass          = " + this.mSpringMass);
        System.out.println("mSpringStiffness     = " + this.mSpringStiffness);
        System.out.println("mSpringDamping       = " + this.mSpringDamping);
        System.out.println("mSpringStopThreshold = " + this.mSpringStopThreshold);
        System.out.println("mSpringBoundary      = " + this.mSpringBoundary);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnchorId(String str) {
        this.mAnchorId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAnchorSide(int i9) {
        this.mAnchorSide = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoCompleteMode(int i9) {
        this.mAutoCompleteMode = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDragDirection(int i9) {
        this.mDragDirection = i9;
        this.mDragVertical = i9 < 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDragScale(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mDragScale = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDragThreshold(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mDragThreshold = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLimitBoundsTo(String str) {
        this.mLimitBoundsTo = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxAcceleration(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mMaxAcceleration = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxVelocity(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mMaxVelocity = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnTouchUp(int i9) {
        this.mOnTouchUp = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationCenterId(String str) {
        this.mRotationCenterId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpringBoundary(int i9) {
        this.mSpringBoundary = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpringDamping(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mSpringDamping = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpringMass(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mSpringMass = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpringStiffness(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mSpringStiffness = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpringStopThreshold(float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        this.mSpringStopThreshold = f8;
    }
}
