package org.apache.commons.io.input;

import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.util.Objects;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class RandomAccessFileInputStream extends AbstractInputStream {
    private final boolean propagateClose;
    private final RandomAccessFile randomAccessFile;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public RandomAccessFileInputStream(RandomAccessFile randomAccessFile, boolean z) {
        Objects.requireNonNull(randomAccessFile, "file");
        this.randomAccessFile = randomAccessFile;
        this.propagateClose = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RandomAccessFileInputStream$Builder builder() {
        return new RandomAccessFileInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        return Math.toIntExact(Math.min(availableLong(), 2147483647L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long availableLong() {
        if (isClosed()) {
            return 0L;
        }
        return this.randomAccessFile.length() - this.randomAccessFile.getFilePointer();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.propagateClose) {
            this.randomAccessFile.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long copy(long j, long j2, OutputStream outputStream) throws IOException {
        this.randomAccessFile.seek(j);
        return IOUtils.copyLarge(this, outputStream, 0L, j2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RandomAccessFile getRandomAccessFile() {
        return this.randomAccessFile;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isCloseOnClose() {
        return this.propagateClose;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read() {
        return this.randomAccessFile.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        long filePointer = this.randomAccessFile.getFilePointer();
        long length = this.randomAccessFile.length();
        if (filePointer >= length) {
            return 0L;
        }
        long j2 = j + filePointer;
        if (j2 > length) {
            j2 = length - 1;
        }
        if (j2 > 0) {
            this.randomAccessFile.seek(j2);
        }
        return this.randomAccessFile.getFilePointer() - filePointer;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return this.randomAccessFile.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return this.randomAccessFile.read(bArr, i, i2);
    }

    private RandomAccessFileInputStream(RandomAccessFileInputStream$Builder randomAccessFileInputStream$Builder) {
        this(randomAccessFileInputStream$Builder.getRandomAccessFile(), RandomAccessFileInputStream$Builder.access$100(randomAccessFileInputStream$Builder));
    }

    @Deprecated
    public RandomAccessFileInputStream(RandomAccessFile randomAccessFile) {
        this(randomAccessFile, false);
    }

    public /* synthetic */ RandomAccessFileInputStream(RandomAccessFileInputStream$Builder randomAccessFileInputStream$Builder, RandomAccessFileInputStream$1 randomAccessFileInputStream$1) {
        this(randomAccessFileInputStream$Builder);
    }
}
