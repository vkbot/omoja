package androidx.emoji2.text;

import android.view.inputmethod.EditorInfo;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public final class EmojiCompat$CompatInternal19 extends EmojiCompat$CompatInternal {
    private volatile MetadataRepo mMetadataRepo;
    private volatile EmojiProcessor mProcessor;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiCompat$CompatInternal19(EmojiCompat emojiCompat) {
        super(emojiCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public String getAssetSignature() {
        String strSourceSha = this.mMetadataRepo.getMetadataList().sourceSha();
        return strSourceSha == null ? "" : strSourceSha;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public int getEmojiEnd(@NonNull CharSequence charSequence, int i9) {
        return this.mProcessor.getEmojiEnd(charSequence, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public int getEmojiMatch(CharSequence charSequence, int i9) {
        return this.mProcessor.getEmojiMatch(charSequence, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public int getEmojiStart(@NonNull CharSequence charSequence, int i9) {
        return this.mProcessor.getEmojiStart(charSequence, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence) {
        return this.mProcessor.getEmojiMatch(charSequence) == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public void loadMetadata() {
        try {
            this.mEmojiCompat.mMetadataLoader.load(new EmojiCompat$CompatInternal19$1(this));
        } catch (Throwable th) {
            this.mEmojiCompat.onMetadataLoadFailed(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMetadataLoadSuccess(@NonNull MetadataRepo metadataRepo) {
        if (metadataRepo == null) {
            this.mEmojiCompat.onMetadataLoadFailed(new IllegalArgumentException("metadataRepo cannot be null"));
            return;
        }
        this.mMetadataRepo = metadataRepo;
        MetadataRepo metadataRepo2 = this.mMetadataRepo;
        EmojiCompat$SpanFactory emojiCompat$SpanFactoryAccess$000 = EmojiCompat.access$000(this.mEmojiCompat);
        EmojiCompat$GlyphChecker emojiCompat$GlyphCheckerAccess$100 = EmojiCompat.access$100(this.mEmojiCompat);
        EmojiCompat emojiCompat = this.mEmojiCompat;
        this.mProcessor = new EmojiProcessor(metadataRepo2, emojiCompat$SpanFactoryAccess$000, emojiCompat$GlyphCheckerAccess$100, emojiCompat.mUseEmojiAsDefaultStyle, emojiCompat.mEmojiAsDefaultStyleExceptions, EmojiExclusions.getEmojiExclusions());
        this.mEmojiCompat.onMetadataLoadSuccess();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public CharSequence process(@NonNull CharSequence charSequence, int i9, int i10, int i11, boolean z8) {
        return this.mProcessor.process(charSequence, i9, i10, i11, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public void updateEditorInfoAttrs(@NonNull EditorInfo editorInfo) {
        editorInfo.extras.putInt(EmojiCompat.EDITOR_INFO_METAVERSION_KEY, this.mMetadataRepo.getMetadataVersion());
        editorInfo.extras.putBoolean(EmojiCompat.EDITOR_INFO_REPLACE_ALL_KEY, this.mEmojiCompat.mReplaceAll);
    }

    @Override // androidx.emoji2.text.EmojiCompat$CompatInternal
    public boolean hasEmojiGlyph(@NonNull CharSequence charSequence, int i9) {
        return this.mProcessor.getEmojiMatch(charSequence, i9) == 1;
    }
}
