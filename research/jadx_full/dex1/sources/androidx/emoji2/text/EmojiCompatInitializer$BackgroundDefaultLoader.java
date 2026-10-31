package androidx.emoji2.text;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public class EmojiCompatInitializer$BackgroundDefaultLoader implements EmojiCompat$MetadataRepoLoader {
    private final Context mContext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompatInitializer$BackgroundDefaultLoader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(EmojiCompatInitializer$BackgroundDefaultLoader emojiCompatInitializer$BackgroundDefaultLoader, EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
        emojiCompatInitializer$BackgroundDefaultLoader.lambda$load$0(emojiCompat$MetadataRepoLoaderCallback, threadPoolExecutor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$load$0(EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback, ThreadPoolExecutor threadPoolExecutor) {
        doLoad(emojiCompat$MetadataRepoLoaderCallback, threadPoolExecutor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @WorkerThread
    public void doLoad(@NonNull EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback, @NonNull ThreadPoolExecutor threadPoolExecutor) {
        try {
            FontRequestEmojiCompatConfig fontRequestEmojiCompatConfigCreate = DefaultEmojiCompatConfig.create(this.mContext);
            if (fontRequestEmojiCompatConfigCreate == null) {
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            }
            fontRequestEmojiCompatConfigCreate.setLoadingExecutor(threadPoolExecutor);
            fontRequestEmojiCompatConfigCreate.getMetadataRepoLoader().load(new EmojiCompatInitializer$BackgroundDefaultLoader$1(this, emojiCompat$MetadataRepoLoaderCallback, threadPoolExecutor));
        } catch (Throwable th) {
            emojiCompat$MetadataRepoLoaderCallback.onFailed(th);
            threadPoolExecutor.shutdown();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$MetadataRepoLoader
    public void load(@NonNull EmojiCompat$MetadataRepoLoaderCallback emojiCompat$MetadataRepoLoaderCallback) {
        ThreadPoolExecutor threadPoolExecutorCreateBackgroundPriorityExecutor = ConcurrencyHelpers.createBackgroundPriorityExecutor("EmojiCompatInitializer");
        threadPoolExecutorCreateBackgroundPriorityExecutor.execute(new c(this, emojiCompat$MetadataRepoLoaderCallback, threadPoolExecutorCreateBackgroundPriorityExecutor));
    }
}
