package org.apache.commons.io.input;

import java.io.EOFException;
import java.io.IOException;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class NullInputStream extends AbstractInputStream {

    @Deprecated
    public static final NullInputStream INSTANCE = new NullInputStream();
    private long mark;
    private final boolean markSupported;
    private long position;
    private long readLimit;
    private final long size;
    private final boolean throwEofException;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NullInputStream(long j, boolean z, boolean z2) {
        this.mark = -1L;
        this.size = j;
        this.markSupported = z;
        this.throwEofException = z2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkThrowEof(String str) throws EOFException {
        if (this.throwEofException) {
            throw new EOFException(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int handleEof() throws EOFException {
        checkThrowEof("handleEof()");
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        if (isClosed()) {
            return 0;
        }
        long j = this.size - this.position;
        if (j <= 0) {
            return 0;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.mark = -1L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getPosition() {
        return this.position;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getSize() {
        return this.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NullInputStream init() {
        setClosed(false);
        this.position = 0L;
        this.mark = -1L;
        this.readLimit = 0L;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        if (!this.markSupported) {
            throw UnsupportedOperationExceptions.mark();
        }
        this.mark = this.position;
        this.readLimit = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.markSupported;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int processByte() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        checkOpen();
        long j = this.position;
        long j2 = this.size;
        if (j == j2) {
            return handleEof();
        }
        long j3 = j + ((long) i2);
        this.position = j3;
        if (j3 > j2) {
            i2 -= (int) (j3 - j2);
            this.position = j2;
        }
        processBytes(bArr, i, i2);
        return i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public synchronized void reset() {
        if (!this.markSupported) {
            throw UnsupportedOperationExceptions.reset();
        }
        long j = this.mark;
        if (j < 0) {
            throw new IOException("No position has been marked");
        }
        if (this.position > this.readLimit + j) {
            throw new IOException("Marked position [" + this.mark + "] is no longer valid - passed the read limit [" + this.readLimit + "]");
        }
        this.position = j;
        setClosed(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public long skip(long j) throws EOFException {
        if (isClosed()) {
            checkThrowEof("skip(long)");
            return -1L;
        }
        long j2 = this.position;
        long j3 = this.size;
        if (j2 == j3) {
            return handleEof();
        }
        long j4 = j2 + j;
        this.position = j4;
        if (j4 <= j3) {
            return j;
        }
        long j5 = j - (j4 - j3);
        this.position = j3;
        return j5;
    }

    public NullInputStream(long j) {
        this(j, true, false);
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
        long j = this.position;
        if (j == this.size) {
            return handleEof();
        }
        this.position = j + 1;
        return processByte();
    }

    public void processBytes(byte[] bArr, int i, int i2) {
    }
}
