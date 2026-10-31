package p182r3;

import ai.onnxruntime.AbstractC0074a;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: renamed from: r3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3098e implements TypeEvaluator {

    /* JADX INFO: renamed from: a */
    public final float[] f8820a = new float[9];

    /* JADX INFO: renamed from: b */
    public final float[] f8821b = new float[9];

    /* JADX INFO: renamed from: c */
    public final Matrix f8822c = new Matrix();

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C3101h f8823d;

    public C3098e(C3101h c3101h) {
        this.f8823d = c3101h;
    }

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f8, Object obj, Object obj2) {
        this.f8823d.f8851p = f8;
        float[] fArr = this.f8820a;
        ((Matrix) obj).getValues(fArr);
        float[] fArr2 = this.f8821b;
        ((Matrix) obj2).getValues(fArr2);
        for (int i10 = 0; i10 < 9; i10++) {
            float f10 = fArr2[i10];
            float f11 = fArr[i10];
            fArr2[i10] = AbstractC0074a.m151b(f10, f11, f8, f11);
        }
        Matrix matrix = this.f8822c;
        matrix.setValues(fArr2);
        return matrix;
    }
}
