package androidx.emoji2.text;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class EmojiProcessor$ProcessorSm {
    private static final int STATE_DEFAULT = 1;
    private static final int STATE_WALKING = 2;
    private int mCurrentDepth;
    private MetadataRepo$Node mCurrentNode;
    private final int[] mEmojiAsDefaultStyleExceptions;
    private MetadataRepo$Node mFlushNode;
    private int mLastCodepoint;
    private final MetadataRepo$Node mRootNode;
    private int mState = 1;
    private final boolean mUseEmojiAsDefaultStyle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public EmojiProcessor$ProcessorSm(MetadataRepo$Node metadataRepo$Node, boolean z8, int[] iArr) {
        this.mRootNode = metadataRepo$Node;
        this.mCurrentNode = metadataRepo$Node;
        this.mUseEmojiAsDefaultStyle = z8;
        this.mEmojiAsDefaultStyleExceptions = iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isEmojiStyle(int i9) {
        return i9 == 65039;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isTextStyle(int i9) {
        return i9 == 65038;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int reset() {
        this.mState = 1;
        this.mCurrentNode = this.mRootNode;
        this.mCurrentDepth = 0;
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
        if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
            return true;
        }
        if (this.mUseEmojiAsDefaultStyle) {
            if (this.mEmojiAsDefaultStyleExceptions == null) {
                return true;
            }
            if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int check(int i9) {
        MetadataRepo$Node metadataRepo$Node = this.mCurrentNode.get(i9);
        int iReset = 2;
        if (this.mState != 2) {
            if (metadataRepo$Node == null) {
                iReset = reset();
            } else {
                this.mState = 2;
                this.mCurrentNode = metadataRepo$Node;
                this.mCurrentDepth = 1;
            }
        } else if (metadataRepo$Node != null) {
            this.mCurrentNode = metadataRepo$Node;
            this.mCurrentDepth++;
        } else if (isTextStyle(i9)) {
            iReset = reset();
        } else if (!isEmojiStyle(i9)) {
            if (this.mCurrentNode.getData() != null) {
                iReset = 3;
                if (this.mCurrentDepth != 1 || shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                    this.mFlushNode = this.mCurrentNode;
                    reset();
                } else {
                    iReset = reset();
                }
            } else {
                iReset = reset();
            }
        }
        this.mLastCodepoint = i9;
        return iReset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypefaceEmojiRasterizer getCurrentMetadata() {
        return this.mCurrentNode.getData();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypefaceEmojiRasterizer getFlushMetadata() {
        return this.mFlushNode.getData();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInFlushableState() {
        if (this.mState != 2 || this.mCurrentNode.getData() == null) {
            return false;
        }
        return this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint();
    }
}
