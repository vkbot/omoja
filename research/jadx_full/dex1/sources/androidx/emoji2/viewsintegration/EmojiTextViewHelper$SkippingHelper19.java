package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiTextViewHelper$SkippingHelper19 extends EmojiTextViewHelper$HelperInternal {
    private final EmojiTextViewHelper$HelperInternal19 mHelperDelegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiTextViewHelper$SkippingHelper19(TextView textView) {
        this.mHelperDelegate = new EmojiTextViewHelper$HelperInternal19(textView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean skipBecauseEmojiCompatNotInitialized() {
        return !EmojiCompat.isConfigured();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return skipBecauseEmojiCompatNotInitialized() ? inputFilterArr : this.mHelperDelegate.getFilters(inputFilterArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public boolean isEnabled() {
        return this.mHelperDelegate.isEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void setAllCaps(boolean z8) {
        if (skipBecauseEmojiCompatNotInitialized()) {
            return;
        }
        this.mHelperDelegate.setAllCaps(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void setEnabled(boolean z8) {
        boolean zSkipBecauseEmojiCompatNotInitialized = skipBecauseEmojiCompatNotInitialized();
        EmojiTextViewHelper$HelperInternal19 emojiTextViewHelper$HelperInternal19 = this.mHelperDelegate;
        if (zSkipBecauseEmojiCompatNotInitialized) {
            emojiTextViewHelper$HelperInternal19.setEnabledUnsafe(z8);
        } else {
            emojiTextViewHelper$HelperInternal19.setEnabled(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void updateTransformationMethod() {
        if (skipBecauseEmojiCompatNotInitialized()) {
            return;
        }
        this.mHelperDelegate.updateTransformationMethod();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return skipBecauseEmojiCompatNotInitialized() ? transformationMethod : this.mHelperDelegate.wrapTransformationMethod(transformationMethod);
    }
}
