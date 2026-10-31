package androidx.emoji2.viewsintegration;

import android.text.Editable;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiKeyListener$EmojiCompatHandleKeyDownHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handleKeyDown(@NonNull Editable editable, int i9, @NonNull KeyEvent keyEvent) {
        return EmojiCompat.handleOnKeyDown(editable, i9, keyEvent);
    }
}
