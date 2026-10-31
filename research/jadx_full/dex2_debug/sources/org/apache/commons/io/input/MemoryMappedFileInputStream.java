package org.apache.commons.io.input;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel$MapMode;
import java.nio.file.OpenOption;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class MemoryMappedFileInputStream extends AbstractInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 262144;
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.wrap(new byte[0]).asReadOnlyBuffer();
    private ByteBuffer buffer;
    private final int bufferSize;
    private final FileChannel channel;
    private long nextBufferPosition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MemoryMappedFileInputStream(MemoryMappedFileInputStream$Builder memoryMappedFileInputStream$Builder) {
        this.buffer = EMPTY_BUFFER;
        this.bufferSize = memoryMappedFileInputStream$Builder.getBufferSize();
        this.channel = org.apache.commons.io.file.f.d(memoryMappedFileInputStream$Builder.getPath(), new OpenOption[]{org.apache.commons.io.filefilter.f.g()});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MemoryMappedFileInputStream$Builder builder() {
        return new MemoryMappedFileInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cleanBuffer() {
        if (ByteBufferCleaner.isSupported() && this.buffer.isDirect()) {
            ByteBufferCleaner.clean(this.buffer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void nextBuffer() {
        long size = this.channel.size() - this.nextBufferPosition;
        if (size <= 0) {
            this.buffer = EMPTY_BUFFER;
            return;
        }
        long jMin = Math.min(size, this.bufferSize);
        cleanBuffer();
        this.buffer = this.channel.map(FileChannel$MapMode.READ_ONLY, this.nextBufferPosition, jMin);
        this.nextBufferPosition += jMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        return this.buffer.remaining();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (isClosed()) {
            return;
        }
        cleanBuffer();
        this.buffer = EMPTY_BUFFER;
        this.channel.close();
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBufferSize() {
        return this.bufferSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        checkOpen();
        if (!this.buffer.hasRemaining()) {
            nextBuffer();
            if (!this.buffer.hasRemaining()) {
                return -1;
            }
        }
        int iMin = Math.min(this.buffer.remaining(), i2);
        this.buffer.get(bArr, i, iMin);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public long skip(long j) {
        checkOpen();
        if (j <= 0) {
            return 0L;
        }
        if (j <= this.buffer.remaining()) {
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.position((int) (((long) byteBuffer.position()) + j));
            return j;
        }
        long jMin = Math.min(this.channel.size() - this.nextBufferPosition, j - ((long) this.buffer.remaining())) + ((long) this.buffer.remaining());
        this.nextBufferPosition = (jMin - ((long) this.buffer.remaining())) + this.nextBufferPosition;
        nextBuffer();
        return jMin;
    }

    public /* synthetic */ MemoryMappedFileInputStream(MemoryMappedFileInputStream$Builder memoryMappedFileInputStream$Builder, MemoryMappedFileInputStream$1 memoryMappedFileInputStream$1) {
        this(memoryMappedFileInputStream$Builder);
    }

    @Override // java.io.InputStream
    public int read() {
        checkOpen();
        if (!this.buffer.hasRemaining()) {
            nextBuffer();
            if (!this.buffer.hasRemaining()) {
                return -1;
            }
        }
        return this.buffer.get() & 65535;
    }
}
