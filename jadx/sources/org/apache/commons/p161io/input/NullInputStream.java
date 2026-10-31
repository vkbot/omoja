package org.apache.commons.p161io.input;

import java.io.EOFException;
import java.io.IOException;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NullInputStream extends AbstractInputStream {

    @Deprecated
    public static final NullInputStream INSTANCE = new NullInputStream();
    private long mark;
    private final boolean markSupported;
    private long position;
    private long readLimit;
    private final long size;
    private final boolean throwEofException;

    public NullInputStream(long j10, boolean z9, boolean z10) {
        this.mark = -1L;
        this.size = j10;
        this.markSupported = z9;
        this.throwEofException = z10;
    }

    private void checkThrowEof(String str) throws EOFException {
        if (this.throwEofException) {
            throw new EOFException(str);
        }
    }

    private int handleEof() throws EOFException {
        checkThrowEof("handleEof()");
        return -1;
    }

    @Override // java.io.InputStream
    public int available() {
        if (isClosed()) {
            return 0;
        }
        long j10 = this.size - this.position;
        if (j10 <= 0) {
            return 0;
        }
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // org.apache.commons.p161io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.mark = -1L;
    }

    public long getPosition() {
        return this.position;
    }

    public long getSize() {
        return this.size;
    }

    public NullInputStream init() {
        setClosed(false);
        this.position = 0L;
        this.mark = -1L;
        this.readLimit = 0L;
        return this;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        if (!this.markSupported) {
            throw UnsupportedOperationExceptions.mark();
        }
        this.mark = this.position;
        this.readLimit = i10;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.markSupported;
    }

    public int processByte() {
        return 0;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        checkOpen();
        long j10 = this.position;
        long j11 = this.size;
        if (j10 == j11) {
            return handleEof();
        }
        long j12 = j10 + ((long) i11);
        this.position = j12;
        if (j12 > j11) {
            i11 -= (int) (j12 - j11);
            this.position = j11;
        }
        processBytes(bArr, i10, i11);
        return i11;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        if (!this.markSupported) {
            throw UnsupportedOperationExceptions.reset();
        }
        long j10 = this.mark;
        if (j10 < 0) {
            throw new IOException("No position has been marked");
        }
        if (this.position > this.readLimit + j10) {
            throw new IOException("Marked position [" + this.mark + "] is no longer valid - passed the read limit [" + this.readLimit + "]");
        }
        this.position = j10;
        setClosed(false);
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws EOFException {
        if (isClosed()) {
            checkThrowEof("skip(long)");
            return -1L;
        }
        long j11 = this.position;
        long j12 = this.size;
        if (j11 == j12) {
            return handleEof();
        }
        long j13 = j11 + j10;
        this.position = j13;
        if (j13 <= j12) {
            return j10;
        }
        long j14 = j10 - (j13 - j12);
        this.position = j12;
        return j14;
    }

    public NullInputStream(long j10) {
        this(j10, true, false);
    }

    public NullInputStream() {
        this(0L, true, false);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() {
        checkOpen();
        long j10 = this.position;
        if (j10 == this.size) {
            return handleEof();
        }
        this.position = j10 + 1;
        return processByte();
    }

    public void processBytes(byte[] bArr, int i10, int i11) {
    }
}
