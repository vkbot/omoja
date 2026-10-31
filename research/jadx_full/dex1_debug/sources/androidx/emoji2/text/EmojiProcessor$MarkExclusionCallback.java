package androidx.emoji2.text;

import android.text.TextUtils;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiProcessor$MarkExclusionCallback implements EmojiProcessor$EmojiProcessCallback<EmojiProcessor$MarkExclusionCallback> {
    private final String mExclusion;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiProcessor$MarkExclusionCallback(String str) {
        this.mExclusion = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public /* bridge */ /* synthetic */ EmojiProcessor$MarkExclusionCallback getResult() {
        return getResult();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(@NonNull CharSequence charSequence, int i9, int i10, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (!TextUtils.equals(charSequence.subSequence(i9, i10), this.mExclusion)) {
            return true;
        }
        typefaceEmojiRasterizer.setExclusion(true);
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public EmojiProcessor$MarkExclusionCallback getResult() {
        return this;
    }
}
