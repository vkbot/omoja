package androidx.transition;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
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

    private static float toTangent(float f8) {
        if (f8 >= 0.0f && f8 <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f8 / 2.0f));
        }
        C1929i.m3029k("Arc must be between 0 and 90 degrees");
        return 0.0f;
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    @Override // androidx.transition.PathMotion
    @NonNull
    public Path getPath(float f8, float f10, float f11, float f12) {
        float fM151b;
        float fM151b2;
        float f13;
        Path path = new Path();
        path.moveTo(f8, f10);
        float f14 = f11 - f8;
        float f15 = f12 - f10;
        float f16 = (f15 * f15) + (f14 * f14);
        float f17 = (f8 + f11) / 2.0f;
        float f18 = (f10 + f12) / 2.0f;
        float f19 = 0.25f * f16;
        boolean z9 = f10 > f12;
        if (Math.abs(f14) < Math.abs(f15)) {
            float fAbs = Math.abs(f16 / (f15 * 2.0f));
            if (z9) {
                fM151b2 = fAbs + f12;
                fM151b = f11;
            } else {
                fM151b2 = fAbs + f10;
                fM151b = f8;
            }
            f13 = this.mMinimumVerticalTangent;
        } else {
            float f20 = f16 / (f14 * 2.0f);
            if (z9) {
                fM151b2 = f10;
                fM151b = f20 + f8;
            } else {
                fM151b = f11 - f20;
                fM151b2 = f12;
            }
            f13 = this.mMinimumHorizontalTangent;
        }
        float f21 = f19 * f13 * f13;
        float f22 = f17 - fM151b;
        float f23 = f18 - fM151b2;
        float f24 = (f23 * f23) + (f22 * f22);
        float f25 = this.mMaximumTangent;
        float f26 = f19 * f25 * f25;
        if (f24 >= f21) {
            f21 = f24 > f26 ? f26 : 0.0f;
        }
        if (f21 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f21 / f24);
            fM151b = AbstractC0074a.m151b(fM151b, f17, fSqrt, f17);
            fM151b2 = AbstractC0074a.m151b(fM151b2, f18, fSqrt, f18);
        }
        path.cubicTo((f8 + fM151b) / 2.0f, (f10 + fM151b2) / 2.0f, (fM151b + f11) / 2.0f, (fM151b2 + f12) / 2.0f, f11, f12);
        return path;
    }

    public void setMaximumAngle(float f8) {
        this.mMaximumAngle = f8;
        this.mMaximumTangent = toTangent(f8);
    }

    public void setMinimumHorizontalAngle(float f8) {
        this.mMinimumHorizontalAngle = f8;
        this.mMinimumHorizontalTangent = toTangent(f8);
    }

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
