package androidx.core.util;

import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import j1.i;
import java.util.Locale;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public final class Preconditions {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Preconditions() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void checkArgument(boolean z8, @NonNull Object obj) {
        if (!z8) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float checkArgumentFinite(float f8, @NonNull String str) {
        if (Float.isNaN(f8)) {
            i.k(ai.onnxruntime.a.C(str, " must not be NaN"));
            return 0.0f;
        }
        if (!Float.isInfinite(f8)) {
            return f8;
        }
        i.k(ai.onnxruntime.a.C(str, " must not be infinite"));
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int checkArgumentInRange(int i9, int i10, int i11, @NonNull String str) {
        if (i9 < i10) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + i10 + ", " + i11 + "] (too low)");
        }
        if (i9 <= i11) {
            return i9;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + i10 + ", " + i11 + "] (too high)");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public static int checkArgumentNonnegative(int i9, @Nullable String str) {
        if (i9 >= 0) {
            return i9;
        }
        i.k(str);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int checkFlagsArgument(int i9, int i10) {
        if ((i9 & i10) == i9) {
            return i9;
        }
        androidx.navigation.b.w("Requested flags 0x", Integer.toHexString(i9), ", but only 0x", Integer.toHexString(i10), " are allowed");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T> T checkNotNull(@Nullable T t, @NonNull Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void checkState(boolean z8, @Nullable String str) {
        if (z8) {
            return;
        }
        i.l(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t, @NonNull Object obj) {
        if (TextUtils.isEmpty(t)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t;
    }

    public static void checkState(boolean z8) {
        checkState(z8, null);
    }

    @IntRange(from = ULong.MIN_VALUE)
    public static int checkArgumentNonnegative(int i9) {
        if (i9 >= 0) {
            return i9;
        }
        l9.i.a();
        return 0;
    }

    public static void checkArgument(boolean z8) {
        if (z8) {
            return;
        }
        l9.i.a();
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t) {
        t.getClass();
        return t;
    }

    public static void checkArgument(boolean z8, @NonNull String str, @NonNull Object... objArr) {
        if (!z8) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t) {
        if (!TextUtils.isEmpty(t)) {
            return t;
        }
        l9.i.a();
        return null;
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t, @NonNull String str, @NonNull Object... objArr) {
        if (TextUtils.isEmpty(t)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t;
    }

    public static long checkArgumentInRange(long j9, long j10, long j11, @NonNull String str) {
        if (j9 < j10) {
            Locale locale = Locale.US;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" is out of range of [");
            sb.append(j10);
            sb.append(", ");
            i.k(ai.onnxruntime.a.n(sb, j11, "] (too low)"));
            return 0L;
        }
        if (j9 <= j11) {
            return j9;
        }
        Locale locale2 = Locale.US;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" is out of range of [");
        sb2.append(j10);
        sb2.append(", ");
        i.k(ai.onnxruntime.a.n(sb2, j11, "] (too high)"));
        return 0L;
    }

    public static float checkArgumentInRange(float f8, float f9, float f10, @NonNull String str) {
        if (f8 < f9) {
            i.k(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f9), Float.valueOf(f10)));
            return 0.0f;
        }
        if (f8 <= f10) {
            return f8;
        }
        i.k(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f9), Float.valueOf(f10)));
        return 0.0f;
    }

    public static double checkArgumentInRange(double d, double d9, double d10, @NonNull String str) {
        if (d < d9) {
            i.k(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d9), Double.valueOf(d10)));
            return 0.0d;
        }
        if (d <= d10) {
            return d;
        }
        i.k(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d9), Double.valueOf(d10)));
        return 0.0d;
    }
}
