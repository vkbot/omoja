package androidx.emoji2.viewsintegration;

import android.widget.EditText;
import androidx.annotation.RequiresApi;
import androidx.emoji2.text.EmojiCompat$InitCallback;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiTextWatcher$InitCallbackImpl extends EmojiCompat$InitCallback {
    private final Reference<EditText> mViewRef;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiTextWatcher$InitCallbackImpl(EditText editText) {
        this.mViewRef = new WeakReference(editText);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$InitCallback
    public void onInitialized() {
        super.onInitialized();
        EmojiTextWatcher.processTextOnEnablingEvent(this.mViewRef.get(), 1);
    }
}
