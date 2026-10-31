package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewSpline$CustomSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.ConstraintSet$Constraint;
import androidx.constraintlayout.widget.ConstraintSet$Motion;
import androidx.constraintlayout.widget.ConstraintSet$PropertySet;
import androidx.constraintlayout.widget.ConstraintSet$Transform;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = "MotionPaths";
    static String[] sNames = {"position", "x", "y", "width", "height", "pathRotate"};
    private float mHeight;
    private Easing mKeyFrameEasing;
    private float mPosition;
    int mVisibility;
    private float mWidth;
    private float mX;
    private float mY;
    public float rotationY = 0.0f;
    int mVisibilityMode = 0;
    LinkedHashMap<String, ConstraintAttribute> mAttributes = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];
    private float mAlpha = 1.0f;
    private boolean mApplyElevation = false;
    private float mElevation = 0.0f;
    private float mRotation = 0.0f;
    private float mRotationX = 0.0f;
    private float mScaleX = 1.0f;
    private float mScaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float mTranslationX = 0.0f;
    private float mTranslationY = 0.0f;
    private float mTranslationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    private int mAnimateRelativeTo = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean diff(float f8, float f9) {
        if (Float.isNaN(f8) || Float.isNaN(f9)) {
            return Float.isNaN(f8) != Float.isNaN(f9);
        }
        return Math.abs(f8 - f9) > 1.0E-6f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void addValues(HashMap<String, ViewSpline> map, int i9) {
        for (String str : map.keySet()) {
            ViewSpline viewSpline = map.get(str);
            if (viewSpline != null) {
                str.getClass();
                byte b9 = -1;
                switch (str.hashCode()) {
                    case -1249320806:
                        if (str.equals("rotationX")) {
                            b9 = 0;
                        }
                        break;
                    case -1249320805:
                        if (str.equals("rotationY")) {
                            b9 = 1;
                        }
                        break;
                    case -1225497657:
                        if (str.equals("translationX")) {
                            b9 = 2;
                        }
                        break;
                    case -1225497656:
                        if (str.equals("translationY")) {
                            b9 = 3;
                        }
                        break;
                    case -1225497655:
                        if (str.equals("translationZ")) {
                            b9 = 4;
                        }
                        break;
                    case -1001078227:
                        if (str.equals("progress")) {
                            b9 = 5;
                        }
                        break;
                    case -908189618:
                        if (str.equals("scaleX")) {
                            b9 = 6;
                        }
                        break;
                    case -908189617:
                        if (str.equals("scaleY")) {
                            b9 = 7;
                        }
                        break;
                    case -760884510:
                        if (str.equals(Key.PIVOT_X)) {
                            b9 = 8;
                        }
                        break;
                    case -760884509:
                        if (str.equals(Key.PIVOT_Y)) {
                            b9 = 9;
                        }
                        break;
                    case -40300674:
                        if (str.equals(Key.ROTATION)) {
                            b9 = 10;
                        }
                        break;
                    case -4379043:
                        if (str.equals("elevation")) {
                            b9 = 11;
                        }
                        break;
                    case 37232917:
                        if (str.equals("transitionPathRotate")) {
                            b9 = 12;
                        }
                        break;
                    case 92909918:
                        if (str.equals("alpha")) {
                            b9 = 13;
                        }
                        break;
                }
                switch (b9) {
                    case 0:
                        viewSpline.setPoint(i9, Float.isNaN(this.mRotationX) ? 0.0f : this.mRotationX);
                        break;
                    case 1:
                        viewSpline.setPoint(i9, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                        break;
                    case 2:
                        viewSpline.setPoint(i9, Float.isNaN(this.mTranslationX) ? 0.0f : this.mTranslationX);
                        break;
                    case 3:
                        viewSpline.setPoint(i9, Float.isNaN(this.mTranslationY) ? 0.0f : this.mTranslationY);
                        break;
                    case 4:
                        viewSpline.setPoint(i9, Float.isNaN(this.mTranslationZ) ? 0.0f : this.mTranslationZ);
                        break;
                    case 5:
                        viewSpline.setPoint(i9, Float.isNaN(this.mProgress) ? 0.0f : this.mProgress);
                        break;
                    case 6:
                        viewSpline.setPoint(i9, Float.isNaN(this.mScaleX) ? 1.0f : this.mScaleX);
                        break;
                    case 7:
                        viewSpline.setPoint(i9, Float.isNaN(this.mScaleY) ? 1.0f : this.mScaleY);
                        break;
                    case 8:
                        viewSpline.setPoint(i9, Float.isNaN(this.mPivotX) ? 0.0f : this.mPivotX);
                        break;
                    case 9:
                        viewSpline.setPoint(i9, Float.isNaN(this.mPivotY) ? 0.0f : this.mPivotY);
                        break;
                    case 10:
                        viewSpline.setPoint(i9, Float.isNaN(this.mRotation) ? 0.0f : this.mRotation);
                        break;
                    case 11:
                        viewSpline.setPoint(i9, Float.isNaN(this.mElevation) ? 0.0f : this.mElevation);
                        break;
                    case 12:
                        viewSpline.setPoint(i9, Float.isNaN(this.mPathRotate) ? 0.0f : this.mPathRotate);
                        break;
                    case 13:
                        viewSpline.setPoint(i9, Float.isNaN(this.mAlpha) ? 1.0f : this.mAlpha);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            String str2 = str.split(",")[1];
                            if (this.mAttributes.containsKey(str2)) {
                                ConstraintAttribute constraintAttribute = this.mAttributes.get(str2);
                                if (viewSpline instanceof ViewSpline$CustomSet) {
                                    ((ViewSpline$CustomSet) viewSpline).setPoint(i9, constraintAttribute);
                                } else {
                                    Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + i9 + ", value" + constraintAttribute.getValueToInterpolate() + viewSpline);
                                }
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN spline ".concat(str));
                        }
                        break;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyParameters(ConstraintSet$Constraint constraintSet$Constraint) {
        ConstraintSet$PropertySet constraintSet$PropertySet = constraintSet$Constraint.propertySet;
        int i9 = constraintSet$PropertySet.mVisibilityMode;
        this.mVisibilityMode = i9;
        int i10 = constraintSet$PropertySet.visibility;
        this.mVisibility = i10;
        this.mAlpha = (i10 == 0 || i9 != 0) ? constraintSet$PropertySet.alpha : 0.0f;
        ConstraintSet$Transform constraintSet$Transform = constraintSet$Constraint.transform;
        this.mApplyElevation = constraintSet$Transform.applyElevation;
        this.mElevation = constraintSet$Transform.elevation;
        this.mRotation = constraintSet$Transform.rotation;
        this.mRotationX = constraintSet$Transform.rotationX;
        this.rotationY = constraintSet$Transform.rotationY;
        this.mScaleX = constraintSet$Transform.scaleX;
        this.mScaleY = constraintSet$Transform.scaleY;
        this.mPivotX = constraintSet$Transform.transformPivotX;
        this.mPivotY = constraintSet$Transform.transformPivotY;
        this.mTranslationX = constraintSet$Transform.translationX;
        this.mTranslationY = constraintSet$Transform.translationY;
        this.mTranslationZ = constraintSet$Transform.translationZ;
        this.mKeyFrameEasing = Easing.getInterpolator(constraintSet$Constraint.motion.mTransitionEasing);
        ConstraintSet$Motion constraintSet$Motion = constraintSet$Constraint.motion;
        this.mPathRotate = constraintSet$Motion.mPathRotate;
        this.mDrawPath = constraintSet$Motion.mDrawPath;
        this.mAnimateRelativeTo = constraintSet$Motion.mAnimateRelativeTo;
        this.mProgress = constraintSet$Constraint.propertySet.mProgress;
        for (String str : constraintSet$Constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraintSet$Constraint.mCustomConstraints.get(str);
            if (constraintAttribute.isContinuous()) {
                this.mAttributes.put(str, constraintAttribute);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.mPosition, motionConstrainedPoint.mPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.mAlpha, motionConstrainedPoint.mAlpha)) {
            hashSet.add("alpha");
        }
        if (diff(this.mElevation, motionConstrainedPoint.mElevation)) {
            hashSet.add("elevation");
        }
        int i9 = this.mVisibility;
        int i10 = motionConstrainedPoint.mVisibility;
        if (i9 != i10 && this.mVisibilityMode == 0 && (i9 == 0 || i10 == 0)) {
            hashSet.add("alpha");
        }
        if (diff(this.mRotation, motionConstrainedPoint.mRotation)) {
            hashSet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add("progress");
        }
        if (diff(this.mRotationX, motionConstrainedPoint.mRotationX)) {
            hashSet.add("rotationX");
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add("rotationY");
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add(Key.PIVOT_X);
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(Key.PIVOT_Y);
        }
        if (diff(this.mScaleX, motionConstrainedPoint.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (diff(this.mScaleY, motionConstrainedPoint.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (diff(this.mTranslationX, motionConstrainedPoint.mTranslationX)) {
            hashSet.add("translationX");
        }
        if (diff(this.mTranslationY, motionConstrainedPoint.mTranslationY)) {
            hashSet.add("translationY");
        }
        if (diff(this.mTranslationZ, motionConstrainedPoint.mTranslationZ)) {
            hashSet.add("translationZ");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillStandard(double[] dArr, int[] iArr) {
        int i9 = 0;
        float[] fArr = {this.mPosition, this.mX, this.mY, this.mWidth, this.mHeight, this.mAlpha, this.mElevation, this.mRotation, this.mRotationX, this.rotationY, this.mScaleX, this.mScaleY, this.mPivotX, this.mPivotY, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mPathRotate};
        for (int i10 : iArr) {
            if (i10 < 18) {
                dArr[i9] = fArr[i10];
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCustomData(String str, double[] dArr, int i9) {
        ConstraintAttribute constraintAttribute = this.mAttributes.get(str);
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i9] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[iNumberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        int i10 = 0;
        while (i10 < iNumberOfInterpolatedValues) {
            dArr[i9] = fArr[i10];
            i10++;
            i9++;
        }
        return iNumberOfInterpolatedValues;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCustomDataCount(String str) {
        return this.mAttributes.get(str).numberOfInterpolatedValues();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasCustomData(String str) {
        return this.mAttributes.containsKey(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(float f8, float f9, float f10, float f11) {
        this.mX = f8;
        this.mY = f9;
        this.mWidth = f10;
        this.mHeight = f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setState(Rect rect, ConstraintSet constraintSet, int i9, int i10) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(constraintSet.getParameters(i10));
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return;
                    }
                }
            }
            float f8 = this.mRotation + 90.0f;
            this.mRotation = f8;
            if (f8 > 180.0f) {
                this.mRotation = f8 - 360.0f;
                return;
            }
            return;
        }
        this.mRotation -= 90.0f;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return compareTo2(motionConstrainedPoint);
    }

    public void setState(Rect rect, View view, int i9, float f8) {
        setBounds(rect.left, rect.top, rect.width(), rect.height());
        applyParameters(view);
        this.mPivotX = Float.NaN;
        this.mPivotY = Float.NaN;
        if (i9 == 1) {
            this.mRotation = f8 - 90.0f;
        } else {
            if (i9 != 2) {
                return;
            }
            this.mRotation = f8 + 90.0f;
        }
    }

    public void setState(View view) {
        setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }

    public void applyParameters(View view) {
        this.mVisibility = view.getVisibility();
        this.mAlpha = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.mApplyElevation = false;
        this.mElevation = view.getElevation();
        this.mRotation = view.getRotation();
        this.mRotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.mScaleX = view.getScaleX();
        this.mScaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.mTranslationX = view.getTranslationX();
        this.mTranslationY = view.getTranslationY();
        this.mTranslationZ = view.getTranslationZ();
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.mPosition, motionConstrainedPoint.mPosition);
        zArr[1] = zArr[1] | diff(this.mX, motionConstrainedPoint.mX);
        zArr[2] = zArr[2] | diff(this.mY, motionConstrainedPoint.mY);
        zArr[3] = zArr[3] | diff(this.mWidth, motionConstrainedPoint.mWidth);
        zArr[4] = diff(this.mHeight, motionConstrainedPoint.mHeight) | zArr[4];
    }
}
