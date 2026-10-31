package androidx.core.graphics;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ScatterMapKt;
import androidx.core.content.res.CamColor;
import androidx.core.view.ViewCompat;
import androidx.navigation.b;
import j1.i;
import kotlin.ULong;
import kotlin.jvm.internal.DoubleCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ColorUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int HSLToColor(@NonNull float[] fArr) {
        int iRound;
        int iRound2;
        int iRound3;
        float f8 = fArr[0];
        float f9 = fArr[1];
        float f10 = fArr[2];
        float fAbs = (1.0f - Math.abs((f10 * 2.0f) - 1.0f)) * f9;
        float f11 = f10 - (0.5f * fAbs);
        float fAbs2 = (1.0f - Math.abs(((f8 / 60.0f) % 2.0f) - 1.0f)) * fAbs;
        switch (((int) f8) / 60) {
            case 0:
                iRound = Math.round((fAbs + f11) * 255.0f);
                iRound2 = Math.round((fAbs2 + f11) * 255.0f);
                iRound3 = Math.round(f11 * 255.0f);
                break;
            case 1:
                iRound = Math.round((fAbs2 + f11) * 255.0f);
                iRound2 = Math.round((fAbs + f11) * 255.0f);
                iRound3 = Math.round(f11 * 255.0f);
                break;
            case 2:
                iRound = Math.round(f11 * 255.0f);
                iRound2 = Math.round((fAbs + f11) * 255.0f);
                iRound3 = Math.round((fAbs2 + f11) * 255.0f);
                break;
            case 3:
                iRound = Math.round(f11 * 255.0f);
                iRound2 = Math.round((fAbs2 + f11) * 255.0f);
                iRound3 = Math.round((fAbs + f11) * 255.0f);
                break;
            case 4:
                iRound = Math.round((fAbs2 + f11) * 255.0f);
                iRound2 = Math.round(f11 * 255.0f);
                iRound3 = Math.round((fAbs + f11) * 255.0f);
                break;
            case 5:
            case 6:
                iRound = Math.round((fAbs + f11) * 255.0f);
                iRound2 = Math.round(f11 * 255.0f);
                iRound3 = Math.round((fAbs2 + f11) * 255.0f);
                break;
            default:
                iRound3 = 0;
                iRound = 0;
                iRound2 = 0;
                break;
        }
        return Color.rgb(constrain(iRound, 0, 255), constrain(iRound2, 0, 255), constrain(iRound3, 0, 255));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int LABToColor(@FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Y) double d, @FloatRange(from = -128.0d, to = 127.0d) double d9, @FloatRange(from = -128.0d, to = 127.0d) double d10) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d, d9, d10, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void LABToXYZ(@FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Y) double d, @FloatRange(from = -128.0d, to = 127.0d) double d9, @FloatRange(from = -128.0d, to = 127.0d) double d10, @NonNull double[] dArr) {
        double d11 = (d + 16.0d) / 116.0d;
        double d12 = (d9 / 500.0d) + d11;
        double d13 = d11 - (d10 / 200.0d);
        double dPow = Math.pow(d12, 3.0d);
        if (dPow <= XYZ_EPSILON) {
            dPow = ((d12 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        double dPow2 = d > 7.9996247999999985d ? Math.pow(d11, 3.0d) : d / XYZ_KAPPA;
        double dPow3 = Math.pow(d13, 3.0d);
        if (dPow3 <= XYZ_EPSILON) {
            dPow3 = ((d13 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = dPow * XYZ_WHITE_REFERENCE_X;
        dArr[1] = dPow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = dPow3 * XYZ_WHITE_REFERENCE_Z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int M3HCTToColor(@FloatRange(from = 0.0d, to = 360.0d, toInclusive = false) float f8, @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false) float f9, @FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Y) float f10) {
        return CamColor.toColor(f8, f9, f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void RGBToHSL(@IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i9, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i10, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i11, @NonNull float[] fArr) {
        float f8;
        float fAbs;
        float f9 = i9 / 255.0f;
        float f10 = i10 / 255.0f;
        float f11 = i11 / 255.0f;
        float fMax = Math.max(f9, Math.max(f10, f11));
        float fMin = Math.min(f9, Math.min(f10, f11));
        float f12 = fMax - fMin;
        float f13 = (fMax + fMin) / 2.0f;
        if (fMax == fMin) {
            f8 = 0.0f;
            fAbs = 0.0f;
        } else {
            if (fMax == f9) {
                f8 = ((f10 - f11) / f12) % 6.0f;
            } else {
                f8 = fMax == f10 ? ((f11 - f9) / f12) + 2.0f : 4.0f + ((f9 - f10) / f12);
            }
            fAbs = f12 / (1.0f - Math.abs((2.0f * f13) - 1.0f));
        }
        float f14 = (f8 * 60.0f) % 360.0f;
        if (f14 < 0.0f) {
            f14 += 360.0f;
        }
        fArr[0] = constrain(f14, 0.0f, 360.0f);
        fArr[1] = constrain(fAbs, 0.0f, 1.0f);
        fArr[2] = constrain(f13, 0.0f, 1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void RGBToLAB(@IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i9, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i10, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i11, @NonNull double[] dArr) {
        RGBToXYZ(i9, i10, i11, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void RGBToXYZ(@IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i9, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i10, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i11, @NonNull double[] dArr) {
        if (dArr.length != 3) {
            i.k("outXyz must have a length of 3.");
            return;
        }
        double d = ((double) i9) / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d9 = ((double) i10) / 255.0d;
        double dPow2 = d9 < 0.04045d ? d9 / 12.92d : Math.pow((d9 + 0.055d) / 1.055d, 2.4d);
        double d10 = ((double) i11) / 255.0d;
        double dPow3 = d10 < 0.04045d ? d10 / 12.92d : Math.pow((d10 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = ((0.1805d * dPow3) + (0.3576d * dPow2) + (0.4124d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[1] = ((0.0722d * dPow3) + (0.7152d * dPow2) + (0.2126d * dPow)) * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = ((dPow3 * 0.9505d) + (dPow2 * 0.1192d) + (dPow * 0.0193d)) * XYZ_WHITE_REFERENCE_Y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int XYZToColor(@FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_X) double d, @FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Y) double d9, @FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Z) double d10) {
        double d11 = (((-0.4986d) * d10) + (((-1.5372d) * d9) + (3.2406d * d))) / XYZ_WHITE_REFERENCE_Y;
        double d12 = ((0.0415d * d10) + ((1.8758d * d9) + ((-0.9689d) * d))) / XYZ_WHITE_REFERENCE_Y;
        double d13 = ((1.057d * d10) + (((-0.204d) * d9) + (0.0557d * d))) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d11 > 0.0031308d ? (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d : d11 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d12 > 0.0031308d ? (Math.pow(d12, 0.4166666666666667d) * 1.055d) - 0.055d : d12 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d13 > 0.0031308d ? (Math.pow(d13, 0.4166666666666667d) * 1.055d) - 0.055d : d13 * 12.92d) * 255.0d), 0, 255));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void XYZToLAB(@FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_X) double d, @FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Y) double d9, @FloatRange(from = 0.0d, to = XYZ_WHITE_REFERENCE_Z) double d10, @NonNull double[] dArr) {
        if (dArr.length != 3) {
            i.k("outLab must have a length of 3.");
            return;
        }
        double dPivotXyzComponent = pivotXyzComponent(d / XYZ_WHITE_REFERENCE_X);
        double dPivotXyzComponent2 = pivotXyzComponent(d9 / XYZ_WHITE_REFERENCE_Y);
        double dPivotXyzComponent3 = pivotXyzComponent(d10 / XYZ_WHITE_REFERENCE_Z);
        dArr[0] = Math.max(0.0d, (116.0d * dPivotXyzComponent2) - 16.0d);
        dArr[1] = (dPivotXyzComponent - dPivotXyzComponent2) * 500.0d;
        dArr[2] = (dPivotXyzComponent2 - dPivotXyzComponent3) * 200.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int blendARGB(@ColorInt int i9, @ColorInt int i10, @FloatRange(from = 0.0d, to = 1.0d) float f8) {
        float f9 = 1.0f - f8;
        return Color.argb((int) ((Color.alpha(i10) * f8) + (Color.alpha(i9) * f9)), (int) ((Color.red(i10) * f8) + (Color.red(i9) * f9)), (int) ((Color.green(i10) * f8) + (Color.green(i9) * f9)), (int) ((Color.blue(i10) * f8) + (Color.blue(i9) * f9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void blendHSL(@NonNull float[] fArr, @NonNull float[] fArr2, @FloatRange(from = 0.0d, to = 1.0d) float f8, @NonNull float[] fArr3) {
        if (fArr3.length != 3) {
            i.k("result must have a length of 3.");
            return;
        }
        float f9 = 1.0f - f8;
        fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f8);
        fArr3[1] = (fArr2[1] * f8) + (fArr[1] * f9);
        fArr3[2] = (fArr2[2] * f8) + (fArr[2] * f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void blendLAB(@NonNull double[] dArr, @NonNull double[] dArr2, @FloatRange(from = 0.0d, to = 1.0d) double d, @NonNull double[] dArr3) {
        if (dArr3.length != 3) {
            i.k("outResult must have a length of 3.");
            return;
        }
        double d9 = 1.0d - d;
        dArr3[0] = (dArr2[0] * d) + (dArr[0] * d9);
        dArr3[1] = (dArr2[1] * d) + (dArr[1] * d9);
        dArr3[2] = (dArr2[2] * d) + (dArr[2] * d9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double calculateContrast(@ColorInt int i9, @ColorInt int i10) {
        if (Color.alpha(i10) != 255) {
            b.o(Integer.toHexString(i10), "background can not be translucent: #");
            return 0.0d;
        }
        if (Color.alpha(i9) < 255) {
            i9 = compositeColors(i9, i10);
        }
        double dCalculateLuminance = calculateLuminance(i9) + 0.05d;
        double dCalculateLuminance2 = calculateLuminance(i10) + 0.05d;
        return Math.max(dCalculateLuminance, dCalculateLuminance2) / Math.min(dCalculateLuminance, dCalculateLuminance2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @FloatRange(from = 0.0d, to = 1.0d)
    public static double calculateLuminance(@ColorInt int i9) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(i9, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int calculateMinimumAlpha(@ColorInt int i9, @ColorInt int i10, float f8) {
        int i11 = 255;
        if (Color.alpha(i10) != 255) {
            b.o(Integer.toHexString(i10), "background can not be translucent: #");
            return 0;
        }
        double d = f8;
        if (calculateContrast(setAlphaComponent(i9, 255), i10) < d) {
            return -1;
        }
        int i12 = 0;
        for (int i13 = 0; i13 <= 10 && i11 - i12 > 1; i13++) {
            int i14 = (i12 + i11) / 2;
            if (calculateContrast(setAlphaComponent(i9, i14), i10) < d) {
                i12 = i14;
            } else {
                i11 = i14;
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @VisibleForTesting
    public static float circularInterpolate(float f8, float f9, float f10) {
        if (Math.abs(f9 - f8) > 180.0f) {
            if (f9 > f8) {
                f8 += 360.0f;
            } else {
                f9 += 360.0f;
            }
        }
        return (((f9 - f8) * f10) + f8) % 360.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void colorToHSL(@ColorInt int i9, @NonNull float[] fArr) {
        RGBToHSL(Color.red(i9), Color.green(i9), Color.blue(i9), fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void colorToLAB(@ColorInt int i9, @NonNull double[] dArr) {
        RGBToLAB(Color.red(i9), Color.green(i9), Color.blue(i9), dArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void colorToM3HCT(@ColorInt int i9, @NonNull @Size(3) float[] fArr) {
        CamColor.getM3HCTfromColor(i9, fArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void colorToXYZ(@ColorInt int i9, @NonNull double[] dArr) {
        RGBToXYZ(Color.red(i9), Color.green(i9), Color.blue(i9), dArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int compositeAlpha(int i9, int i10) {
        return 255 - (((255 - i9) * (255 - i10)) / 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int compositeColors(@ColorInt int i9, @ColorInt int i10) {
        int iAlpha = Color.alpha(i10);
        int iAlpha2 = Color.alpha(i9);
        int iCompositeAlpha = compositeAlpha(iAlpha2, iAlpha);
        return Color.argb(iCompositeAlpha, compositeComponent(Color.red(i9), iAlpha2, Color.red(i10), iAlpha, iCompositeAlpha), compositeComponent(Color.green(i9), iAlpha2, Color.green(i10), iAlpha, iCompositeAlpha), compositeComponent(Color.blue(i9), iAlpha2, Color.blue(i10), iAlpha, iCompositeAlpha));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int compositeComponent(int i9, int i10, int i11, int i12, int i13) {
        if (i13 == 0) {
            return 0;
        }
        return (((255 - i10) * (i11 * i12)) + ((i9 * 255) * i10)) / (i13 * 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static float constrain(float f8, float f9, float f10) {
        return f8 < f9 ? f9 : Math.min(f8, f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double distanceEuclidean(@NonNull double[] dArr, @NonNull double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[2] - dArr2[2], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[0] - dArr2[0], 2.0d));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static double[] getTempDouble3Array() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        threadLocal.set(dArr2);
        return dArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static double pivotXyzComponent(double d) {
        return d > XYZ_EPSILON ? Math.pow(d, 0.3333333333333333d) : ((d * XYZ_KAPPA) + 16.0d) / 116.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    public static int setAlphaComponent(@ColorInt int i9, @IntRange(from = ULong.MIN_VALUE, to = ScatterMapKt.Sentinel) int i10) {
        if (i10 >= 0 && i10 <= 255) {
            return (i9 & ViewCompat.MEASURED_SIZE_MASK) | (i10 << 24);
        }
        i.k("alpha must be between 0 and 255.");
        return 0;
    }

    private static int constrain(int i9, int i10, int i11) {
        return i9 < i10 ? i10 : Math.min(i9, i11);
    }

    @NonNull
    @RequiresApi(26)
    public static Color compositeColors(@NonNull Color color, @NonNull Color color2) {
        return ColorUtils$Api26Impl.compositeColors(color, color2);
    }
}
