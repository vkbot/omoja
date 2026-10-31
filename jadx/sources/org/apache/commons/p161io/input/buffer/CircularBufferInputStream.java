package org.apache.commons.p161io.input.buffer;

import ai.onnxruntime.AbstractC0074a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import kotlin.UByte;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CircularBufferInputStream extends FilterInputStream {
    protected final CircularByteBuffer buffer;
    protected final int bufferSize;
    private boolean eof;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularBufferInputStream(InputStream inputStream, int i10) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        if (i10 <= 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Illegal bufferSize: "));
            throw null;
        }
        this.buffer = new CircularByteBuffer(i10);
        this.bufferSize = i10;
        this.eof = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.eof = true;
        this.buffer.clear();
    }

    public void fillBuffer() throws IOException {
        if (this.eof) {
            return;
        }
        int space = this.buffer.getSpace();
        byte[] bArrByteArray = IOUtils.byteArray(space);
        while (space > 0) {
            int i10 = ((FilterInputStream) this).in.read(bArrByteArray, 0, space);
            if (i10 == -1) {
                this.eof = true;
                return;
            } else if (i10 > 0) {
                this.buffer.add(bArrByteArray, 0, i10);
                space -= i10;
            }
        }
    }

    public boolean haveBytes(int i10) throws IOException {
        if (this.buffer.getCurrentNumberOfBytes() < i10) {
            fillBuffer();
        }
        return this.buffer.hasBytes();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        if (!haveBytes(i11)) {
            return -1;
        }
        int iMin = Math.min(i11, this.buffer.getCurrentNumberOfBytes());
        for (int i12 = 0; i12 < iMin; i12++) {
            bArr[i10 + i12] = this.buffer.read();
        }
        return iMin;
    }

    public CircularBufferInputStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (haveBytes(1)) {
            return this.buffer.read() & UByte.MAX_VALUE;
        }
        return -1;
    }
}
