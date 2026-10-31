package androidx.constraintlayout.core.motion;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] sNames = {"position", "x", "y", "width", "height", "pathRotate"};
    int mAnimateCircleAngleTo;
    String mAnimateRelativeTo;
    HashMap<String, CustomVariable> mCustomAttributes;
    int mDrawPath;
    float mHeight;
    public String mId;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mPosition;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float mTime;
    float mWidth;
    float mX;
    float mY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionPaths(int i9, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = null;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mCustomAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != null) {
            initPolar(i9, i10, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i11 = motionKeyPosition.mPositionType;
        if (i11 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i11 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i9, i10, motionKeyPosition, motionPaths, motionPaths2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean diff(float f8, float f9) {
        if (Float.isNaN(f8) || Float.isNaN(f9)) {
            return Float.isNaN(f8) != Float.isNaN(f9);
        }
        return Math.abs(f8 - f9) > 1.0E-6f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float xRotate(float f8, float f9, float f10, float f11, float f12, float f13) {
        return (((f12 - f10) * f9) - ((f13 - f11) * f8)) + f10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float yRotate(float f8, float f9, float f10, float f11, float f12, float f13) {
        return ((f13 - f11) * f9) + ((f12 - f10) * f8) + f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyParameters(MotionWidget motionWidget) {
        ConstraintWidget constraintWidget;
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.mMotion.mTransitionEasing);
        MotionWidget$Motion motionWidget$Motion = motionWidget.mMotion;
        this.mPathMotionArc = motionWidget$Motion.mPathMotionArc;
        this.mAnimateRelativeTo = motionWidget$Motion.mAnimateRelativeTo;
        this.mPathRotate = motionWidget$Motion.mPathRotate;
        this.mDrawPath = motionWidget$Motion.mDrawPath;
        this.mAnimateCircleAngleTo = motionWidget$Motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.mPropertySet.mProgress;
        WidgetFrame widgetFrame = motionWidget.mWidgetFrame;
        if (widgetFrame != null && (constraintWidget = widgetFrame.widget) != null) {
            this.mRelativeAngle = constraintWidget.mCircleConstraintAngle;
        }
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.mCustomAttributes.put(str, customAttribute);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(MotionPaths motionPaths) {
        return Float.compare(this.mPosition, motionPaths.mPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z8) {
        boolean zDiff = diff(this.mX, motionPaths.mX);
        boolean zDiff2 = diff(this.mY, motionPaths.mY);
        zArr[0] = zArr[0] | diff(this.mPosition, motionPaths.mPosition);
        zArr[1] = zArr[1] | (zDiff || zDiff2 || z8);
        zArr[2] = zArr[2] | (zDiff || zDiff2 || z8);
        zArr[3] = zArr[3] | diff(this.mWidth, motionPaths.mWidth);
        zArr[4] = diff(this.mHeight, motionPaths.mHeight) | zArr[4];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.mPosition, this.mX, this.mY, this.mWidth, this.mHeight, this.mPathRotate};
        int i9 = 0;
        for (int i10 : iArr) {
            if (i10 < 6) {
                dArr[i9] = fArr[i10];
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i9) {
        float f8 = this.mWidth;
        float f9 = this.mHeight;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f10 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 3) {
                f8 = f10;
            } else if (i11 == 4) {
                f9 = f10;
            }
        }
        fArr[i9] = f8;
        fArr[i9 + 1] = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f8;
        float fA = this.mX;
        float fCos = this.mY;
        float f9 = this.mWidth;
        float f10 = this.mHeight;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (int i9 = 0; i9 < iArr.length; i9++) {
            float f15 = (float) dArr[i9];
            float f16 = (float) dArr2[i9];
            int i10 = iArr[i9];
            if (i10 == 1) {
                fA = f15;
                f11 = f16;
            } else if (i10 == 2) {
                fCos = f15;
                f13 = f16;
            } else if (i10 == 3) {
                f9 = f15;
                f12 = f16;
            } else if (i10 == 4) {
                f10 = f15;
                f14 = f16;
            }
        }
        float f17 = (f12 / 2.0f) + f11;
        float fA2 = (f14 / 2.0f) + f13;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d, fArr3, fArr4);
            float f18 = fArr3[0];
            float f19 = fArr3[1];
            float f20 = fArr4[0];
            float f21 = fArr4[1];
            f8 = 2.0f;
            double d9 = fA;
            double d10 = fCos;
            fA = (float) (a.a(d10, d9, f18) - ((double) (f9 / 2.0f)));
            fCos = (float) ((((double) f19) - (Math.cos(d10) * d9)) - ((double) (f10 / 2.0f)));
            double d11 = f11;
            double dA = a.a(d10, d11, f20);
            double d12 = f13;
            float fCos2 = (float) ((Math.cos(d10) * d12) + dA);
            fA2 = (float) a.a(d10, d12, ((double) f21) - (Math.cos(d10) * d11));
            f17 = fCos2;
        } else {
            f8 = 2.0f;
        }
        fArr[0] = (f9 / f8) + fA + 0.0f;
        fArr[1] = (f10 / f8) + fCos + 0.0f;
        fArr2[0] = f17;
        fArr2[1] = fA2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getCenterVelocity(double d, int[] iArr, double[] dArr, float[] fArr, int i9) {
        float fA = this.mX;
        float fCos = this.mY;
        float f8 = this.mWidth;
        float f9 = this.mHeight;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f10 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                fA = f10;
            } else if (i11 == 2) {
                fCos = f10;
            } else if (i11 == 3) {
                f8 = f10;
            } else if (i11 == 4) {
                f9 = f10;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f11 = fArr2[0];
            float f12 = fArr2[1];
            double d9 = fA;
            double d10 = fCos;
            fA = (float) (a.a(d10, d9, f11) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) f12) - (Math.cos(d10) * d9)) - ((double) (f9 / 2.0f)));
        }
        fArr[i9] = (f8 / 2.0f) + fA + 0.0f;
        fArr[i9 + 1] = (f9 / 2.0f) + fCos + 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCustomData(String str, double[] dArr, int i9) {
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        int i10 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i9] = customVariable.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[iNumberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i10 < iNumberOfInterpolatedValues) {
            dArr[i9] = fArr[i10];
            i10++;
            i9++;
        }
        return iNumberOfInterpolatedValues;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i9) {
        float fA = this.mX;
        float fCos = this.mY;
        float f8 = this.mWidth;
        float f9 = this.mHeight;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f10 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                fA = f10;
            } else if (i11 == 2) {
                fCos = f10;
            } else if (i11 == 3) {
                f8 = f10;
            } else if (i11 == 4) {
                f9 = f10;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.mRelativeToController.getCenterY();
            double d = fA;
            double d9 = fCos;
            fA = (float) (a.a(d9, d, centerX) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) centerY) - (Math.cos(d9) * d)) - ((double) (f9 / 2.0f)));
        }
        float f11 = f8 + fA;
        float f12 = f9 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i9] = fA + 0.0f;
        fArr[i9 + 1] = fCos + 0.0f;
        fArr[i9 + 2] = f11 + 0.0f;
        fArr[i9 + 3] = fCos + 0.0f;
        fArr[i9 + 4] = f11 + 0.0f;
        fArr[i9 + 5] = f12 + 0.0f;
        fArr[i9 + 6] = fA + 0.0f;
        fArr[i9 + 7] = f12 + 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasCustomData(String str) {
        return this.mCustomAttributes.containsKey(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f9 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f10 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f11 = motionPaths2.mWidth;
        float f12 = motionPaths.mWidth;
        float f13 = f11 - f12;
        float f14 = motionPaths2.mHeight;
        float f15 = motionPaths.mHeight;
        float f16 = f14 - f15;
        this.mPosition = this.mTime;
        float f17 = motionPaths.mX;
        float f18 = motionPaths.mY;
        float f19 = f8;
        float f20 = ((f11 / 2.0f) + motionPaths2.mX) - ((f12 / 2.0f) + f17);
        float f21 = ((f14 / 2.0f) + motionPaths2.mY) - ((f15 / 2.0f) + f18);
        float f22 = f13 * f9;
        float f23 = f22 / 2.0f;
        this.mX = (int) (((f20 * f19) + f17) - f23);
        float f24 = f16 * f10;
        float f25 = f24 / 2.0f;
        this.mY = (int) (((f21 * f19) + f18) - f25);
        this.mWidth = (int) (f12 + f22);
        this.mHeight = (int) (f15 + f24);
        float f26 = Float.isNaN(motionKeyPosition.mPercentX) ? f19 : motionKeyPosition.mPercentX;
        float f27 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f19 = motionKeyPosition.mPercentY;
        }
        float f28 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.mX = (int) (((f28 * f21) + ((f26 * f20) + motionPaths.mX)) - f23);
        this.mY = (int) (((f21 * f19) + ((f20 * f27) + motionPaths.mY)) - f25);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f9 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f10 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f11 = motionPaths2.mWidth - motionPaths.mWidth;
        float f12 = motionPaths2.mHeight - motionPaths.mHeight;
        this.mPosition = this.mTime;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f8 = motionKeyPosition.mPercentX;
        }
        float f13 = motionPaths.mX;
        float f14 = motionPaths.mWidth;
        float f15 = motionPaths.mY;
        float f16 = motionPaths.mHeight;
        float f17 = f8;
        float f18 = ((motionPaths2.mWidth / 2.0f) + motionPaths2.mX) - ((f14 / 2.0f) + f13);
        float f19 = ((motionPaths2.mHeight / 2.0f) + motionPaths2.mY) - ((f16 / 2.0f) + f15);
        float f20 = f18 * f17;
        float f21 = f11 * f9;
        float f22 = f21 / 2.0f;
        this.mX = (int) ((f13 + f20) - f22);
        float f23 = f19 * f17;
        float f24 = f12 * f10;
        float f25 = f24 / 2.0f;
        this.mY = (int) ((f15 + f23) - f25);
        this.mWidth = (int) (f14 + f21);
        this.mHeight = (int) (f16 + f24);
        float f26 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f27 = (int) ((motionPaths.mX + f20) - f22);
        float f28 = (int) ((motionPaths.mY + f23) - f25);
        this.mX = f27 + ((-f19) * f26);
        this.mY = f28 + (f18 * f26);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initPolar(int i9, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float fB;
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f9 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f10 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f11 = motionPaths2.mWidth;
        float f12 = motionPaths.mWidth;
        float f13 = motionPaths2.mHeight;
        float f14 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        this.mWidth = (int) (((f11 - f12) * f9) + f12);
        this.mHeight = (int) (((f13 - f14) * f10) + f14);
        int i11 = motionKeyPosition.mPositionType;
        if (i11 != 1) {
            float f15 = motionKeyPosition.mPercentX;
            if (i11 != 2) {
                float f16 = Float.isNaN(f15) ? f8 : motionKeyPosition.mPercentX;
                float f17 = motionPaths2.mX;
                float f18 = motionPaths.mX;
                this.mX = a.b(f17, f18, f16, f18);
                if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                    f8 = motionKeyPosition.mPercentY;
                }
                float f19 = motionPaths2.mY;
                float f20 = motionPaths.mY;
                this.mY = a.b(f19, f20, f8, f20);
            } else {
                if (Float.isNaN(f15)) {
                    float f21 = motionPaths2.mX;
                    float f22 = motionPaths.mX;
                    fMin = a.b(f21, f22, f8, f22);
                } else {
                    fMin = Math.min(f10, f9) * motionKeyPosition.mPercentX;
                }
                this.mX = fMin;
                if (Float.isNaN(motionKeyPosition.mPercentY)) {
                    float f23 = motionPaths2.mY;
                    float f24 = motionPaths.mY;
                    fB = a.b(f23, f24, f8, f24);
                } else {
                    fB = motionKeyPosition.mPercentY;
                }
                this.mY = fB;
            }
        } else {
            float f25 = Float.isNaN(motionKeyPosition.mPercentX) ? f8 : motionKeyPosition.mPercentX;
            float f26 = motionPaths2.mX;
            float f27 = motionPaths.mX;
            this.mX = a.b(f26, f27, f25, f27);
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f8 = motionKeyPosition.mPercentY;
            }
            float f28 = motionPaths2.mY;
            float f29 = motionPaths.mY;
            this.mY = a.b(f28, f29, f8, f29);
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initScreen(int i9, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f9 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f10 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f11 = motionPaths2.mWidth;
        float f12 = motionPaths.mWidth;
        float f13 = f11 - f12;
        float f14 = motionPaths2.mHeight;
        float f15 = motionPaths.mHeight;
        float f16 = f14 - f15;
        this.mPosition = this.mTime;
        float f17 = motionPaths.mX;
        float f18 = motionPaths.mY;
        float f19 = (f11 / 2.0f) + motionPaths2.mX;
        float f20 = (f14 / 2.0f) + motionPaths2.mY;
        float f21 = f13 * f9;
        this.mX = (int) ((((f19 - ((f12 / 2.0f) + f17)) * f8) + f17) - (f21 / 2.0f));
        float f22 = f16 * f10;
        this.mY = (int) ((((f20 - ((f15 / 2.0f) + f18)) * f8) + f18) - (f22 / 2.0f));
        this.mWidth = (int) (f12 + f21);
        this.mHeight = (int) (f15 + f22);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.mX = (int) (motionKeyPosition.mPercentX * (i9 - ((int) this.mWidth)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.mY = (int) (motionKeyPosition.mPercentY * (i10 - ((int) this.mHeight)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBounds(float f8, float f9, float f10, float f11) {
        this.mX = f8;
        this.mY = f9;
        this.mWidth = f10;
        this.mHeight = f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDpDt(float f8, float f9, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        for (int i9 = 0; i9 < iArr.length; i9++) {
            float f14 = (float) dArr[i9];
            int i10 = iArr[i9];
            if (i10 == 1) {
                f10 = f14;
            } else if (i10 == 2) {
                f12 = f14;
            } else if (i10 == 3) {
                f11 = f14;
            } else if (i10 == 4) {
                f13 = f14;
            }
        }
        float f15 = f10 - ((0.0f * f11) / 2.0f);
        float f16 = f12 - ((0.0f * f13) / 2.0f);
        fArr[0] = (((f11 * 1.0f) + f15) * f8) + ((1.0f - f8) * f15) + 0.0f;
        fArr[1] = (((f13 * 1.0f) + f16) * f9) + ((1.0f - f9) * f16) + 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setView(float f8, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f9;
        float f10 = this.mX;
        float f11 = this.mY;
        float f12 = this.mWidth;
        float f13 = this.mHeight;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i9 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i9];
            this.mTempDelta = new double[i9];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            double[] dArr4 = this.mTempValue;
            int i11 = iArr[i10];
            dArr4[i11] = dArr[i10];
            this.mTempDelta[i11] = dArr2[i10];
        }
        float f14 = Float.NaN;
        int i12 = 0;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (i12 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i12]) && (dArr3 == null || dArr3[i12] == 0.0d)) {
                f9 = f14;
            } else {
                double d = dArr3 != null ? dArr3[i12] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i12])) {
                    d = this.mTempValue[i12] + d;
                }
                f9 = f14;
                float f19 = (float) d;
                float f20 = (float) this.mTempDelta[i12];
                if (i12 == 1) {
                    f14 = f9;
                    f15 = f20;
                    f10 = f19;
                } else if (i12 == 2) {
                    f14 = f9;
                    f16 = f20;
                    f11 = f19;
                } else if (i12 == 3) {
                    f14 = f9;
                    f17 = f20;
                    f12 = f19;
                } else if (i12 == 4) {
                    f14 = f9;
                    f18 = f20;
                    f13 = f19;
                } else if (i12 == 5) {
                    f14 = f19;
                }
                i12++;
            }
            f14 = f9;
            i12++;
        }
        float f21 = f14;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f8, fArr, fArr2);
            float f22 = fArr[0];
            float f23 = fArr[1];
            float f24 = fArr2[0];
            float f25 = fArr2[1];
            double d9 = f22;
            double d10 = f10;
            double d11 = f11;
            float fA = (float) (a.a(d11, d10, d9) - ((double) (f12 / 2.0f)));
            float fCos = (float) ((((double) f23) - (Math.cos(d11) * d10)) - ((double) (f13 / 2.0f)));
            double d12 = f24;
            double d13 = f15;
            double d14 = f16;
            float fCos2 = (float) ((Math.cos(d11) * d10 * d14) + a.a(d11, d13, d12));
            float fSin = (float) ((Math.sin(d11) * d10 * d14) + (((double) f25) - (Math.cos(d11) * d13)));
            if (dArr2.length >= 2) {
                dArr2[0] = fCos2;
                dArr2[1] = fSin;
            }
            if (!Float.isNaN(f21)) {
                motionWidget.setRotationZ((float) (Math.toDegrees(Math.atan2(fSin, fCos2)) + ((double) f21)));
            }
            f10 = fA;
            f11 = fCos;
        } else if (!Float.isNaN(f21)) {
            motionWidget.setRotationZ(((float) (Math.toDegrees(Math.atan2((f18 / 2.0f) + f16, (f17 / 2.0f) + f15)) + ((double) f21))) + 0.0f);
        }
        float f26 = f10 + 0.5f;
        float f27 = f11 + 0.5f;
        motionWidget.layout((int) f26, (int) f27, (int) (f26 + f12), (int) (f27 + f13));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d = (((this.mWidth / 2.0f) + this.mX) - motionPaths.mX) - (motionPaths.mWidth / 2.0f);
        double d9 = (((this.mHeight / 2.0f) + this.mY) - motionPaths.mY) - (motionPaths.mHeight / 2.0f);
        this.mRelativeToController = motion;
        this.mX = (float) Math.hypot(d9, d);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.mY = (float) (Math.atan2(d9, d) + 1.5707963267948966d);
        } else {
            this.mY = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(MotionPaths motionPaths) {
        return compareTo2(motionPaths);
    }

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = null;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.mCustomAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, int i9) {
        float fA = this.mX;
        float fCos = this.mY;
        float f8 = this.mWidth;
        float f9 = this.mHeight;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f10 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                fA = f10;
            } else if (i11 == 2) {
                fCos = f10;
            } else if (i11 == 3) {
                f8 = f10;
            } else if (i11 == 4) {
                f9 = f10;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f11 = fArr2[0];
            float f12 = fArr2[1];
            double d9 = fA;
            double d10 = fCos;
            fA = (float) (a.a(d10, d9, f11) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) f12) - (Math.cos(d10) * d9)) - ((double) (f9 / 2.0f)));
        }
        fArr[i9] = (f8 / 2.0f) + fA + 0.0f;
        fArr[i9 + 1] = (f9 / 2.0f) + fCos + 0.0f;
    }
}
