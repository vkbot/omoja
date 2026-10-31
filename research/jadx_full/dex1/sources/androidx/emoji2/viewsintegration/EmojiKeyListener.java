package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
@RestrictTo({RestrictTo$Scope.LIBRARY})
final class EmojiKeyListener implements KeyListener {
    private final EmojiKeyListener$EmojiCompatHandleKeyDownHelper mEmojiCompatHandleKeyDownHelper;
    private final KeyListener mKeyListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiKeyListener(KeyListener keyListener) {
        this(keyListener, new EmojiKeyListener$EmojiCompatHandleKeyDownHelper());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i9) {
        this.mKeyListener.clearMetaKeyState(view, editable, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.mKeyListener.getInputType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i9, KeyEvent keyEvent) {
        return this.mEmojiCompatHandleKeyDownHelper.handleKeyDown(editable, i9, keyEvent) || this.mKeyListener.onKeyDown(view, editable, i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyOther(view, editable, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i9, KeyEvent keyEvent) {
        return this.mKeyListener.onKeyUp(view, editable, i9, keyEvent);
    }

    public EmojiKeyListener(KeyListener keyListener, EmojiKeyListener$EmojiCompatHandleKeyDownHelper emojiKeyListener$EmojiCompatHandleKeyDownHelper) {
        this.mKeyListener = keyListener;
        this.mEmojiCompatHandleKeyDownHelper = emojiKeyListener$EmojiCompatHandleKeyDownHelper;
    }
}
