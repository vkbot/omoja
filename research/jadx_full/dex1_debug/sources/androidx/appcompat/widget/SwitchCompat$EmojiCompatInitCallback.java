package androidx.appcompat.widget;

import androidx.annotation.Nullable;
import androidx.emoji2.text.EmojiCompat$InitCallback;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SwitchCompat$EmojiCompatInitCallback extends EmojiCompat$InitCallback {
    private final Reference<SwitchCompat> mOuterWeakRef;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SwitchCompat$EmojiCompatInitCallback(SwitchCompat switchCompat) {
        this.mOuterWeakRef = new WeakReference(switchCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$InitCallback
    public void onFailed(@Nullable Throwable th) {
        SwitchCompat switchCompat = this.mOuterWeakRef.get();
        if (switchCompat != null) {
            switchCompat.onEmojiCompatInitializedForSwitchText();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$InitCallback
    public void onInitialized() {
        SwitchCompat switchCompat = this.mOuterWeakRef.get();
        if (switchCompat != null) {
            switchCompat.onEmojiCompatInitializedForSwitchText();
        }
    }
}
