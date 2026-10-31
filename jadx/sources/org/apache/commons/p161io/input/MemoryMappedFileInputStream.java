package org.apache.commons.p161io.input;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.StandardOpenOption;
import kotlin.UShort;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class MemoryMappedFileInputStream extends AbstractInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 262144;
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.wrap(new byte[0]).asReadOnlyBuffer();
    private ByteBuffer buffer;
    private final int bufferSize;
    private final FileChannel channel;
    private long nextBufferPosition;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<MemoryMappedFileInputStream, Builder> {
        public Builder() {
            setBufferSizeDefault(262144);
            setBufferSize(262144);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public MemoryMappedFileInputStream get() {
            return new MemoryMappedFileInputStream(this);
        }
    }

    private MemoryMappedFileInputStream(Builder builder) {
        this.buffer = EMPTY_BUFFER;
        this.bufferSize = builder.getBufferSize();
        this.channel = FileChannel.open(builder.getPath(), StandardOpenOption.READ);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void cleanBuffer() {
        if (ByteBufferCleaner.isSupported() && this.buffer.isDirect()) {
            ByteBufferCleaner.clean(this.buffer);
        }
    }

    private void nextBuffer() {
        long size = this.channel.size() - this.nextBufferPosition;
        if (size <= 0) {
            this.buffer = EMPTY_BUFFER;
            return;
        }
        long jMin = Math.min(size, this.bufferSize);
        cleanBuffer();
        this.buffer = this.channel.map(FileChannel.MapMode.READ_ONLY, this.nextBufferPosition, jMin);
        this.nextBufferPosition += jMin;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.buffer.remaining();
    }

    @Override // org.apache.commons.p161io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (isClosed()) {
            return;
        }
        cleanBuffer();
        this.buffer = EMPTY_BUFFER;
        this.channel.close();
        super.close();
    }

    public int getBufferSize() {
        return this.bufferSize;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        checkOpen();
        if (!this.buffer.hasRemaining()) {
            nextBuffer();
            if (!this.buffer.hasRemaining()) {
                return -1;
            }
        }
        int iMin = Math.min(this.buffer.remaining(), i11);
        this.buffer.get(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        checkOpen();
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 <= this.buffer.remaining()) {
            ByteBuffer byteBuffer = this.buffer;
            byteBuffer.position((int) (((long) byteBuffer.position()) + j10));
            return j10;
        }
        long jMin = Math.min(this.channel.size() - this.nextBufferPosition, j10 - ((long) this.buffer.remaining())) + ((long) this.buffer.remaining());
        this.nextBufferPosition = (jMin - ((long) this.buffer.remaining())) + this.nextBufferPosition;
        nextBuffer();
        return jMin;
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
        return this.buffer.get() & UShort.MAX_VALUE;
    }
}
