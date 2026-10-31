package androidx.emoji2.text;

import android.text.Spannable;
import android.text.SpannableString;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiProcessor$EmojiProcessAddSpanCallback implements EmojiProcessor$EmojiProcessCallback<UnprecomputeTextOnModificationSpannable> {
    private final EmojiCompat$SpanFactory mSpanFactory;

    @Nullable
    public UnprecomputeTextOnModificationSpannable spannable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiProcessor$EmojiProcessAddSpanCallback(@Nullable UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable, EmojiCompat$SpanFactory emojiCompat$SpanFactory) {
        this.spannable = unprecomputeTextOnModificationSpannable;
        this.mSpanFactory = emojiCompat$SpanFactory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public /* bridge */ /* synthetic */ UnprecomputeTextOnModificationSpannable getResult() {
        return getResult();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public boolean handleEmoji(@NonNull CharSequence charSequence, int i9, int i10, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        if (typefaceEmojiRasterizer.isPreferredSystemRender()) {
            return true;
        }
        if (this.spannable == null) {
            this.spannable = new UnprecomputeTextOnModificationSpannable(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        this.spannable.setSpan(this.mSpanFactory.createSpan(typefaceEmojiRasterizer), i9, i10, 33);
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
    public UnprecomputeTextOnModificationSpannable getResult() {
        return this.spannable;
    }
}
