package org.apache.commons.p161io.input.buffer;

import ai.onnxruntime.AbstractC0074a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class PeekableInputStream extends CircularBufferInputStream {
    public PeekableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public boolean peek(byte[] bArr, int i10, int i11) throws IOException {
        Objects.requireNonNull(bArr, "sourceBuffer");
        if (bArr.length <= this.bufferSize) {
            if (this.buffer.getCurrentNumberOfBytes() < bArr.length) {
                fillBuffer();
            }
            return this.buffer.peek(bArr, i10, i11);
        }
        StringBuilder sb = new StringBuilder("Peek request size of ");
        sb.append(bArr.length);
        sb.append(" bytes exceeds buffer size of ");
        C1929i.m3029k(AbstractC0074a.m164o(sb, " bytes", this.bufferSize));
        return false;
    }

    public PeekableInputStream(InputStream inputStream, int i10) {
        super(inputStream, i10);
    }

    public boolean peek(byte[] bArr) {
        Objects.requireNonNull(bArr, "sourceBuffer");
        return peek(bArr, 0, bArr.length);
    }
}
