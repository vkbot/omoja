package androidx.emoji2.viewsintegration;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiEditTextHelper$HelperInternal19 extends EmojiEditTextHelper$HelperInternal {
    private final EditText mEditText;
    private final EmojiTextWatcher mTextWatcher;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiEditTextHelper$HelperInternal19(@NonNull EditText editText, boolean z8) {
        this.mEditText = editText;
        EmojiTextWatcher emojiTextWatcher = new EmojiTextWatcher(editText, z8);
        this.mTextWatcher = emojiTextWatcher;
        editText.addTextChangedListener(emojiTextWatcher);
        editText.setEditableFactory(EmojiEditableFactory.getInstance());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public KeyListener getKeyListener(@Nullable KeyListener keyListener) {
        if (keyListener instanceof EmojiKeyListener) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new EmojiKeyListener(keyListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public boolean isEnabled() {
        return this.mTextWatcher.isEnabled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public InputConnection onCreateInputConnection(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        return inputConnection instanceof EmojiInputConnection ? inputConnection : new EmojiInputConnection(this.mEditText, inputConnection, editorInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public void setEmojiReplaceStrategy(int i9) {
        this.mTextWatcher.setEmojiReplaceStrategy(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public void setEnabled(boolean z8) {
        this.mTextWatcher.setEnabled(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.viewsintegration.EmojiEditTextHelper$HelperInternal
    public void setMaxEmojiCount(int i9) {
        this.mTextWatcher.setMaxEmojiCount(i9);
    }
}
