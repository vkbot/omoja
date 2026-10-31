package androidx.interpolator.view.animation;

import ai.onnxruntime.AbstractC0074a;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        if (f8 >= 1.0f) {
            return 1.0f;
        }
        if (f8 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int iMin = Math.min((int) ((fArr.length - 1) * f8), fArr.length - 2);
        float f10 = this.mStepSize;
        float f11 = (f8 - (iMin * f10)) / f10;
        float[] fArr2 = this.mValues;
        float f12 = fArr2[iMin];
        return AbstractC0074a.m151b(fArr2[iMin + 1], f12, f11, f12);
    }
}
