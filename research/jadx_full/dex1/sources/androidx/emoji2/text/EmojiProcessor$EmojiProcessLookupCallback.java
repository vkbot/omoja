package androidx.emoji2.text;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiProcessor$EmojiProcessLookupCallback implements EmojiProcessor$EmojiProcessCallback<EmojiProcessor$EmojiProcessLookupCallback> {
    private final int mOffset;
    public int start = -1;
    public int end = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiProcessor$EmojiProcessLookupCallback(int i9) {
        this.mOffset = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public /* bridge */ /* synthetic */ EmojiProcessor$EmojiProcessLookupCallback getResult() {
        return getResult();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(@NonNull CharSequence charSequence, int i9, int i10, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        int i11 = this.mOffset;
        if (i9 > i11 || i11 >= i10) {
            return i10 <= i11;
        }
        this.start = i9;
        this.end = i10;
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public EmojiProcessor$EmojiProcessLookupCallback getResult() {
        return this;
    }
}
