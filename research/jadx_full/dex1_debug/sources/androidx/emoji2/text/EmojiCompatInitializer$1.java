package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompatInitializer$1 implements DefaultLifecycleObserver {
    final /* synthetic */ EmojiCompatInitializer this$0;
    final /* synthetic */ Lifecycle val$lifecycle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public EmojiCompatInitializer$1(EmojiCompatInitializer emojiCompatInitializer, Lifecycle lifecycle) {
        this.this$0 = emojiCompatInitializer;
        this.val$lifecycle = lifecycle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(@NonNull LifecycleOwner lifecycleOwner) {
        this.this$0.loadEmojiCompatAfterDelay();
        this.val$lifecycle.removeObserver(this);
    }
}
