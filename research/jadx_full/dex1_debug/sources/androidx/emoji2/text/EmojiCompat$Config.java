package androidx.emoji2.text;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.core.util.Preconditions;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class EmojiCompat$Config {

    @Nullable
    int[] mEmojiAsDefaultStyleExceptions;
    boolean mEmojiSpanIndicatorEnabled;

    @Nullable
    Set<EmojiCompat$InitCallback> mInitCallbacks;

    @NonNull
    final EmojiCompat$MetadataRepoLoader mMetadataLoader;
    boolean mReplaceAll;
    EmojiCompat$SpanFactory mSpanFactory;
    boolean mUseEmojiAsDefaultStyle;
    int mEmojiSpanIndicatorColor = -16711936;
    int mMetadataLoadStrategy = 0;

    @NonNull
    EmojiCompat$GlyphChecker mGlyphChecker = new DefaultGlyphChecker();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompat$Config(@NonNull EmojiCompat$MetadataRepoLoader emojiCompat$MetadataRepoLoader) {
        Preconditions.checkNotNull(emojiCompat$MetadataRepoLoader, "metadataLoader cannot be null.");
        this.mMetadataLoader = emojiCompat$MetadataRepoLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final EmojiCompat$MetadataRepoLoader getMetadataRepoLoader() {
        return this.mMetadataLoader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config registerInitCallback(@NonNull EmojiCompat$InitCallback emojiCompat$InitCallback) {
        Preconditions.checkNotNull(emojiCompat$InitCallback, "initCallback cannot be null");
        if (this.mInitCallbacks == null) {
            this.mInitCallbacks = new ArraySet();
        }
        this.mInitCallbacks.add(emojiCompat$InitCallback);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setEmojiSpanIndicatorColor(@ColorInt int i9) {
        this.mEmojiSpanIndicatorColor = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setEmojiSpanIndicatorEnabled(boolean z8) {
        this.mEmojiSpanIndicatorEnabled = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setGlyphChecker(@NonNull EmojiCompat$GlyphChecker emojiCompat$GlyphChecker) {
        Preconditions.checkNotNull(emojiCompat$GlyphChecker, "GlyphChecker cannot be null");
        this.mGlyphChecker = emojiCompat$GlyphChecker;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setMetadataLoadStrategy(int i9) {
        this.mMetadataLoadStrategy = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setReplaceAll(boolean z8) {
        this.mReplaceAll = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setSpanFactory(@NonNull EmojiCompat$SpanFactory emojiCompat$SpanFactory) {
        this.mSpanFactory = emojiCompat$SpanFactory;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config setUseEmojiAsDefaultStyle(boolean z8, @Nullable List<Integer> list) {
        this.mUseEmojiAsDefaultStyle = z8;
        if (!z8 || list == null) {
            this.mEmojiAsDefaultStyleExceptions = null;
            return this;
        }
        this.mEmojiAsDefaultStyleExceptions = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            this.mEmojiAsDefaultStyleExceptions[i9] = it.next().intValue();
            i9++;
        }
        Arrays.sort(this.mEmojiAsDefaultStyleExceptions);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public EmojiCompat$Config unregisterInitCallback(@NonNull EmojiCompat$InitCallback emojiCompat$InitCallback) {
        Preconditions.checkNotNull(emojiCompat$InitCallback, "initCallback cannot be null");
        Set<EmojiCompat$InitCallback> set = this.mInitCallbacks;
        if (set != null) {
            set.remove(emojiCompat$InitCallback);
        }
        return this;
    }

    @NonNull
    public EmojiCompat$Config setUseEmojiAsDefaultStyle(boolean z8) {
        return setUseEmojiAsDefaultStyle(z8, null);
    }
}
