package androidx.transition;

import android.animation.TypeEvaluator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: evaluate, reason: avoid collision after fix types in other method */
    public float[] evaluate2(float f8, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i9 = 0; i9 < fArr3.length; i9++) {
            float f9 = fArr[i9];
            fArr3[i9] = ai.onnxruntime.a.b(fArr2[i9], f9, f8, f9);
        }
        return fArr3;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.animation.TypeEvaluator
    public /* bridge */ /* synthetic */ float[] evaluate(float f8, float[] fArr, float[] fArr2) {
        return evaluate2(f8, fArr, fArr2);
    }
}
