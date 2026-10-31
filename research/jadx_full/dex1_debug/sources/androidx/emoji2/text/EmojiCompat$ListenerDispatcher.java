package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompat$ListenerDispatcher implements Runnable {
    private final List<EmojiCompat$InitCallback> mInitCallbacks;
    private final int mLoadState;
    private final Throwable mThrowable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompat$ListenerDispatcher(@NonNull EmojiCompat$InitCallback emojiCompat$InitCallback, int i9) {
        this(Arrays.asList((EmojiCompat$InitCallback) Preconditions.checkNotNull(emojiCompat$InitCallback, "initCallback cannot be null")), i9, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        int size = this.mInitCallbacks.size();
        int i9 = 0;
        if (this.mLoadState != 1) {
            while (i9 < size) {
                this.mInitCallbacks.get(i9).onFailed(this.mThrowable);
                i9++;
            }
        } else {
            while (i9 < size) {
                this.mInitCallbacks.get(i9).onInitialized();
                i9++;
            }
        }
    }

    public EmojiCompat$ListenerDispatcher(@NonNull Collection<EmojiCompat$InitCallback> collection, int i9) {
        this(collection, i9, null);
    }

    public EmojiCompat$ListenerDispatcher(@NonNull Collection<EmojiCompat$InitCallback> collection, int i9, @Nullable Throwable th) {
        Preconditions.checkNotNull(collection, "initCallbacks cannot be null");
        this.mInitCallbacks = new ArrayList(collection);
        this.mLoadState = i9;
        this.mThrowable = th;
    }
}
