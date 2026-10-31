package androidx.core.util;

import ai.onnxruntime.AbstractC0074a;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class TypedValueCompat {
    private static final float INCHES_PER_MM = 0.03937008f;
    private static final float INCHES_PER_PT = 0.013888889f;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(34)
    public static class Api34Impl {
        private Api34Impl() {
        }

        @DoNotInline
        public static float deriveDimension(int i10, float f8, DisplayMetrics displayMetrics) {
            return TypedValue.deriveDimension(i10, f8, displayMetrics);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ComplexDimensionUnit {
    }

    private TypedValueCompat() {
    }

    public static float deriveDimension(int i10, float f8, @NonNull DisplayMetrics displayMetrics) {
        float f10;
        float f11;
        if (Build.VERSION.SDK_INT >= 34) {
            return Api34Impl.deriveDimension(i10, f8, displayMetrics);
        }
        if (i10 == 0) {
            return f8;
        }
        if (i10 == 1) {
            float f12 = displayMetrics.density;
            if (f12 == 0.0f) {
                return 0.0f;
            }
            return f8 / f12;
        }
        if (i10 == 2) {
            float f13 = displayMetrics.scaledDensity;
            if (f13 == 0.0f) {
                return 0.0f;
            }
            return f8 / f13;
        }
        if (i10 == 3) {
            float f14 = displayMetrics.xdpi;
            if (f14 == 0.0f) {
                return 0.0f;
            }
            f10 = f8 / f14;
            f11 = INCHES_PER_PT;
        } else {
            if (i10 == 4) {
                float f15 = displayMetrics.xdpi;
                if (f15 == 0.0f) {
                    return 0.0f;
                }
                return f8 / f15;
            }
            if (i10 != 5) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid unitToConvertTo "));
                return 0.0f;
            }
            float f16 = displayMetrics.xdpi;
            if (f16 == 0.0f) {
                return 0.0f;
            }
            f10 = f8 / f16;
            f11 = INCHES_PER_MM;
        }
        return f10 / f11;
    }

    public static float dpToPx(float f8, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(1, f8, displayMetrics);
    }

    public static int getUnitFromComplexDimension(int i10) {
        return i10 & 15;
    }

    public static float pxToDp(float f8, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(1, f8, displayMetrics);
    }

    public static float pxToSp(float f8, @NonNull DisplayMetrics displayMetrics) {
        return deriveDimension(2, f8, displayMetrics);
    }

    public static float spToPx(float f8, @NonNull DisplayMetrics displayMetrics) {
        return TypedValue.applyDimension(2, f8, displayMetrics);
    }
}
