package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompat$CompatInternal19$1 extends EmojiCompat$MetadataRepoLoaderCallback {
    final /* synthetic */ EmojiCompat$CompatInternal19 this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompat$CompatInternal19$1(EmojiCompat$CompatInternal19 emojiCompat$CompatInternal19) {
        this.this$0 = emojiCompat$CompatInternal19;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoaderCallback
    public void onFailed(@Nullable Throwable th) {
        this.this$0.mEmojiCompat.onMetadataLoadFailed(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoaderCallback
    public void onLoaded(@NonNull MetadataRepo metadataRepo) {
        this.this$0.onMetadataLoadSuccess(metadataRepo);
    }
}
