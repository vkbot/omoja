package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class VelocityMatrix {
    private static String sTag = "VelocityMatrix";
    float mDRotate;
    float mDScaleX;
    float mDScaleY;
    float mDTranslateX;
    float mDTranslateY;
    float mRotate;

    public void applyTransform(float f8, float f10, int i10, int i11, float[] fArr) {
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = (f8 - 0.5f) * 2.0f;
        float f14 = (f10 - 0.5f) * 2.0f;
        float f15 = f11 + this.mDTranslateX;
        float f16 = f12 + this.mDTranslateY;
        float f17 = (this.mDScaleX * f13) + f15;
        float f18 = (this.mDScaleY * f14) + f16;
        float radians = (float) Math.toRadians(this.mRotate);
        float radians2 = (float) Math.toRadians(this.mDRotate);
        double d = radians;
        double d10 = i11 * f14;
        float fSin = (((float) ((Math.sin(d) * ((double) ((-i10) * f13))) - (Math.cos(d) * d10))) * radians2) + f17;
        float fCos = (radians2 * ((float) ((Math.cos(d) * ((double) (i10 * f13))) - (Math.sin(d) * d10)))) + f18;
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void clear() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f8) {
        if (splineSet != null) {
            this.mDRotate = splineSet.getSlope(f8);
            this.mRotate = splineSet.get(f8);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f8) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.getSlope(f8);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.getSlope(f8);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f8) {
        if (splineSet != null) {
            this.mDTranslateX = splineSet.getSlope(f8);
        }
        if (splineSet2 != null) {
            this.mDTranslateY = splineSet2.getSlope(f8);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f8) {
        if (keyCycleOscillator != null) {
            this.mDRotate = keyCycleOscillator.getSlope(f8);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f8) {
        if (keyCycleOscillator != null) {
            this.mDScaleX = keyCycleOscillator.getSlope(f8);
        }
        if (keyCycleOscillator2 != null) {
            this.mDScaleY = keyCycleOscillator2.getSlope(f8);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f8) {
        if (keyCycleOscillator != null) {
            this.mDTranslateX = keyCycleOscillator.getSlope(f8);
        }
        if (keyCycleOscillator2 != null) {
            this.mDTranslateY = keyCycleOscillator2.getSlope(f8);
        }
    }
}
