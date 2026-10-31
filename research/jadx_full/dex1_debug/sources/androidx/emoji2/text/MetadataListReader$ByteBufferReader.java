package androidx.emoji2.text;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MetadataListReader$ByteBufferReader implements MetadataListReader$OpenTypeReader {

    @NonNull
    private final ByteBuffer mByteBuffer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataListReader$ByteBufferReader(@NonNull ByteBuffer byteBuffer) {
        this.mByteBuffer = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public long getPosition() {
        return this.mByteBuffer.position();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public int readTag() {
        return this.mByteBuffer.getInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public long readUnsignedInt() {
        return MetadataListReader.toUnsignedInt(this.mByteBuffer.getInt());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public int readUnsignedShort() {
        return MetadataListReader.toUnsignedShort(this.mByteBuffer.getShort());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public void skip(int i9) {
        ByteBuffer byteBuffer = this.mByteBuffer;
        byteBuffer.position(byteBuffer.position() + i9);
    }
}
