package androidx.constraintlayout.core.dsl;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class KeyAttribute extends Keys {
    private int mFrame;
    private String mTarget;
    private String mTransitionEasing;
    protected String TYPE = TypedValues.AttributesType.NAME;
    private Fit mCurveFit = null;
    private Visibility mVisibility = null;
    private float mAlpha = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum Fit {
        SPLINE,
        LINEAR
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum Visibility {
        VISIBLE,
        INVISIBLE,
        GONE
    }

    public KeyAttribute(int i10, String str) {
        this.mTarget = str;
        this.mFrame = i10;
    }

    public void attributesToString(StringBuilder sb) {
        append(sb, TypedValues.AttributesType.S_TARGET, this.mTarget);
        sb.append("frame:");
        sb.append(this.mFrame);
        sb.append(",\n");
        append(sb, "easing", this.mTransitionEasing);
        if (this.mCurveFit != null) {
            sb.append("fit:'");
            sb.append(this.mCurveFit);
            sb.append("',\n");
        }
        if (this.mVisibility != null) {
            sb.append("visibility:'");
            sb.append(this.mVisibility);
            sb.append("',\n");
        }
        append(sb, "alpha", this.mAlpha);
        append(sb, "rotationX", this.mRotationX);
        append(sb, "rotationY", this.mRotationY);
        append(sb, "rotationZ", this.mRotation);
        append(sb, "pivotX", this.mPivotX);
        append(sb, "pivotY", this.mPivotY);
        append(sb, "pathRotate", this.mTransitionPathRotate);
        append(sb, "scaleX", this.mScaleX);
        append(sb, "scaleY", this.mScaleY);
        append(sb, "translationX", this.mTranslationX);
        append(sb, "translationY", this.mTranslationY);
        append(sb, "translationZ", this.mTranslationZ);
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public Fit getCurveFit() {
        return this.mCurveFit;
    }

    public float getPivotX() {
        return this.mPivotX;
    }

    public float getPivotY() {
        return this.mPivotY;
    }

    public float getRotation() {
        return this.mRotation;
    }

    public float getRotationX() {
        return this.mRotationX;
    }

    public float getRotationY() {
        return this.mRotationY;
    }

    public float getScaleX() {
        return this.mScaleX;
    }

    public float getScaleY() {
        return this.mScaleY;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public float getTransitionPathRotate() {
        return this.mTransitionPathRotate;
    }

    public float getTranslationX() {
        return this.mTranslationX;
    }

    public float getTranslationY() {
        return this.mTranslationY;
    }

    public float getTranslationZ() {
        return this.mTranslationZ;
    }

    public Visibility getVisibility() {
        return this.mVisibility;
    }

    public void setAlpha(float f8) {
        this.mAlpha = f8;
    }

    public void setCurveFit(Fit fit) {
        this.mCurveFit = fit;
    }

    public void setPivotX(float f8) {
        this.mPivotX = f8;
    }

    public void setPivotY(float f8) {
        this.mPivotY = f8;
    }

    public void setRotation(float f8) {
        this.mRotation = f8;
    }

    public void setRotationX(float f8) {
        this.mRotationX = f8;
    }

    public void setRotationY(float f8) {
        this.mRotationY = f8;
    }

    public void setScaleX(float f8) {
        this.mScaleX = f8;
    }

    public void setScaleY(float f8) {
        this.mScaleY = f8;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public void setTransitionPathRotate(float f8) {
        this.mTransitionPathRotate = f8;
    }

    public void setTranslationX(float f8) {
        this.mTranslationX = f8;
    }

    public void setTranslationY(float f8) {
        this.mTranslationY = f8;
    }

    public void setTranslationZ(float f8) {
        this.mTranslationZ = f8;
    }

    public void setVisibility(Visibility visibility) {
        this.mVisibility = visibility;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.TYPE);
        sb.append(":{\n");
        attributesToString(sb);
        sb.append("},\n");
        return sb.toString();
    }
}
