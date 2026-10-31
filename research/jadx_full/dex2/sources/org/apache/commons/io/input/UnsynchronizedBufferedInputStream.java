package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UnsynchronizedBufferedInputStream extends UnsynchronizedFilterInputStream {
    protected volatile byte[] buffer;
    protected int count;
    protected int markLimit;
    protected int markPos;
    protected int pos;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UnsynchronizedBufferedInputStream(UnsynchronizedBufferedInputStream$Builder unsynchronizedBufferedInputStream$Builder) {
        super(unsynchronizedBufferedInputStream$Builder.getInputStream());
        this.markPos = -1;
        int bufferSize = unsynchronizedBufferedInputStream$Builder.getBufferSize();
        if (bufferSize > 0) {
            this.buffer = new byte[bufferSize];
        } else {
            j1.i.k("Size must be > 0");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int fillBuffer(InputStream inputStream, byte[] bArr) throws IOException {
        int i = this.markPos;
        if (i != -1) {
            int i2 = this.pos - i;
            int i3 = this.markLimit;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.buffer = bArr2;
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.pos - this.markPos;
                this.pos = i4;
                this.markPos = 0;
                this.count = 0;
                int i5 = inputStream.read(bArr, i4, bArr.length - i4);
                int i6 = this.pos;
                if (i5 > 0) {
                    i6 += i5;
                }
                this.count = i6;
                return i5;
            }
        }
        int i7 = inputStream.read(bArr);
        if (i7 > 0) {
            this.markPos = -1;
            this.pos = 0;
            this.count = i7;
        }
        return i7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int available() {
        InputStream inputStream = this.inputStream;
        if (this.buffer == null || inputStream == null) {
            n0.b.A("Stream is closed");
            return 0;
        }
        return inputStream.available() + (this.count - this.pos);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.buffer = null;
        InputStream inputStream = this.inputStream;
        this.inputStream = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getBuffer() {
        return this.buffer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public void mark(int i) {
        this.markLimit = i;
        this.markPos = this.pos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        byte[] bArr2 = this.buffer;
        if (bArr2 == null) {
            n0.b.A("Stream is closed");
            return 0;
        }
        InputStream inputStream = this.inputStream;
        if (inputStream == null) {
            n0.b.A("Stream is closed");
            return 0;
        }
        int i5 = this.pos;
        int i6 = this.count;
        if (i5 < i6) {
            int i7 = i6 - i5 >= i2 ? i2 : i6 - i5;
            System.arraycopy(bArr2, i5, bArr, i, i7);
            this.pos += i7;
            if (i7 == i2 || inputStream.available() == 0) {
                return i7;
            }
            i += i7;
            i3 = i2 - i7;
        } else {
            i3 = i2;
        }
        while (true) {
            if (this.markPos == -1 && i3 >= bArr2.length) {
                i4 = inputStream.read(bArr, i, i3);
                if (i4 == -1) {
                    if (i3 == i2) {
                        return -1;
                    }
                    return i2 - i3;
                }
            } else {
                if (fillBuffer(inputStream, bArr2) == -1) {
                    if (i3 == i2) {
                        return -1;
                    }
                    return i2 - i3;
                }
                if (bArr2 != this.buffer && (bArr2 = this.buffer) == null) {
                    n0.b.A("Stream is closed");
                    return 0;
                }
                int i8 = this.count;
                int i10 = this.pos;
                i4 = i8 - i10 >= i3 ? i3 : i8 - i10;
                System.arraycopy(bArr2, i10, bArr, i, i4);
                this.pos += i4;
            }
            i3 -= i4;
            if (i3 == 0) {
                return i2;
            }
            if (inputStream.available() == 0) {
                return i2 - i3;
            }
            i += i4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public void reset() {
        if (this.buffer == null) {
            n0.b.A("Stream is closed");
            return;
        }
        int i = this.markPos;
        if (-1 != i) {
            this.pos = i;
        } else {
            n0.b.A("Mark has been invalidated");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public long skip(long j) {
        byte[] bArr = this.buffer;
        InputStream inputStream = this.inputStream;
        if (bArr == null) {
            n0.b.A("Stream is closed");
            return 0L;
        }
        if (j < 1) {
            return 0L;
        }
        if (inputStream == null) {
            n0.b.A("Stream is closed");
            return 0L;
        }
        int i = this.count;
        int i2 = this.pos;
        if (i - i2 >= j) {
            this.pos = i2 + ((int) j);
            return j;
        }
        int i3 = i - i2;
        this.pos = i;
        if (this.markPos == -1 || j > this.markLimit) {
            long j2 = i3;
            return inputStream.skip(j - j2) + j2;
        }
        if (fillBuffer(inputStream, bArr) == -1) {
            return i3;
        }
        int i4 = this.count;
        int i5 = this.pos;
        if (i4 - i5 >= j - ((long) i3)) {
            this.pos = (((int) j) - i3) + i5;
            return j;
        }
        this.pos = i4;
        return (i4 - i5) + i3;
    }

    public /* synthetic */ UnsynchronizedBufferedInputStream(UnsynchronizedBufferedInputStream$Builder unsynchronizedBufferedInputStream$Builder, UnsynchronizedBufferedInputStream$1 unsynchronizedBufferedInputStream$1) {
        this(unsynchronizedBufferedInputStream$Builder);
    }

    @Override // org.apache.commons.io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int read() {
        byte[] bArr = this.buffer;
        InputStream inputStream = this.inputStream;
        if (bArr != null && inputStream != null) {
            if (this.pos >= this.count && fillBuffer(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.buffer && (bArr = this.buffer) == null) {
                n0.b.A("Stream is closed");
                return 0;
            }
            int i = this.count;
            int i2 = this.pos;
            if (i - i2 <= 0) {
                return -1;
            }
            this.pos = i2 + 1;
            return bArr[i2] & 255;
        }
        n0.b.A("Stream is closed");
        return 0;
    }
}
