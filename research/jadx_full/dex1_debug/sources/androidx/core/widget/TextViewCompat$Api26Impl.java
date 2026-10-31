package androidx.core.widget;

import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(26)
public class TextViewCompat$Api26Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextViewCompat$Api26Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getAutoSizeMaxTextSize(TextView textView) {
        return textView.getAutoSizeMaxTextSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getAutoSizeMinTextSize(TextView textView) {
        return textView.getAutoSizeMinTextSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getAutoSizeStepGranularity(TextView textView) {
        return textView.getAutoSizeStepGranularity();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int[] getAutoSizeTextAvailableSizes(TextView textView) {
        return textView.getAutoSizeTextAvailableSizes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static int getAutoSizeTextType(TextView textView) {
        return textView.getAutoSizeTextType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i9, int i10, int i11, int i12) {
        textView.setAutoSizeTextTypeUniformWithConfiguration(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i9) {
        textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void setAutoSizeTextTypeWithDefaults(TextView textView, int i9) {
        textView.setAutoSizeTextTypeWithDefaults(i9);
    }
}
