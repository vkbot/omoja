package org.apache.commons.io.input.buffer;

import ai.onnxruntime.a;
import j1.i;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CircularBufferInputStream extends FilterInputStream {
    protected final CircularByteBuffer buffer;
    protected final int bufferSize;
    private boolean eof;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularBufferInputStream(InputStream inputStream, int i) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        if (i <= 0) {
            i.k(a.e(i, "Illegal bufferSize: "));
            throw null;
        }
        this.buffer = new CircularByteBuffer(i);
        this.bufferSize = i;
        this.eof = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.eof = true;
        this.buffer.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillBuffer() throws IOException {
        if (this.eof) {
            return;
        }
        int space = this.buffer.getSpace();
        byte[] bArrByteArray = IOUtils.byteArray(space);
        while (space > 0) {
            int i = ((FilterInputStream) this).in.read(bArrByteArray, 0, space);
            if (i == -1) {
                this.eof = true;
                return;
            } else if (i > 0) {
                this.buffer.add(bArrByteArray, 0, i);
                space -= i;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean haveBytes(int i) throws IOException {
        if (this.buffer.getCurrentNumberOfBytes() < i) {
            fillBuffer();
        }
        return this.buffer.hasBytes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        if (!haveBytes(i2)) {
            return -1;
        }
        int iMin = Math.min(i2, this.buffer.getCurrentNumberOfBytes());
        for (int i3 = 0; i3 < iMin; i3++) {
            bArr[i + i3] = this.buffer.read();
        }
        return iMin;
    }

    public CircularBufferInputStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (haveBytes(1)) {
            return this.buffer.read() & 255;
        }
        return -1;
    }
}
