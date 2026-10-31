package r3;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f4959a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f4960b = new float[9];
    public final Matrix c = new Matrix();
    public final /* synthetic */ h d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(h hVar) {
        this.d = hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f8, Object obj, Object obj2) {
        this.d.f4976p = f8;
        float[] fArr = this.f4959a;
        ((Matrix) obj).getValues(fArr);
        float[] fArr2 = this.f4960b;
        ((Matrix) obj2).getValues(fArr2);
        for (int i9 = 0; i9 < 9; i9++) {
            float f9 = fArr2[i9];
            float f10 = fArr[i9];
            fArr2[i9] = ai.onnxruntime.a.b(f9, f10, f8, f10);
        }
        Matrix matrix = this.c;
        matrix.setValues(fArr2);
        return matrix;
    }
}
