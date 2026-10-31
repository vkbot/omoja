package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompat$InitCallback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
@RestrictTo({RestrictTo$Scope.LIBRARY})
final class EmojiInputFilter implements InputFilter {
    private EmojiCompat$InitCallback mInitCallback;
    private final TextView mTextView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiInputFilter(@NonNull TextView textView) {
        this.mTextView = textView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private EmojiCompat$InitCallback getInitCallback() {
        if (this.mInitCallback == null) {
            this.mInitCallback = new EmojiInputFilter$InitCallbackImpl(this.mTextView, this);
        }
        return this.mInitCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void updateSelection(Spannable spannable, int i9, int i10) {
        if (i9 >= 0 && i10 >= 0) {
            Selection.setSelection(spannable, i9, i10);
        } else if (i9 >= 0) {
            Selection.setSelection(spannable, i9);
        } else if (i10 >= 0) {
            Selection.setSelection(spannable, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
        if (this.mTextView.isInEditMode()) {
            return charSequence;
        }
        int loadState = EmojiCompat.get().getLoadState();
        if (loadState != 0) {
            if (loadState == 1) {
                if ((i12 == 0 && i11 == 0 && spanned.length() == 0 && charSequence == this.mTextView.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i9 != 0 || i10 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i9, i10);
                }
                return EmojiCompat.get().process(charSequence, 0, charSequence.length());
            }
            if (loadState != 3) {
                return charSequence;
            }
        }
        EmojiCompat.get().registerInitCallback(getInitCallback());
        return charSequence;
    }
}
