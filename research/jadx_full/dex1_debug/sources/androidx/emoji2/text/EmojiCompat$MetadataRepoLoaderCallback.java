package androidx.emoji2.text;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class EmojiCompat$MetadataRepoLoaderCallback {
    public abstract void onFailed(@Nullable Throwable th);

    public abstract void onLoaded(@NonNull MetadataRepo metadataRepo);
}
