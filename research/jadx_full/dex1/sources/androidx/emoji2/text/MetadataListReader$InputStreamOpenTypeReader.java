package androidx.emoji2.text;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MetadataListReader$InputStreamOpenTypeReader implements MetadataListReader$OpenTypeReader {

    @NonNull
    private final byte[] mByteArray;

    @NonNull
    private final ByteBuffer mByteBuffer;

    @NonNull
    private final InputStream mInputStream;
    private long mPosition = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MetadataListReader$InputStreamOpenTypeReader(@NonNull InputStream inputStream) {
        this.mInputStream = inputStream;
        byte[] bArr = new byte[4];
        this.mByteArray = bArr;
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.mByteBuffer = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void read(@IntRange(from = ULong.MIN_VALUE, to = 4) int i9) throws IOException {
        if (this.mInputStream.read(this.mByteArray, 0, i9) == i9) {
            this.mPosition += (long) i9;
        } else {
            n0.b.A("read failed");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public long getPosition() {
        return this.mPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public int readTag() throws IOException {
        this.mByteBuffer.position(0);
        read(4);
        return this.mByteBuffer.getInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public long readUnsignedInt() throws IOException {
        this.mByteBuffer.position(0);
        read(4);
        return MetadataListReader.toUnsignedInt(this.mByteBuffer.getInt());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public int readUnsignedShort() throws IOException {
        this.mByteBuffer.position(0);
        read(2);
        return MetadataListReader.toUnsignedShort(this.mByteBuffer.getShort());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.MetadataListReader$OpenTypeReader
    public void skip(int i9) throws IOException {
        while (i9 > 0) {
            int iSkip = (int) this.mInputStream.skip(i9);
            if (iSkip < 1) {
                n0.b.A("Skip didn't move at least 1 byte forward");
                return;
            } else {
                i9 -= iSkip;
                this.mPosition += (long) iSkip;
            }
        }
    }
}
