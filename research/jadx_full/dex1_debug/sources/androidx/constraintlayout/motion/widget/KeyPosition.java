package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    private static final String TAG = "KeyPosition";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_AXIS = 3;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    String mTransitionEasing = null;
    int mPathMotionArc = Key.UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyPosition() {
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
    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
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
    @Override // androidx.constraintlayout.motion.widget.Key
    public Key clone() {
        return new KeyPosition().copy(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key key) {
        super.copy(key);
        KeyPosition keyPosition = (KeyPosition) key;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public float getPositionX() {
        return this.mCalculatedPositionX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public float getPositionY() {
        return this.mCalculatedPositionY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public boolean intersects(int i9, int i10, RectF rectF, RectF rectF2, float f8, float f9) {
        calcPosition(i9, i10, rectF.centerX(), rectF.centerY(), rectF2.centerX(), rectF2.centerY());
        return Math.abs(f8 - this.mCalculatedPositionX) < 20.0f && Math.abs(f9 - this.mCalculatedPositionY) < 20.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        KeyPosition$Loader.access$000(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyPosition));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.KeyPositionBase
    public void positionAttributes(View view, RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr) {
        int i9 = this.mPositionType;
        if (i9 == 1) {
            positionPathAttributes(rectF, rectF2, f8, f9, strArr, fArr);
            return;
        }
        if (i9 == 2) {
            positionScreenAttributes(view, rectF, rectF2, f8, f9, strArr, fArr);
        } else if (i9 != 3) {
            positionCartAttributes(rectF, rectF2, f8, f9, strArr, fArr);
        } else {
            positionAxisAttributes(rectF, rectF2, f8, f9, strArr, fArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionAxisAttributes(RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX();
        float fCenterY2 = rectF2.centerY();
        if (fCenterX > fCenterX2) {
            fCenterX2 = fCenterX;
            fCenterX = fCenterX2;
        }
        if (fCenterY <= fCenterY2) {
            fCenterY2 = fCenterY;
            fCenterY = fCenterY2;
        }
        float f10 = fCenterX2 - fCenterX;
        float f11 = fCenterY - fCenterY2;
        String str = strArr[0];
        if (str == null) {
            strArr[0] = "percentX";
            fArr[0] = (f8 - fCenterX) / f10;
            strArr[1] = "percentY";
            fArr[1] = (f9 - fCenterY2) / f11;
            return;
        }
        if ("percentX".equals(str)) {
            fArr[0] = (f8 - fCenterX) / f10;
            fArr[1] = (f9 - fCenterY2) / f11;
        } else {
            fArr[1] = (f8 - fCenterX) / f10;
            fArr[0] = (f9 - fCenterY2) / f11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void positionCartAttributes(RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
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
    public void positionPathAttributes(RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX() - fCenterX;
        float fCenterY2 = rectF2.centerY() - fCenterY;
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
    public void positionScreenAttributes(View view, RectF rectF, RectF rectF2, float f8, float f9, String[] strArr, float[] fArr) {
        rectF.centerX();
        rectF.centerY();
        rectF2.centerX();
        rectF2.centerY();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int width = viewGroup.getWidth();
        int height = viewGroup.getHeight();
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
    public void setType(int i9) {
        this.mPositionType = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "transitionEasing":
                this.mTransitionEasing = obj.toString();
                break;
            case "percentWidth":
                this.mPercentWidth = toFloat(obj);
                break;
            case "percentHeight":
                this.mPercentHeight = toFloat(obj);
                break;
            case "drawPath":
                this.mDrawPath = toInt(obj);
                break;
            case "sizePercent":
                float f8 = toFloat(obj);
                this.mPercentWidth = f8;
                this.mPercentHeight = f8;
                break;
            case "percentX":
                this.mPercentX = toFloat(obj);
                break;
            case "percentY":
                this.mPercentY = toFloat(obj);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public /* bridge */ /* synthetic */ Object mo29clone() {
        return clone();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> map) {
    }
}
