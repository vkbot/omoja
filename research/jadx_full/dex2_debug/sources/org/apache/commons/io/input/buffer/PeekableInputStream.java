package org.apache.commons.io.input.buffer;

import ai.onnxruntime.a;
import j1.i;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class PeekableInputStream extends CircularBufferInputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PeekableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean peek(byte[] bArr, int i, int i2) throws IOException {
        Objects.requireNonNull(bArr, "sourceBuffer");
        if (bArr.length <= this.bufferSize) {
            if (this.buffer.getCurrentNumberOfBytes() < bArr.length) {
                fillBuffer();
            }
            return this.buffer.peek(bArr, i, i2);
        }
        StringBuilder sb = new StringBuilder("Peek request size of ");
        sb.append(bArr.length);
        sb.append(" bytes exceeds buffer size of ");
        i.k(a.o(sb, " bytes", this.bufferSize));
        return false;
    }

    public PeekableInputStream(InputStream inputStream, int i) {
        super(inputStream, i);
    }

    public boolean peek(byte[] bArr) {
        Objects.requireNonNull(bArr, "sourceBuffer");
        return peek(bArr, 0, bArr.length);
    }
}
