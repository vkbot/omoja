package androidx.appcompat.widget;

import android.view.textclassifier.TextClassifier;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(api = 26)
public class AppCompatTextView$SuperCallerApi26 implements AppCompatTextView$SuperCaller {
    final /* synthetic */ AppCompatTextView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatTextView$SuperCallerApi26(AppCompatTextView appCompatTextView) {
        this.this$0 = appCompatTextView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public int getAutoSizeMaxTextSize() {
        return AppCompatTextView.access$001(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public int getAutoSizeMinTextSize() {
        return AppCompatTextView.access$101(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public int getAutoSizeStepGranularity() {
        return AppCompatTextView.access$201(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public int[] getAutoSizeTextAvailableSizes() {
        return AppCompatTextView.access$301(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public int getAutoSizeTextType() {
        return AppCompatTextView.access$401(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public TextClassifier getTextClassifier() {
        return AppCompatTextView.access$501(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setAutoSizeTextTypeUniformWithConfiguration(int i9, int i10, int i11, int i12) {
        AppCompatTextView.access$601(this.this$0, i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i9) {
        AppCompatTextView.access$701(this.this$0, iArr, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setAutoSizeTextTypeWithDefaults(int i9) {
        AppCompatTextView.access$801(this.this$0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        AppCompatTextView.access$901(this.this$0, textClassifier);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setFirstBaselineToTopHeight(int i9) {
    }

    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setLastBaselineToBottomHeight(int i9) {
    }

    @Override // androidx.appcompat.widget.AppCompatTextView$SuperCaller
    public void setLineHeight(int i9, float f8) {
    }
}
