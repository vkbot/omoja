package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FlatBufferBuilder$HeapByteBufferFactory extends FlatBufferBuilder$ByteBufferFactory {
    public static final FlatBufferBuilder$HeapByteBufferFactory INSTANCE = new FlatBufferBuilder$HeapByteBufferFactory();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder$ByteBufferFactory
    public ByteBuffer newByteBuffer(int i9) {
        return ByteBuffer.allocate(i9).order(ByteOrder.LITTLE_ENDIAN);
    }
}
