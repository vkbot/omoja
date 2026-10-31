package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import j1.i;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArcMotion(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "maximumAngle", 2, DEFAULT_MAX_ANGLE_DEGREES));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float toTangent(float f8) {
        if (f8 >= 0.0f && f8 <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f8 / 2.0f));
        }
        i.k("Arc must be between 0 and 90 degrees");
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f8, float f9, float f10, float f11) {
        float fB;
        float fB2;
        float f12;
        Path path = new Path();
        path.moveTo(f8, f9);
        float f13 = f10 - f8;
        float f14 = f11 - f9;
        float f15 = (f14 * f14) + (f13 * f13);
        float f16 = (f8 + f10) / 2.0f;
        float f17 = (f9 + f11) / 2.0f;
        float f18 = 0.25f * f15;
        boolean z8 = f9 > f11;
        if (Math.abs(f13) < Math.abs(f14)) {
            float fAbs = Math.abs(f15 / (f14 * 2.0f));
            if (z8) {
                fB2 = fAbs + f11;
                fB = f10;
            } else {
                fB2 = fAbs + f9;
                fB = f8;
            }
            f12 = this.mMinimumVerticalTangent;
        } else {
            float f19 = f15 / (f13 * 2.0f);
            if (z8) {
                fB2 = f9;
                fB = f19 + f8;
            } else {
                fB = f10 - f19;
                fB2 = f11;
            }
            f12 = this.mMinimumHorizontalTangent;
        }
        float f20 = f18 * f12 * f12;
        float f21 = f16 - fB;
        float f22 = f17 - fB2;
        float f23 = (f22 * f22) + (f21 * f21);
        float f24 = this.mMaximumTangent;
        float f25 = f18 * f24 * f24;
        if (f23 >= f20) {
            f20 = f23 > f25 ? f25 : 0.0f;
        }
        if (f20 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f20 / f23);
            fB = ai.onnxruntime.a.b(fB, f16, fSqrt, f16);
            fB2 = ai.onnxruntime.a.b(fB2, f17, fSqrt, f17);
        }
        path.cubicTo((f8 + fB) / 2.0f, (f9 + fB2) / 2.0f, (fB + f10) / 2.0f, (fB2 + f11) / 2.0f, f10, f11);
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaximumAngle(float f8) {
        this.mMaximumAngle = f8;
        this.mMaximumTangent = toTangent(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinimumHorizontalAngle(float f8) {
        this.mMinimumHorizontalAngle = f8;
        this.mMinimumHorizontalTangent = toTangent(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMinimumVerticalAngle(float f8) {
        this.mMinimumVerticalAngle = f8;
        this.mMinimumVerticalTangent = toTangent(f8);
    }

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }
}
