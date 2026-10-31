package androidx.transition;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeTransform$PathAnimatorMatrix {
    private final Matrix mMatrix = new Matrix();
    private float mTranslationX;
    private float mTranslationY;
    private final float[] mValues;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeTransform$PathAnimatorMatrix(View view, float[] fArr) {
        this.mView = view;
        float[] fArr2 = (float[]) fArr.clone();
        this.mValues = fArr2;
        this.mTranslationX = fArr2[2];
        this.mTranslationY = fArr2[5];
        setAnimationMatrix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setAnimationMatrix() {
        float[] fArr = this.mValues;
        fArr[2] = this.mTranslationX;
        fArr[5] = this.mTranslationY;
        this.mMatrix.setValues(fArr);
        ViewUtils.setAnimationMatrix(this.mView, this.mMatrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Matrix getMatrix() {
        return this.mMatrix;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTranslation(PointF pointF) {
        this.mTranslationX = pointF.x;
        this.mTranslationY = pointF.y;
        setAnimationMatrix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValues(float[] fArr) {
        System.arraycopy(fArr, 0, this.mValues, 0, fArr.length);
        setAnimationMatrix();
    }
}
