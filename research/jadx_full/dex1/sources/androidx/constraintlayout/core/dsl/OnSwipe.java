package androidx.constraintlayout.core.dsl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OnSwipe {
    public static final int FLAG_DISABLE_POST_SCROLL = 1;
    public static final int FLAG_DISABLE_SCROLL = 2;
    private OnSwipe$Mode mAutoCompleteMode;
    private OnSwipe$Drag mDragDirection;
    private float mDragScale;
    private float mDragThreshold;
    private String mLimitBoundsTo;
    private float mMaxAcceleration;
    private float mMaxVelocity;
    private OnSwipe$TouchUp mOnTouchUp;
    private String mRotationCenterId;
    private OnSwipe$Boundary mSpringBoundary;
    private float mSpringDamping;
    private float mSpringMass;
    private float mSpringStiffness;
    private float mSpringStopThreshold;
    private String mTouchAnchorId;
    private OnSwipe$Side mTouchAnchorSide;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe() {
        this.mDragDirection = null;
        this.mTouchAnchorSide = null;
        this.mTouchAnchorId = null;
        this.mLimitBoundsTo = null;
        this.mOnTouchUp = null;
        this.mRotationCenterId = null;
        this.mMaxVelocity = Float.NaN;
        this.mMaxAcceleration = Float.NaN;
        this.mDragScale = Float.NaN;
        this.mDragThreshold = Float.NaN;
        this.mSpringDamping = Float.NaN;
        this.mSpringMass = Float.NaN;
        this.mSpringStiffness = Float.NaN;
        this.mSpringStopThreshold = Float.NaN;
        this.mSpringBoundary = null;
        this.mAutoCompleteMode = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe$Mode getAutoCompleteMode() {
        return this.mAutoCompleteMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe$Drag getDragDirection() {
        return this.mDragDirection;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDragScale() {
        return this.mDragScale;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDragThreshold() {
        return this.mDragThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getLimitBoundsTo() {
        return this.mLimitBoundsTo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaxAcceleration() {
        return this.mMaxAcceleration;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaxVelocity() {
        return this.mMaxVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe$TouchUp getOnTouchUp() {
        return this.mOnTouchUp;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getRotationCenterId() {
        return this.mRotationCenterId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe$Boundary getSpringBoundary() {
        return this.mSpringBoundary;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringDamping() {
        return this.mSpringDamping;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringMass() {
        return this.mSpringMass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringStiffness() {
        return this.mSpringStiffness;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSpringStopThreshold() {
        return this.mSpringStopThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getTouchAnchorId() {
        return this.mTouchAnchorId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe$Side getTouchAnchorSide() {
        return this.mTouchAnchorSide;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoCompleteMode(OnSwipe$Mode onSwipe$Mode) {
        this.mAutoCompleteMode = onSwipe$Mode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setDragDirection(OnSwipe$Drag onSwipe$Drag) {
        this.mDragDirection = onSwipe$Drag;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setDragScale(int i9) {
        this.mDragScale = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setDragThreshold(int i9) {
        this.mDragThreshold = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setLimitBoundsTo(String str) {
        this.mLimitBoundsTo = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setMaxAcceleration(int i9) {
        this.mMaxAcceleration = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setMaxVelocity(int i9) {
        this.mMaxVelocity = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setOnTouchUp(OnSwipe$TouchUp onSwipe$TouchUp) {
        this.mOnTouchUp = onSwipe$TouchUp;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setRotateCenter(String str) {
        this.mRotationCenterId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setSpringBoundary(OnSwipe$Boundary onSwipe$Boundary) {
        this.mSpringBoundary = onSwipe$Boundary;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setSpringDamping(float f8) {
        this.mSpringDamping = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setSpringMass(float f8) {
        this.mSpringMass = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setSpringStiffness(float f8) {
        this.mSpringStiffness = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setSpringStopThreshold(float f8) {
        this.mSpringStopThreshold = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setTouchAnchorId(String str) {
        this.mTouchAnchorId = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnSwipe setTouchAnchorSide(OnSwipe$Side onSwipe$Side) {
        this.mTouchAnchorSide = onSwipe$Side;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("OnSwipe:{\n");
        if (this.mTouchAnchorId != null) {
            sb.append("anchor:'");
            sb.append(this.mTouchAnchorId);
            sb.append("',\n");
        }
        if (this.mDragDirection != null) {
            sb.append("direction:'");
            sb.append(this.mDragDirection.toString().toLowerCase());
            sb.append("',\n");
        }
        if (this.mTouchAnchorSide != null) {
            sb.append("side:'");
            sb.append(this.mTouchAnchorSide.toString().toLowerCase());
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mDragScale)) {
            sb.append("scale:'");
            sb.append(this.mDragScale);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mDragThreshold)) {
            sb.append("threshold:'");
            sb.append(this.mDragThreshold);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mMaxVelocity)) {
            sb.append("maxVelocity:'");
            sb.append(this.mMaxVelocity);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mMaxAcceleration)) {
            sb.append("maxAccel:'");
            sb.append(this.mMaxAcceleration);
            sb.append("',\n");
        }
        if (this.mLimitBoundsTo != null) {
            sb.append("limitBounds:'");
            sb.append(this.mLimitBoundsTo);
            sb.append("',\n");
        }
        if (this.mAutoCompleteMode != null) {
            sb.append("mode:'");
            sb.append(this.mAutoCompleteMode.toString().toLowerCase());
            sb.append("',\n");
        }
        if (this.mOnTouchUp != null) {
            sb.append("touchUp:'");
            sb.append(this.mOnTouchUp.toString().toLowerCase());
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mSpringMass)) {
            sb.append("springMass:'");
            sb.append(this.mSpringMass);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mSpringStiffness)) {
            sb.append("springStiffness:'");
            sb.append(this.mSpringStiffness);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mSpringDamping)) {
            sb.append("springDamping:'");
            sb.append(this.mSpringDamping);
            sb.append("',\n");
        }
        if (!Float.isNaN(this.mSpringStopThreshold)) {
            sb.append("stopThreshold:'");
            sb.append(this.mSpringStopThreshold);
            sb.append("',\n");
        }
        if (this.mSpringBoundary != null) {
            sb.append("springBoundary:'");
            sb.append(this.mSpringBoundary);
            sb.append("',\n");
        }
        if (this.mRotationCenterId != null) {
            sb.append("around:'");
            sb.append(this.mRotationCenterId);
            sb.append("',\n");
        }
        sb.append("},\n");
        return sb.toString();
    }

    public OnSwipe(String str, OnSwipe$Side onSwipe$Side, OnSwipe$Drag onSwipe$Drag) {
        this.mLimitBoundsTo = null;
        this.mOnTouchUp = null;
        this.mRotationCenterId = null;
        this.mMaxVelocity = Float.NaN;
        this.mMaxAcceleration = Float.NaN;
        this.mDragScale = Float.NaN;
        this.mDragThreshold = Float.NaN;
        this.mSpringDamping = Float.NaN;
        this.mSpringMass = Float.NaN;
        this.mSpringStiffness = Float.NaN;
        this.mSpringStopThreshold = Float.NaN;
        this.mSpringBoundary = null;
        this.mAutoCompleteMode = null;
        this.mTouchAnchorId = str;
        this.mTouchAnchorSide = onSwipe$Side;
        this.mDragDirection = onSwipe$Drag;
    }
}
