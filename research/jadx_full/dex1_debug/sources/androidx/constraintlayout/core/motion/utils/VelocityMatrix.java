package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VelocityMatrix {
    private static String sTag = "VelocityMatrix";
    float mDRotate;
    float mDScaleX;
    float mDScaleY;
    float mDTranslateX;
    float mDTranslateY;
    float mRotate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void applyTransform(float f8, float f9, int i9, int i10, float[] fArr) {
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = (f8 - 0.5f) * 2.0f;
        float f13 = (f9 - 0.5f) * 2.0f;
        float f14 = f10 + this.mDTranslateX;
        float f15 = f11 + this.mDTranslateY;
        float f16 = (this.mDScaleX * f12) + f14;
        float f17 = (this.mDScaleY * f13) + f15;
        float radians = (float) Math.toRadians(this.mRotate);
        float radians2 = (float) Math.toRadians(this.mDRotate);
        double d = radians;
        double d9 = i10 * f13;
        float fSin = (((float) ((Math.sin(d) * ((double) ((-i9) * f12))) - (Math.cos(d) * d9))) * radians2) + f16;
        float fCos = (radians2 * ((float) ((Math.cos(d) * ((double) (i9 * f12))) - (Math.sin(d) * d9)))) + f17;
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationVelocity(SplineSet splineSet, float f8) {
        if (splineSet != null) {
            this.mDRotate = splineSet.getSlope(f8);
            this.mRotate = splineSet.get(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f8) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.getSlope(f8);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.getSlope(f8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
