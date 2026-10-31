package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiTextViewHelper$HelperInternal19 extends EmojiTextViewHelper$HelperInternal {
    private final EmojiInputFilter mEmojiInputFilter;
    private boolean mEnabled = true;
    private final TextView mTextView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiTextViewHelper$HelperInternal19(TextView textView) {
        this.mTextView = textView;
        this.mEmojiInputFilter = new EmojiInputFilter(textView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private InputFilter[] addEmojiInputFilterIfMissing(@NonNull InputFilter[] inputFilterArr) {
        int length = inputFilterArr.length;
        for (InputFilter inputFilter : inputFilterArr) {
            if (inputFilter == this.mEmojiInputFilter) {
                return inputFilterArr;
            }
        }
        InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
        System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
        inputFilterArr2[length] = this.mEmojiInputFilter;
        return inputFilterArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SparseArray<InputFilter> getEmojiInputFilterPositionArray(@NonNull InputFilter[] inputFilterArr) {
        SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
        for (int i9 = 0; i9 < inputFilterArr.length; i9++) {
            InputFilter inputFilter = inputFilterArr[i9];
            if (inputFilter instanceof EmojiInputFilter) {
                sparseArray.put(i9, inputFilter);
            }
        }
        return sparseArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private InputFilter[] removeEmojiInputFilterIfPresent(@NonNull InputFilter[] inputFilterArr) {
        SparseArray<InputFilter> emojiInputFilterPositionArray = getEmojiInputFilterPositionArray(inputFilterArr);
        if (emojiInputFilterPositionArray.size() == 0) {
            return inputFilterArr;
        }
        int length = inputFilterArr.length;
        InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - emojiInputFilterPositionArray.size()];
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            if (emojiInputFilterPositionArray.indexOfKey(i10) < 0) {
                inputFilterArr2[i9] = inputFilterArr[i10];
                i9++;
            }
        }
        return inputFilterArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private TransformationMethod unwrapForDisabled(@Nullable TransformationMethod transformationMethod) {
        return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateFilters() {
        this.mTextView.setFilters(getFilters(this.mTextView.getFilters()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private TransformationMethod wrapForEnabled(@Nullable TransformationMethod transformationMethod) {
        return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return !this.mEnabled ? removeEmojiInputFilterIfPresent(inputFilterArr) : addEmojiInputFilterIfMissing(inputFilterArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public boolean isEnabled() {
        return this.mEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void setAllCaps(boolean z8) {
        if (z8) {
            updateTransformationMethod();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void setEnabled(boolean z8) {
        this.mEnabled = z8;
        updateTransformationMethod();
        updateFilters();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void setEnabledUnsafe(boolean z8) {
        this.mEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    public void updateTransformationMethod() {
        this.mTextView.setTransformationMethod(wrapTransformationMethod(this.mTextView.getTransformationMethod()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper$HelperInternal
    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.mEnabled ? wrapForEnabled(transformationMethod) : unwrapForDisabled(transformationMethod);
    }
}
