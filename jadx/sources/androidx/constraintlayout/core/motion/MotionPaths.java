package androidx.constraintlayout.core.motion;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
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

    /* JADX INFO: renamed from: mX */
    float f291mX;

    /* JADX INFO: renamed from: mY */
    float f292mY;

    public MotionPaths(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
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
            initPolar(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i12 = motionKeyPosition.mPositionType;
        if (i12 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i12 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
        }
    }

    private boolean diff(float f8, float f10) {
        if (Float.isNaN(f8) || Float.isNaN(f10)) {
            return Float.isNaN(f8) != Float.isNaN(f10);
        }
        return Math.abs(f8 - f10) > 1.0E-6f;
    }

    private static float xRotate(float f8, float f10, float f11, float f12, float f13, float f14) {
        return (((f13 - f11) * f10) - ((f14 - f12) * f8)) + f11;
    }

    private static float yRotate(float f8, float f10, float f11, float f12, float f13, float f14) {
        return ((f14 - f12) * f10) + ((f13 - f11) * f8) + f12;
    }

    public void applyParameters(MotionWidget motionWidget) {
        ConstraintWidget constraintWidget;
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.mMotion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.mMotion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
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

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.mPosition, motionPaths.mPosition);
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z9) {
        boolean zDiff = diff(this.f291mX, motionPaths.f291mX);
        boolean zDiff2 = diff(this.f292mY, motionPaths.f292mY);
        zArr[0] = zArr[0] | diff(this.mPosition, motionPaths.mPosition);
        zArr[1] = zArr[1] | (zDiff || zDiff2 || z9);
        zArr[2] = zArr[2] | (zDiff || zDiff2 || z9);
        zArr[3] = zArr[3] | diff(this.mWidth, motionPaths.mWidth);
        zArr[4] = diff(this.mHeight, motionPaths.mHeight) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.mPosition, this.f291mX, this.f292mY, this.mWidth, this.mHeight, this.mPathRotate};
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 < 6) {
                dArr[i10] = fArr[i11];
                i10++;
            }
        }
    }

    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f8 = this.mWidth;
        float f10 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f11 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 3) {
                f8 = f11;
            } else if (i12 == 4) {
                f10 = f11;
            }
        }
        fArr[i10] = f8;
        fArr[i10 + 1] = f10;
    }

    public void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f8;
        float fM150a = this.f291mX;
        float fCos = this.f292mY;
        float f10 = this.mWidth;
        float f11 = this.mHeight;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f16 = (float) dArr[i10];
            float f17 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                fM150a = f16;
                f12 = f17;
            } else if (i11 == 2) {
                fCos = f16;
                f14 = f17;
            } else if (i11 == 3) {
                f10 = f16;
                f13 = f17;
            } else if (i11 == 4) {
                f11 = f16;
                f15 = f17;
            }
        }
        float f18 = (f13 / 2.0f) + f12;
        float fM150a2 = (f15 / 2.0f) + f14;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d, fArr3, fArr4);
            float f19 = fArr3[0];
            float f20 = fArr3[1];
            float f21 = fArr4[0];
            float f22 = fArr4[1];
            f8 = 2.0f;
            double d10 = fM150a;
            double d11 = fCos;
            fM150a = (float) (AbstractC0074a.m150a(d11, d10, f19) - ((double) (f10 / 2.0f)));
            fCos = (float) ((((double) f20) - (Math.cos(d11) * d10)) - ((double) (f11 / 2.0f)));
            double d12 = f12;
            double dM150a = AbstractC0074a.m150a(d11, d12, f21);
            double d13 = f14;
            float fCos2 = (float) ((Math.cos(d11) * d13) + dM150a);
            fM150a2 = (float) AbstractC0074a.m150a(d11, d13, ((double) f22) - (Math.cos(d11) * d12));
            f18 = fCos2;
        } else {
            f8 = 2.0f;
        }
        fArr[0] = (f10 / f8) + fM150a + 0.0f;
        fArr[1] = (f11 / f8) + fCos + 0.0f;
        fArr2[0] = f18;
        fArr2[1] = fM150a2;
    }

    public void getCenterVelocity(double d, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float fM150a = this.f291mX;
        float fCos = this.f292mY;
        float f8 = this.mWidth;
        float f10 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f11 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                fM150a = f11;
            } else if (i12 == 2) {
                fCos = f11;
            } else if (i12 == 3) {
                f8 = f11;
            } else if (i12 == 4) {
                f10 = f11;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f12 = fArr2[0];
            float f13 = fArr2[1];
            double d10 = fM150a;
            double d11 = fCos;
            fM150a = (float) (AbstractC0074a.m150a(d11, d10, f12) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) f13) - (Math.cos(d11) * d10)) - ((double) (f10 / 2.0f)));
        }
        fArr[i10] = (f8 / 2.0f) + fM150a + 0.0f;
        fArr[i10 + 1] = (f10 / 2.0f) + fCos + 0.0f;
    }

    public int getCustomData(String str, double[] dArr, int i10) {
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        int i11 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i10] = customVariable.getValueToInterpolate();
            return 1;
        }
        int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[iNumberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i11 < iNumberOfInterpolatedValues) {
            dArr[i10] = fArr[i11];
            i11++;
            i10++;
        }
        return iNumberOfInterpolatedValues;
    }

    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.mCustomAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float fM150a = this.f291mX;
        float fCos = this.f292mY;
        float f8 = this.mWidth;
        float f10 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f11 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                fM150a = f11;
            } else if (i12 == 2) {
                fCos = f11;
            } else if (i12 == 3) {
                f8 = f11;
            } else if (i12 == 4) {
                f10 = f11;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            float centerY = this.mRelativeToController.getCenterY();
            double d = fM150a;
            double d10 = fCos;
            fM150a = (float) (AbstractC0074a.m150a(d10, d, centerX) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) centerY) - (Math.cos(d10) * d)) - ((double) (f10 / 2.0f)));
        }
        float f12 = f8 + fM150a;
        float f13 = f10 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i10] = fM150a + 0.0f;
        fArr[i10 + 1] = fCos + 0.0f;
        fArr[i10 + 2] = f12 + 0.0f;
        fArr[i10 + 3] = fCos + 0.0f;
        fArr[i10 + 4] = f12 + 0.0f;
        fArr[i10 + 5] = f13 + 0.0f;
        fArr[i10 + 6] = fM150a + 0.0f;
        fArr[i10 + 7] = f13 + 0.0f;
    }

    public boolean hasCustomData(String str) {
        return this.mCustomAttributes.containsKey(str);
    }

    public void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.mWidth;
        float f13 = motionPaths.mWidth;
        float f14 = f12 - f13;
        float f15 = motionPaths2.mHeight;
        float f16 = motionPaths.mHeight;
        float f17 = f15 - f16;
        this.mPosition = this.mTime;
        float f18 = motionPaths.f291mX;
        float f19 = motionPaths.f292mY;
        float f20 = f8;
        float f21 = ((f12 / 2.0f) + motionPaths2.f291mX) - ((f13 / 2.0f) + f18);
        float f22 = ((f15 / 2.0f) + motionPaths2.f292mY) - ((f16 / 2.0f) + f19);
        float f23 = f14 * f10;
        float f24 = f23 / 2.0f;
        this.f291mX = (int) (((f21 * f20) + f18) - f24);
        float f25 = f17 * f11;
        float f26 = f25 / 2.0f;
        this.f292mY = (int) (((f22 * f20) + f19) - f26);
        this.mWidth = (int) (f13 + f23);
        this.mHeight = (int) (f16 + f25);
        float f27 = Float.isNaN(motionKeyPosition.mPercentX) ? f20 : motionKeyPosition.mPercentX;
        float f28 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f20 = motionKeyPosition.mPercentY;
        }
        float f29 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.f291mX = (int) (((f29 * f22) + ((f27 * f21) + motionPaths.f291mX)) - f24);
        this.f292mY = (int) (((f22 * f20) + ((f21 * f28) + motionPaths.f292mY)) - f26);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.mWidth - motionPaths.mWidth;
        float f13 = motionPaths2.mHeight - motionPaths.mHeight;
        this.mPosition = this.mTime;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f8 = motionKeyPosition.mPercentX;
        }
        float f14 = motionPaths.f291mX;
        float f15 = motionPaths.mWidth;
        float f16 = motionPaths.f292mY;
        float f17 = motionPaths.mHeight;
        float f18 = f8;
        float f19 = ((motionPaths2.mWidth / 2.0f) + motionPaths2.f291mX) - ((f15 / 2.0f) + f14);
        float f20 = ((motionPaths2.mHeight / 2.0f) + motionPaths2.f292mY) - ((f17 / 2.0f) + f16);
        float f21 = f19 * f18;
        float f22 = f12 * f10;
        float f23 = f22 / 2.0f;
        this.f291mX = (int) ((f14 + f21) - f23);
        float f24 = f20 * f18;
        float f25 = f13 * f11;
        float f26 = f25 / 2.0f;
        this.f292mY = (int) ((f16 + f24) - f26);
        this.mWidth = (int) (f15 + f22);
        this.mHeight = (int) (f17 + f25);
        float f27 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f28 = (int) ((motionPaths.f291mX + f21) - f23);
        float f29 = (int) ((motionPaths.f292mY + f24) - f26);
        this.f291mX = f28 + ((-f20) * f27);
        this.f292mY = f29 + (f19 * f27);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initPolar(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float fM151b;
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.mWidth;
        float f13 = motionPaths.mWidth;
        float f14 = motionPaths2.mHeight;
        float f15 = motionPaths.mHeight;
        this.mPosition = this.mTime;
        this.mWidth = (int) (((f12 - f13) * f10) + f13);
        this.mHeight = (int) (((f14 - f15) * f11) + f15);
        int i12 = motionKeyPosition.mPositionType;
        if (i12 != 1) {
            float f16 = motionKeyPosition.mPercentX;
            if (i12 != 2) {
                float f17 = Float.isNaN(f16) ? f8 : motionKeyPosition.mPercentX;
                float f18 = motionPaths2.f291mX;
                float f19 = motionPaths.f291mX;
                this.f291mX = AbstractC0074a.m151b(f18, f19, f17, f19);
                if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                    f8 = motionKeyPosition.mPercentY;
                }
                float f20 = motionPaths2.f292mY;
                float f21 = motionPaths.f292mY;
                this.f292mY = AbstractC0074a.m151b(f20, f21, f8, f21);
            } else {
                if (Float.isNaN(f16)) {
                    float f22 = motionPaths2.f291mX;
                    float f23 = motionPaths.f291mX;
                    fMin = AbstractC0074a.m151b(f22, f23, f8, f23);
                } else {
                    fMin = Math.min(f11, f10) * motionKeyPosition.mPercentX;
                }
                this.f291mX = fMin;
                if (Float.isNaN(motionKeyPosition.mPercentY)) {
                    float f24 = motionPaths2.f292mY;
                    float f25 = motionPaths.f292mY;
                    fM151b = AbstractC0074a.m151b(f24, f25, f8, f25);
                } else {
                    fM151b = motionKeyPosition.mPercentY;
                }
                this.f292mY = fM151b;
            }
        } else {
            float f26 = Float.isNaN(motionKeyPosition.mPercentX) ? f8 : motionKeyPosition.mPercentX;
            float f27 = motionPaths2.f291mX;
            float f28 = motionPaths.f291mX;
            this.f291mX = AbstractC0074a.m151b(f27, f28, f26, f28);
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f8 = motionKeyPosition.mPercentY;
            }
            float f29 = motionPaths2.f292mY;
            float f30 = motionPaths.f292mY;
            this.f292mY = AbstractC0074a.m151b(f29, f30, f8, f30);
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void initScreen(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f8 = motionKeyPosition.mFramePosition / 100.0f;
        this.mTime = f8;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f10 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f8 : motionKeyPosition.mPercentWidth;
        float f11 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f8 : motionKeyPosition.mPercentHeight;
        float f12 = motionPaths2.mWidth;
        float f13 = motionPaths.mWidth;
        float f14 = f12 - f13;
        float f15 = motionPaths2.mHeight;
        float f16 = motionPaths.mHeight;
        float f17 = f15 - f16;
        this.mPosition = this.mTime;
        float f18 = motionPaths.f291mX;
        float f19 = motionPaths.f292mY;
        float f20 = (f12 / 2.0f) + motionPaths2.f291mX;
        float f21 = (f15 / 2.0f) + motionPaths2.f292mY;
        float f22 = f14 * f10;
        this.f291mX = (int) ((((f20 - ((f13 / 2.0f) + f18)) * f8) + f18) - (f22 / 2.0f));
        float f23 = f17 * f11;
        this.f292mY = (int) ((((f21 - ((f16 / 2.0f) + f19)) * f8) + f19) - (f23 / 2.0f));
        this.mWidth = (int) (f13 + f22);
        this.mHeight = (int) (f16 + f23);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f291mX = (int) (motionKeyPosition.mPercentX * (i10 - ((int) this.mWidth)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f292mY = (int) (motionKeyPosition.mPercentY * (i11 - ((int) this.mHeight)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public void setBounds(float f8, float f10, float f11, float f12) {
        this.f291mX = f8;
        this.f292mY = f10;
        this.mWidth = f11;
        this.mHeight = f12;
    }

    public void setDpDt(float f8, float f10, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f15 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f11 = f15;
            } else if (i11 == 2) {
                f13 = f15;
            } else if (i11 == 3) {
                f12 = f15;
            } else if (i11 == 4) {
                f14 = f15;
            }
        }
        float f16 = f11 - ((0.0f * f12) / 2.0f);
        float f17 = f13 - ((0.0f * f14) / 2.0f);
        fArr[0] = (((f12 * 1.0f) + f16) * f8) + ((1.0f - f8) * f16) + 0.0f;
        fArr[1] = (((f14 * 1.0f) + f17) * f10) + ((1.0f - f10) * f17) + 0.0f;
    }

    public void setView(float f8, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f10;
        float f11 = this.f291mX;
        float f12 = this.f292mY;
        float f13 = this.mWidth;
        float f14 = this.mHeight;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i10];
            this.mTempDelta = new double[i10];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            double[] dArr4 = this.mTempValue;
            int i12 = iArr[i11];
            dArr4[i12] = dArr[i11];
            this.mTempDelta[i12] = dArr2[i11];
        }
        float f15 = Float.NaN;
        int i13 = 0;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        while (true) {
            double[] dArr5 = this.mTempValue;
            if (i13 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i13]) && (dArr3 == null || dArr3[i13] == 0.0d)) {
                f10 = f15;
            } else {
                double d = dArr3 != null ? dArr3[i13] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i13])) {
                    d = this.mTempValue[i13] + d;
                }
                f10 = f15;
                float f20 = (float) d;
                float f21 = (float) this.mTempDelta[i13];
                if (i13 == 1) {
                    f15 = f10;
                    f16 = f21;
                    f11 = f20;
                } else if (i13 == 2) {
                    f15 = f10;
                    f17 = f21;
                    f12 = f20;
                } else if (i13 == 3) {
                    f15 = f10;
                    f18 = f21;
                    f13 = f20;
                } else if (i13 == 4) {
                    f15 = f10;
                    f19 = f21;
                    f14 = f20;
                } else if (i13 == 5) {
                    f15 = f20;
                }
                i13++;
            }
            f15 = f10;
            i13++;
        }
        float f22 = f15;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f8, fArr, fArr2);
            float f23 = fArr[0];
            float f24 = fArr[1];
            float f25 = fArr2[0];
            float f26 = fArr2[1];
            double d10 = f23;
            double d11 = f11;
            double d12 = f12;
            float fM150a = (float) (AbstractC0074a.m150a(d12, d11, d10) - ((double) (f13 / 2.0f)));
            float fCos = (float) ((((double) f24) - (Math.cos(d12) * d11)) - ((double) (f14 / 2.0f)));
            double d13 = f25;
            double d14 = f16;
            double d15 = f17;
            float fCos2 = (float) ((Math.cos(d12) * d11 * d15) + AbstractC0074a.m150a(d12, d14, d13));
            float fSin = (float) ((Math.sin(d12) * d11 * d15) + (((double) f26) - (Math.cos(d12) * d14)));
            if (dArr2.length >= 2) {
                dArr2[0] = fCos2;
                dArr2[1] = fSin;
            }
            if (!Float.isNaN(f22)) {
                motionWidget.setRotationZ((float) (Math.toDegrees(Math.atan2(fSin, fCos2)) + ((double) f22)));
            }
            f11 = fM150a;
            f12 = fCos;
        } else if (!Float.isNaN(f22)) {
            motionWidget.setRotationZ(((float) (Math.toDegrees(Math.atan2((f19 / 2.0f) + f17, (f18 / 2.0f) + f16)) + ((double) f22))) + 0.0f);
        }
        float f27 = f11 + 0.5f;
        float f28 = f12 + 0.5f;
        motionWidget.layout((int) f27, (int) f28, (int) (f27 + f13), (int) (f28 + f14));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d = (((this.mWidth / 2.0f) + this.f291mX) - motionPaths.f291mX) - (motionPaths.mWidth / 2.0f);
        double d10 = (((this.mHeight / 2.0f) + this.f292mY) - motionPaths.f292mY) - (motionPaths.mHeight / 2.0f);
        this.mRelativeToController = motion;
        this.f291mX = (float) Math.hypot(d10, d);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f292mY = (float) (Math.atan2(d10, d) + 1.5707963267948966d);
        } else {
            this.f292mY = (float) Math.toRadians(this.mRelativeAngle);
        }
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

    public void getCenter(double d, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float fM150a = this.f291mX;
        float fCos = this.f292mY;
        float f8 = this.mWidth;
        float f10 = this.mHeight;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f11 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                fM150a = f11;
            } else if (i12 == 2) {
                fCos = f11;
            } else if (i12 == 3) {
                f8 = f11;
            } else if (i12 == 4) {
                f10 = f11;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d, fArr2, new float[2]);
            float f12 = fArr2[0];
            float f13 = fArr2[1];
            double d10 = fM150a;
            double d11 = fCos;
            fM150a = (float) (AbstractC0074a.m150a(d11, d10, f12) - ((double) (f8 / 2.0f)));
            fCos = (float) ((((double) f13) - (Math.cos(d11) * d10)) - ((double) (f10 / 2.0f)));
        }
        fArr[i10] = (f8 / 2.0f) + fM150a + 0.0f;
        fArr[i10 + 1] = (f10 / 2.0f) + fCos + 0.0f;
    }
}
