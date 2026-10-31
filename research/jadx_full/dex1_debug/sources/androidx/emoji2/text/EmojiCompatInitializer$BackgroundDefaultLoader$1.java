package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompatInitializer$BackgroundDefaultLoader$1 extends EmojiCompat$MetadataRepoLoaderCallback {
    final /* synthetic */ EmojiCompatInitializer$BackgroundDefaultLoader this$0;
    final /* synthetic */ ThreadPoolExecutor val$executor;
    final /* synthetic */ EmojiCompat$MetadataRepoLoaderCallback val$loaderCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompatInitializer$BackgroundDefaultLoader$1(EmojiCompatInitializer$BackgroundDefaultLoader emojiCompatInitializer$BackgroundDefaultLoader, EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
        this.this$0 = emojiCompatInitializer$BackgroundDefaultLoader;
        this.val$loaderCallback = emojiCompat$MetadataRepoLoaderCallback;
        this.val$executor = threadPoolExecutor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoaderCallback
    public void onFailed(@Nullable Throwable th) {
        try {
            this.val$loaderCallback.onFailed(th);
        } finally {
            this.val$executor.shutdown();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoaderCallback
    public void onLoaded(@NonNull MetadataRepo metadataRepo) {
        try {
            this.val$loaderCallback.onLoaded(metadataRepo);
        } finally {
            this.val$executor.shutdown();
        }
    }
}
