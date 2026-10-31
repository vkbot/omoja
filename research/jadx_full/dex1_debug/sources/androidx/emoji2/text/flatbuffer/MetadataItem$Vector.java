package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class MetadataItem$Vector extends BaseVector {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataItem$Vector __assign(int i9, int i10, ByteBuffer byteBuffer) {
        __reset(i9, i10, byteBuffer);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataItem get(MetadataItem metadataItem, int i9) {
        return metadataItem.__assign(MetadataItem.access$000(__element(i9), this.bb), this.bb);
    }

    public MetadataItem get(int i9) {
        return get(new MetadataItem(), i9);
    }
}
