package androidx.emoji2.text;

import android.view.inputmethod.EditorInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class EmojiCompat$CompatInternal {
    final EmojiCompat mEmojiCompat;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompat$CompatInternal(EmojiCompat emojiCompat) {
        this.mEmojiCompat = emojiCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getAssetSignature() {
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiEnd(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9) {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiMatch(CharSequence charSequence, int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEmojiStart(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9) {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void loadMetadata() {
        this.mEmojiCompat.onMetadataLoadSuccess();
    }

    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence, int i9) {
        return false;
    }

    public void updateEditorInfoAttrs(@NonNull EditorInfo editorInfo) {
    }

    public CharSequence process(@NonNull CharSequence charSequence, @IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = ULong.MIN_VALUE) int i10, @IntRange(from = ULong.MIN_VALUE) int i11, boolean z8) {
        return charSequence;
    }
}
