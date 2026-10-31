package androidx.core.util;

import android.os.Build$VERSION;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TypedValueCompat {
    private static final float INCHES_PER_MM = 0.03937008f;
    private static final float INCHES_PER_PT = 0.013888889f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TypedValueCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float deriveDimension(int i9, float f8, @NonNull DisplayMetrics displayMetrics) {
        float f9;
        float f10;
        if (Build$VERSION.SDK_INT >= 34) {
            return TypedValueCompat$Api34Impl.deriveDimension(i9, f8, displayMetrics);
        }
        if (i9 == 0) {
            return f8;
        }
        if (i9 == 1) {
            float f11 = displayMetrics.density;
            if (f11 == 0.0f) {
                return 0.0f;
            }
            return f8 / f11;
        }
        if (i9 == 2) {
            float f12 = displayMetrics.scaledDensity;
            if (f12 == 0.0f) {
                return 0.0f;
            }
            return f8 / f12;
        }
        if (i9 == 3) {
            float f13 = displayMetrics.xdpi;
            if (f13 == 0.0f) {
                return 0.0f;
            }
            f9 = f8 / f13;
            f10 = INCHES_PER_PT;
        } else {
            if (i9 == 4) {
                float f14 = displayMetrics.xdpi;
                if (f14 == 0.0f) {
                    return 0.0f;
                }
                return f8 / f14;
            }
            if (i9 != 5) {
                i.k(ai.onnxruntime.a.e(i9, "Invalid unitToConvertTo "));
                return 0.0f;
            }
            float f15 = displayMetrics.xdpi;
            if (f15 == 0.0f) {
                return 0.0f;
            }
            f9 = f8 / f15;
            f10 = INCHES_PER_MM;
        }
        return f9 / f10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float dpToPx(float f8, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(1, f8, displayMetrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getUnitFromComplexDimension(int i9) {
        return i9 & 15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float pxToDp(float f8, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(1, f8, displayMetrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float pxToSp(float f8, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(2, f8, displayMetrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float spToPx(float f8, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(2, f8, displayMetrics);
    }
}
