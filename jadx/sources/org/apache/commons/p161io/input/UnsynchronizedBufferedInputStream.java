package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UnsynchronizedBufferedInputStream extends UnsynchronizedFilterInputStream {
    protected volatile byte[] buffer;
    protected int count;
    protected int markLimit;
    protected int markPos;
    protected int pos;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedBufferedInputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public UnsynchronizedBufferedInputStream get() {
            return new UnsynchronizedBufferedInputStream(this);
        }
    }

    private UnsynchronizedBufferedInputStream(Builder builder) {
        super(builder.getInputStream());
        this.markPos = -1;
        int bufferSize = builder.getBufferSize();
        if (bufferSize > 0) {
            this.buffer = new byte[bufferSize];
        } else {
            C1929i.m3029k("Size must be > 0");
            throw null;
        }
    }

    private int fillBuffer(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.markPos;
        if (i10 != -1) {
            int i11 = this.pos - i10;
            int i12 = this.markLimit;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = new byte[i12];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.buffer = bArr2;
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.pos - this.markPos;
                this.pos = i13;
                this.markPos = 0;
                this.count = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.pos;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.count = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.markPos = -1;
            this.pos = 0;
            this.count = i16;
        }
        return i16;
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.inputStream;
        if (this.buffer == null || inputStream == null) {
            C2467b.m3820A("Stream is closed");
            return 0;
        }
        return inputStream.available() + (this.count - this.pos);
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.buffer = null;
        InputStream inputStream = this.inputStream;
        this.inputStream = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public void mark(int i10) {
        this.markLimit = i10;
        this.markPos = this.pos;
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        byte[] bArr2 = this.buffer;
        if (bArr2 == null) {
            C2467b.m3820A("Stream is closed");
            return 0;
        }
        InputStream inputStream = this.inputStream;
        if (inputStream == null) {
            C2467b.m3820A("Stream is closed");
            return 0;
        }
        int i14 = this.pos;
        int i15 = this.count;
        if (i14 < i15) {
            int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
            System.arraycopy(bArr2, i14, bArr, i10, i16);
            this.pos += i16;
            if (i16 == i11 || inputStream.available() == 0) {
                return i16;
            }
            i10 += i16;
            i12 = i11 - i16;
        } else {
            i12 = i11;
        }
        while (true) {
            if (this.markPos == -1 && i12 >= bArr2.length) {
                i13 = inputStream.read(bArr, i10, i12);
                if (i13 == -1) {
                    if (i12 == i11) {
                        return -1;
                    }
                    return i11 - i12;
                }
            } else {
                if (fillBuffer(inputStream, bArr2) == -1) {
                    if (i12 == i11) {
                        return -1;
                    }
                    return i11 - i12;
                }
                if (bArr2 != this.buffer && (bArr2 = this.buffer) == null) {
                    C2467b.m3820A("Stream is closed");
                    return 0;
                }
                int i17 = this.count;
                int i18 = this.pos;
                i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                System.arraycopy(bArr2, i18, bArr, i10, i13);
                this.pos += i13;
            }
            i12 -= i13;
            if (i12 == 0) {
                return i11;
            }
            if (inputStream.available() == 0) {
                return i11 - i12;
            }
            i10 += i13;
        }
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (this.buffer == null) {
            C2467b.m3820A("Stream is closed");
            return;
        }
        int i10 = this.markPos;
        if (-1 != i10) {
            this.pos = i10;
        } else {
            C2467b.m3820A("Mark has been invalidated");
        }
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        byte[] bArr = this.buffer;
        InputStream inputStream = this.inputStream;
        if (bArr == null) {
            C2467b.m3820A("Stream is closed");
            return 0L;
        }
        if (j10 < 1) {
            return 0L;
        }
        if (inputStream == null) {
            C2467b.m3820A("Stream is closed");
            return 0L;
        }
        int i10 = this.count;
        int i11 = this.pos;
        if (i10 - i11 >= j10) {
            this.pos = i11 + ((int) j10);
            return j10;
        }
        int i12 = i10 - i11;
        this.pos = i10;
        if (this.markPos == -1 || j10 > this.markLimit) {
            long j11 = i12;
            return inputStream.skip(j10 - j11) + j11;
        }
        if (fillBuffer(inputStream, bArr) == -1) {
            return i12;
        }
        int i13 = this.count;
        int i14 = this.pos;
        if (i13 - i14 >= j10 - ((long) i12)) {
            this.pos = (((int) j10) - i12) + i14;
            return j10;
        }
        this.pos = i13;
        return (i13 - i14) + i12;
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedFilterInputStream, java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.buffer;
        InputStream inputStream = this.inputStream;
        if (bArr != null && inputStream != null) {
            if (this.pos >= this.count && fillBuffer(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.buffer && (bArr = this.buffer) == null) {
                C2467b.m3820A("Stream is closed");
                return 0;
            }
            int i10 = this.count;
            int i11 = this.pos;
            if (i10 - i11 <= 0) {
                return -1;
            }
            this.pos = i11 + 1;
            return bArr[i11] & UByte.MAX_VALUE;
        }
        C2467b.m3820A("Stream is closed");
        return 0;
    }
}
