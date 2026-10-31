package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Blob extends FlexBuffers$Sized {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final FlexBuffers$Blob EMPTY = new FlexBuffers$Blob(FlexBuffers.access$000(), 1, 1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlexBuffers$Blob(ReadBuf readBuf, int i9, int i10) {
        super(readBuf, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FlexBuffers$Blob empty() {
        return EMPTY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteBuffer data() {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.bb.data());
        byteBufferWrap.position(this.end);
        byteBufferWrap.limit(size() + this.end);
        return byteBufferWrap.asReadOnlyBuffer().slice();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte get(int i9) {
        return this.bb.get(this.end + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getBytes() {
        int size = size();
        byte[] bArr = new byte[size];
        for (int i9 = 0; i9 < size; i9++) {
            bArr[i9] = this.bb.get(this.end + i9);
        }
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Sized
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public StringBuilder toString(StringBuilder sb) {
        sb.append('\"');
        sb.append(this.bb.getString(this.end, size()));
        sb.append('\"');
        return sb;
    }

    @Override // androidx.emoji2.text.flatbuffer.FlexBuffers$Object
    public String toString() {
        return this.bb.getString(this.end, size());
    }
}
