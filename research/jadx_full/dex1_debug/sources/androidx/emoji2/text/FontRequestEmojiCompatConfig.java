package androidx.emoji2.text;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.provider.FontRequest;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat$Config {
    private static final FontRequestEmojiCompatConfig$FontProviderHelper DEFAULT_FONTS_CONTRACT = new FontRequestEmojiCompatConfig$FontProviderHelper();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest) {
        super(new FontRequestEmojiCompatConfig$FontRequestMetadataLoader(context, fontRequest, DEFAULT_FONTS_CONTRACT));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(@Nullable Handler handler) {
        if (handler == null) {
            return this;
        }
        setLoadingExecutor(ConcurrencyHelpers.convertHandlerToExecutor(handler));
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FontRequestEmojiCompatConfig setLoadingExecutor(@NonNull Executor executor) {
        ((FontRequestEmojiCompatConfig$FontRequestMetadataLoader) getMetadataRepoLoader()).setExecutor(executor);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FontRequestEmojiCompatConfig setRetryPolicy(@Nullable FontRequestEmojiCompatConfig$RetryPolicy fontRequestEmojiCompatConfig$RetryPolicy) {
        ((FontRequestEmojiCompatConfig$FontRequestMetadataLoader) getMetadataRepoLoader()).setRetryPolicy(fontRequestEmojiCompatConfig$RetryPolicy);
        return this;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public FontRequestEmojiCompatConfig(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontRequestEmojiCompatConfig$FontProviderHelper fontRequestEmojiCompatConfig$FontProviderHelper) {
        super(new FontRequestEmojiCompatConfig$FontRequestMetadataLoader(context, fontRequest, fontRequestEmojiCompatConfig$FontProviderHelper));
    }
}
