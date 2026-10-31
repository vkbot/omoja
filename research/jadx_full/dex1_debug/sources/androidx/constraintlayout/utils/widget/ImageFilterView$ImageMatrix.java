package androidx.constraintlayout.utils.widget;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ImageFilterView$ImageMatrix {
    float[] mMatrix = new float[20];
    ColorMatrix mColorMatrix = new ColorMatrix();
    ColorMatrix mTmpColorMatrix = new ColorMatrix();
    float mBrightness = 1.0f;
    float mSaturation = 1.0f;
    float mContrast = 1.0f;
    float mWarmth = 1.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void brightness(float f8) {
        float[] fArr = this.mMatrix;
        fArr[0] = f8;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = f8;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = f8;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void saturation(float f8) {
        float f9 = 1.0f - f8;
        float f10 = 0.2999f * f9;
        float f11 = 0.587f * f9;
        float f12 = f9 * 0.114f;
        float[] fArr = this.mMatrix;
        fArr[0] = f10 + f8;
        fArr[1] = f11;
        fArr[2] = f12;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = f10;
        fArr[6] = f11 + f8;
        fArr[7] = f12;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = f10;
        fArr[11] = f11;
        fArr[12] = f12 + f8;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void warmth(float f8) {
        float fLog;
        float fPow;
        float fLog2;
        if (f8 <= 0.0f) {
            f8 = 0.01f;
        }
        float f9 = (5000.0f / f8) / 100.0f;
        if (f9 > 66.0f) {
            double d = f9 - 60.0f;
            fPow = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
            fLog = ((float) Math.pow(d, 0.07551485300064087d)) * 288.12216f;
        } else {
            fLog = (((float) Math.log(f9)) * 99.4708f) - 161.11957f;
            fPow = 255.0f;
        }
        if (f9 < 66.0f) {
            fLog2 = f9 > 19.0f ? (((float) Math.log(f9 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f;
        } else {
            fLog2 = 255.0f;
        }
        float fMin = Math.min(255.0f, Math.max(fPow, 0.0f));
        float fMin2 = Math.min(255.0f, Math.max(fLog, 0.0f));
        float fMin3 = Math.min(255.0f, Math.max(fLog2, 0.0f));
        float fLog3 = (((float) Math.log(50.0f)) * 99.4708f) - 161.11957f;
        float fLog4 = (((float) Math.log(40.0f)) * 138.51773f) - 305.0448f;
        float fMin4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
        float fMin5 = Math.min(255.0f, Math.max(fLog3, 0.0f));
        float fMin6 = fMin3 / Math.min(255.0f, Math.max(fLog4, 0.0f));
        float[] fArr = this.mMatrix;
        fArr[0] = fMin / fMin4;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = fMin2 / fMin5;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = fMin6;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateMatrix(ImageView imageView) {
        boolean z8;
        this.mColorMatrix.reset();
        float f8 = this.mSaturation;
        boolean z9 = true;
        if (f8 != 1.0f) {
            saturation(f8);
            this.mColorMatrix.set(this.mMatrix);
            z8 = true;
        } else {
            z8 = false;
        }
        float f9 = this.mContrast;
        if (f9 != 1.0f) {
            this.mTmpColorMatrix.setScale(f9, f9, f9, 1.0f);
            this.mColorMatrix.postConcat(this.mTmpColorMatrix);
            z8 = true;
        }
        float f10 = this.mWarmth;
        if (f10 != 1.0f) {
            warmth(f10);
            this.mTmpColorMatrix.set(this.mMatrix);
            this.mColorMatrix.postConcat(this.mTmpColorMatrix);
            z8 = true;
        }
        float f11 = this.mBrightness;
        if (f11 != 1.0f) {
            brightness(f11);
            this.mTmpColorMatrix.set(this.mMatrix);
            this.mColorMatrix.postConcat(this.mTmpColorMatrix);
        } else {
            z9 = z8;
        }
        if (z9) {
            imageView.setColorFilter(new ColorMatrixColorFilter(this.mColorMatrix));
        } else {
            imageView.clearColorFilter();
        }
    }
}
