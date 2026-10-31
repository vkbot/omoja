package androidx.emoji2.text.flatbuffer;

import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlatBufferBuilder$ByteBufferBackedInputStream extends InputStream {
    ByteBuffer buf;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlatBufferBuilder$ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
        this.buf = byteBuffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read() {
        try {
            return this.buf.get() & UByte.MAX_VALUE;
        } catch (BufferUnderflowException unused) {
            return -1;
        }
    }
}
