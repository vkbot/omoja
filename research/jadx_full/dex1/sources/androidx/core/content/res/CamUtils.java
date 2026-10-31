package androidx.core.content.res;

import ai.onnxruntime.a;
import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class CamUtils {
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};
    static final float[][] SRGB_TO_XYZ = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CamUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int intFromLStar(float f8) {
        if (f8 < 1.0f) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (f8 > 99.0f) {
            return -1;
        }
        float f9 = (f8 + 16.0f) / 116.0f;
        float f10 = f8 > 8.0f ? f9 * f9 * f9 : f8 / 903.2963f;
        float f11 = f9 * f9 * f9;
        boolean z8 = f11 > 0.008856452f;
        float f12 = z8 ? f11 : ((f9 * 116.0f) - 16.0f) / 903.2963f;
        if (!z8) {
            f11 = ((f9 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = WHITE_POINT_D65;
        return ColorUtils.XYZToColor(f12 * fArr[0], f10 * fArr[1], f11 * fArr[2]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float lStarFromInt(int i9) {
        return lStarFromY(yFromInt(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float lStarFromY(float f8) {
        float f9 = f8 / 100.0f;
        return f9 <= 0.008856452f ? f9 * 903.2963f : (((float) Math.cbrt(f9)) * 116.0f) - 16.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float lerp(float f8, float f9, float f10) {
        return a.b(f9, f8, f10, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float linearized(int i9) {
        float f8 = i9 / 255.0f;
        return (f8 <= 0.04045f ? f8 / 12.92f : (float) Math.pow((f8 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void xyzFromInt(int i9, @NonNull float[] fArr) {
        float fLinearized = linearized(Color.red(i9));
        float fLinearized2 = linearized(Color.green(i9));
        float fLinearized3 = linearized(Color.blue(i9));
        float[][] fArr2 = SRGB_TO_XYZ;
        float[] fArr3 = fArr2[0];
        fArr[0] = (fArr3[2] * fLinearized3) + (fArr3[1] * fLinearized2) + (fArr3[0] * fLinearized);
        float[] fArr4 = fArr2[1];
        fArr[1] = (fArr4[2] * fLinearized3) + (fArr4[1] * fLinearized2) + (fArr4[0] * fLinearized);
        float[] fArr5 = fArr2[2];
        fArr[2] = (fLinearized3 * fArr5[2]) + (fLinearized2 * fArr5[1]) + (fLinearized * fArr5[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float yFromInt(int i9) {
        float fLinearized = linearized(Color.red(i9));
        float fLinearized2 = linearized(Color.green(i9));
        float fLinearized3 = linearized(Color.blue(i9));
        float[] fArr = SRGB_TO_XYZ[1];
        return (fLinearized3 * fArr[2]) + (fLinearized2 * fArr[1]) + (fLinearized * fArr[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float yFromLStar(float f8) {
        return (f8 > 8.0f ? (float) Math.pow((((double) f8) + 16.0d) / 116.0d, 3.0d) : f8 / 903.2963f) * 100.0f;
    }
}
