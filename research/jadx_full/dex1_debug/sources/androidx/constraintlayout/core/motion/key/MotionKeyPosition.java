package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionKeyPosition extends MotionKey {
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    protected static final float SELECTION_SLOPE = 20.0f;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public float mAltPercentX;
    public float mAltPercentY;
    private float mCalculatedPositionX;
    private float mCalculatedPositionY;
    public int mCurveFit;
    public int mDrawPath;
    public int mPathMotionArc;
    public float mPercentHeight;
    public float mPercentWidth;
    public float mPercentX;
    public float mPercentY;
    public int mPositionType;
    public String mTransitionEasing;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionKeyPosition() {
        int i9 = MotionKey.UNSET;
        this.mCurveFit = i9;
        this.mTransitionEasing = null;
        this.mPathMotionArc = i9;
        this.mDrawPath = 0;
        this.mPercentWidth = Float.NaN;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = Float.NaN;
        this.mPercentY = Float.NaN;
        this.mAltPercentX = Float.NaN;
        this.mAltPercentY = Float.NaN;
        this.mPositionType = 0;
        this.mCalculatedPositionX = Float.NaN;
        this.mCalculatedPositionY = Float.NaN;
        this.mType = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void calcCartesianPosition(float f8, float f9, float f10, float f11) {
        float f12 = f10 - f8;
        float f13 = f11 - f9;
        float f14 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f15 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f16 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.mCalculatedPositionX = (int) (((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f13) + (f14 * f12) + f8);
        this.mCalculatedPositionY = (int) ((f13 * f16) + (f12 * f15) + f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void calcPathPosition(float f8, float f9, float f10, float f11) {
        float f12 = f10 - f8;
        float f13 = f11 - f9;
        float f14 = this.mPercentX;
        float f15 = (f12 * f14) + f8;
        float f16 = this.mPercentY;
        this.mCalculatedPositionX = ((-f13) * f16) + f15;
        this.mCalculatedPositionY = (f12 * f16) + (f13 * f14) + f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void calcScreenPosition(int i9, int i10) {
        float f8 = this.mPercentX;
        float f9 = 0;
        this.mCalculatedPositionX = (i9 * f8) + f9;
        this.mCalculatedPositionY = (i10 * f8) + f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calcPosition(int i9, int i10, float f8, float f9, float f10, float f11) {
        int i11 = this.mPositionType;
        if (i11 == 1) {
            calcPathPosition(f8, f9, f10, f11);
        } else if (i11 != 2) {
            calcCartesianPosition(f8, f9, f10, f11);
        } else {
            calcScreenPosition(i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey clone() {
        return new MotionKeyPosition().copy(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
        this.mTransitionEasing = motionKeyPosition.mTransitionEasing;
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mPercentWidth = motionKeyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = motionKeyPosition.mPercentX;
        this.mPercentY = motionKeyPosition.mPercentY;
        this.mAltPercentX = motionKeyPosition.mAltPercentX;
        this.mAltPercentY = motionKeyPosition.mAltPercentY;
        this.mCalculatedPositionX = motionKeyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = motionKeyPosition.mCalculatedPositionY;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues$PositionType.getId(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPositionX() {
        return this.mCalculatedPositionX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPositionY() {
        return this.mCalculatedPositionY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean intersects(int i9, int i10, FloatRect floatRect, FloatRect floatRect2, float f8, float f9) {
        calcPosition(i9, i10, floatRect.centerX(), floatRect.centerY(), floatRect2.centerX(), floatRect2.centerY());
        return Math.abs(f8 - this.mCalculatedPositionX) < SELECTION_SLOPE && Math.abs(f9 - this.mCalculatedPositionY) < SELECTION_SLOPE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f8, float f9, String[] strArr, float[] fArr) {
        int i9 = this.mPositionType;
        if (i9 == 1) {
            positionPathAttributes(floatRect, floatRect2, f8, f9, strArr, fArr);
        } else if (i9 != 2) {
            positionCartAttributes(floatRect, floatRect2, f8, f9, strArr, fArr);
        } else {
            positionScreenAttributes(motionWidget, floatRect, floatRect2, f8, f9, strArr, fArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionCartAttributes(FloatRect floatRect, FloatRect floatRect2, float f8, float f9, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        String str = strArr[0];
        if (str == null) {
            strArr[0] = "percentX";
            fArr[0] = (f8 - fCenterX) / fCenterX2;
            strArr[1] = "percentY";
            fArr[1] = (f9 - fCenterY) / fCenterY2;
            return;
        }
        if ("percentX".equals(str)) {
            fArr[0] = (f8 - fCenterX) / fCenterX2;
            fArr[1] = (f9 - fCenterY) / fCenterY2;
        } else {
            fArr[1] = (f8 - fCenterX) / fCenterX2;
            fArr[0] = (f9 - fCenterY) / fCenterY2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionPathAttributes(FloatRect floatRect, FloatRect floatRect2, float f8, float f9, String[] strArr, float[] fArr) {
        float fCenterX = floatRect.centerX();
        float fCenterY = floatRect.centerY();
        float fCenterX2 = floatRect2.centerX() - fCenterX;
        float fCenterY2 = floatRect2.centerY() - fCenterY;
        float fHypot = (float) Math.hypot(fCenterX2, fCenterY2);
        if (fHypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f10 = fCenterX2 / fHypot;
        float f11 = fCenterY2 / fHypot;
        float f12 = f9 - fCenterY;
        float f13 = f8 - fCenterX;
        float f14 = ((f10 * f12) - (f13 * f11)) / fHypot;
        float f15 = ((f11 * f12) + (f10 * f13)) / fHypot;
        String str = strArr[0];
        if (str != null) {
            if ("percentX".equals(str)) {
                fArr[0] = f15;
                fArr[1] = f14;
                return;
            }
            return;
        }
        strArr[0] = "percentX";
        strArr[1] = "percentY";
        fArr[0] = f15;
        fArr[1] = f14;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionScreenAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f8, float f9, String[] strArr, float[] fArr) {
        floatRect.centerX();
        floatRect.centerY();
        floatRect2.centerX();
        floatRect2.centerY();
        MotionWidget parent = motionWidget.getParent();
        int width = parent.getWidth();
        int height = parent.getHeight();
        String str = strArr[0];
        if (str == null) {
            strArr[0] = "percentX";
            fArr[0] = f8 / width;
            strArr[1] = "percentY";
            fArr[1] = f9 / height;
            return;
        }
        if ("percentX".equals(str)) {
            fArr[0] = f8 / width;
            fArr[1] = f9 / height;
        } else {
            fArr[1] = f8 / width;
            fArr[0] = f9 / height;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, float f8) {
        switch (i9) {
            case TypedValues$PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                this.mPercentWidth = f8;
                return true;
            case TypedValues$PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                this.mPercentHeight = f8;
                return true;
            case TypedValues$PositionType.TYPE_SIZE_PERCENT /* 505 */:
                this.mPercentWidth = f8;
                this.mPercentHeight = f8;
                return true;
            case TypedValues$PositionType.TYPE_PERCENT_X /* 506 */:
                this.mPercentX = f8;
                return true;
            case TypedValues$PositionType.TYPE_PERCENT_Y /* 507 */:
                this.mPercentY = f8;
                return true;
            default:
                return super.setValue(i9, f8);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo27clone() {
        return clone();
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> map) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, int i10) {
        if (i9 == 100) {
            this.mFramePosition = i10;
            return true;
        }
        if (i9 == 508) {
            this.mCurveFit = i10;
            return true;
        }
        if (i9 != 510) {
            return super.setValue(i9, i10);
        }
        this.mPositionType = i10;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, String str) {
        if (i9 != 501) {
            return super.setValue(i9, str);
        }
        this.mTransitionEasing = str.toString();
        return true;
    }
}
