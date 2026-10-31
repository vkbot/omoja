package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionUtils$MatrixEvaluator implements TypeEvaluator<Matrix> {
    final float[] mTempStartValues = new float[9];
    final float[] mTempEndValues = new float[9];
    final Matrix mTempMatrix = new Matrix();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: evaluate, reason: avoid collision after fix types in other method */
    public Matrix evaluate2(float f8, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.mTempStartValues);
        matrix2.getValues(this.mTempEndValues);
        for (int i9 = 0; i9 < 9; i9++) {
            float[] fArr = this.mTempEndValues;
            float f9 = fArr[i9];
            float f10 = this.mTempStartValues[i9];
            fArr[i9] = ai.onnxruntime.a.b(f9, f10, f8, f10);
        }
        this.mTempMatrix.setValues(this.mTempEndValues);
        return this.mTempMatrix;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [float, java.lang.Object, java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.animation.TypeEvaluator
    public /* bridge */ /* synthetic */ Matrix evaluate(float f8, Matrix matrix, Matrix matrix2) {
        return evaluate2(f8, matrix, matrix2);
    }
}
