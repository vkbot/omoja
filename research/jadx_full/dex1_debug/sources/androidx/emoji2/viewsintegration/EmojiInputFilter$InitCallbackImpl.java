package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompat$InitCallback;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiInputFilter$InitCallbackImpl extends EmojiCompat$InitCallback {
    private final Reference<EmojiInputFilter> mEmojiInputFilterReference;
    private final Reference<TextView> mViewRef;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiInputFilter$InitCallbackImpl(TextView textView, EmojiInputFilter emojiInputFilter) {
        this.mViewRef = new WeakReference(textView);
        this.mEmojiInputFilterReference = new WeakReference(emojiInputFilter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isInputFilterCurrentlyRegisteredOnTextView(@Nullable TextView textView, @Nullable InputFilter inputFilter) {
        InputFilter[] filters;
        if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
            return false;
        }
        for (InputFilter inputFilter2 : filters) {
            if (inputFilter2 == inputFilter) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$InitCallback
    public void onInitialized() {
        CharSequence text;
        CharSequence charSequenceProcess;
        super.onInitialized();
        TextView textView = this.mViewRef.get();
        if (isInputFilterCurrentlyRegisteredOnTextView(textView, this.mEmojiInputFilterReference.get()) && textView.isAttachedToWindow() && text != (charSequenceProcess = EmojiCompat.get().process((text = textView.getText())))) {
            int selectionStart = Selection.getSelectionStart(charSequenceProcess);
            int selectionEnd = Selection.getSelectionEnd(charSequenceProcess);
            textView.setText(charSequenceProcess);
            if (charSequenceProcess instanceof Spannable) {
                EmojiInputFilter.updateSelection((Spannable) charSequenceProcess, selectionStart, selectionEnd);
            }
        }
    }
}
