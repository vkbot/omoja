package androidx.transition;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeTransform$Transforms {
    final float mRotationX;
    final float mRotationY;
    final float mRotationZ;
    final float mScaleX;
    final float mScaleY;
    final float mTranslationX;
    final float mTranslationY;
    final float mTranslationZ;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeTransform$Transforms(View view) {
        this.mTranslationX = view.getTranslationX();
        this.mTranslationY = view.getTranslationY();
        this.mTranslationZ = ViewCompat.getTranslationZ(view);
        this.mScaleX = view.getScaleX();
        this.mScaleY = view.getScaleY();
        this.mRotationX = view.getRotationX();
        this.mRotationY = view.getRotationY();
        this.mRotationZ = view.getRotation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (!(obj instanceof ChangeTransform$Transforms)) {
            return false;
        }
        ChangeTransform$Transforms changeTransform$Transforms = (ChangeTransform$Transforms) obj;
        return changeTransform$Transforms.mTranslationX == this.mTranslationX && changeTransform$Transforms.mTranslationY == this.mTranslationY && changeTransform$Transforms.mTranslationZ == this.mTranslationZ && changeTransform$Transforms.mScaleX == this.mScaleX && changeTransform$Transforms.mScaleY == this.mScaleY && changeTransform$Transforms.mRotationX == this.mRotationX && changeTransform$Transforms.mRotationY == this.mRotationY && changeTransform$Transforms.mRotationZ == this.mRotationZ;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        float f8 = this.mTranslationX;
        int iFloatToIntBits = (f8 != 0.0f ? Float.floatToIntBits(f8) : 0) * 31;
        float f9 = this.mTranslationY;
        int iFloatToIntBits2 = (iFloatToIntBits + (f9 != 0.0f ? Float.floatToIntBits(f9) : 0)) * 31;
        float f10 = this.mTranslationZ;
        int iFloatToIntBits3 = (iFloatToIntBits2 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
        float f11 = this.mScaleX;
        int iFloatToIntBits4 = (iFloatToIntBits3 + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31;
        float f12 = this.mScaleY;
        int iFloatToIntBits5 = (iFloatToIntBits4 + (f12 != 0.0f ? Float.floatToIntBits(f12) : 0)) * 31;
        float f13 = this.mRotationX;
        int iFloatToIntBits6 = (iFloatToIntBits5 + (f13 != 0.0f ? Float.floatToIntBits(f13) : 0)) * 31;
        float f14 = this.mRotationY;
        int iFloatToIntBits7 = (iFloatToIntBits6 + (f14 != 0.0f ? Float.floatToIntBits(f14) : 0)) * 31;
        float f15 = this.mRotationZ;
        return iFloatToIntBits7 + (f15 != 0.0f ? Float.floatToIntBits(f15) : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void restore(View view) {
        ChangeTransform.setTransforms(view, this.mTranslationX, this.mTranslationY, this.mTranslationZ, this.mScaleX, this.mScaleY, this.mRotationX, this.mRotationY, this.mRotationZ);
    }
}
