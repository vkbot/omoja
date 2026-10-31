package androidx.appcompat.widget;

import android.view.textclassifier.TextClassifier;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface AppCompatTextView$SuperCaller {
    int getAutoSizeMaxTextSize();

    int getAutoSizeMinTextSize();

    int getAutoSizeStepGranularity();

    int[] getAutoSizeTextAvailableSizes();

    int getAutoSizeTextType();

    TextClassifier getTextClassifier();

    void setAutoSizeTextTypeUniformWithConfiguration(int i9, int i10, int i11, int i12);

    void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i9);

    void setAutoSizeTextTypeWithDefaults(int i9);

    void setFirstBaselineToTopHeight(@Px int i9);

    void setLastBaselineToBottomHeight(@Px int i9);

    void setLineHeight(int i9, @FloatRange(from = 0.0d) float f8);

    void setTextClassifier(@Nullable TextClassifier textClassifier);
}
