package androidx.emoji2.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MetadataListReader$OffsetInfo {
    private final long mLength;
    private final long mStartOffset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataListReader$OffsetInfo(long j9, long j10) {
        this.mStartOffset = j9;
        this.mLength = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getLength() {
        return this.mLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getStartOffset() {
        return this.mStartOffset;
    }
}
