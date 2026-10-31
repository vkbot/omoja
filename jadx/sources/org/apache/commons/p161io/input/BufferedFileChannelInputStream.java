package org.apache.commons.p161io.input;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import kotlin.UByte;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class BufferedFileChannelInputStream extends InputStream {
    private final ByteBuffer byteBuffer;
    private final FileChannel fileChannel;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<BufferedFileChannelInputStream, Builder> {
        private FileChannel fileChannel;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public BufferedFileChannelInputStream get() {
            return new BufferedFileChannelInputStream(this);
        }

        public Builder setFileChannel(FileChannel fileChannel) {
            this.fileChannel = fileChannel;
            return this;
        }
    }

    private BufferedFileChannelInputStream(Builder builder) {
        this.fileChannel = builder.fileChannel != null ? builder.fileChannel : FileChannel.open(builder.getPath(), StandardOpenOption.READ);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(builder.getBufferSize());
        this.byteBuffer = byteBufferAllocateDirect;
        byteBufferAllocateDirect.flip();
    }

    public static Builder builder() {
        return new Builder();
    }

    private void clean(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            cleanDirectBuffer(byteBuffer);
        }
    }

    private void cleanDirectBuffer(ByteBuffer byteBuffer) {
        if (ByteBufferCleaner.isSupported()) {
            ByteBufferCleaner.clean(byteBuffer);
        }
    }

    private boolean refill() throws IOException {
        Input.checkOpen(this.fileChannel.isOpen());
        if (this.byteBuffer.hasRemaining()) {
            return true;
        }
        this.byteBuffer.clear();
        int i10 = 0;
        while (i10 == 0) {
            i10 = this.fileChannel.read(this.byteBuffer);
        }
        this.byteBuffer.flip();
        return i10 >= 0;
    }

    private long skipFromFileChannel(long j10) throws IOException {
        long jPosition = this.fileChannel.position();
        long size = this.fileChannel.size();
        long j11 = size - jPosition;
        FileChannel fileChannel = this.fileChannel;
        if (j10 > j11) {
            fileChannel.position(size);
            return j11;
        }
        fileChannel.position(jPosition + j10);
        return j10;
    }

    @Override // java.io.InputStream
    public synchronized int available() {
        if (!this.fileChannel.isOpen()) {
            return 0;
        }
        if (!refill()) {
            return 0;
        }
        return this.byteBuffer.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.fileChannel.close();
            clean(this.byteBuffer);
        } catch (Throwable th) {
            clean(this.byteBuffer);
            throw th;
        }
    }

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        if (!refill()) {
            return -1;
        }
        int iMin = Math.min(i11, this.byteBuffer.remaining());
        this.byteBuffer.get(bArr, i10, iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public synchronized long skip(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        long jRemaining = this.byteBuffer.remaining();
        ByteBuffer byteBuffer = this.byteBuffer;
        if (jRemaining >= j10) {
            byteBuffer.position(byteBuffer.position() + ((int) j10));
            return j10;
        }
        long jRemaining2 = byteBuffer.remaining();
        this.byteBuffer.position(0);
        this.byteBuffer.flip();
        return jRemaining2 + skipFromFileChannel(j10 - jRemaining2);
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        if (!refill()) {
            return -1;
        }
        return this.byteBuffer.get() & UByte.MAX_VALUE;
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file) {
        this(file, 8192);
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file, int i10) {
        this(file.toPath(), i10);
    }

    @Deprecated
    public BufferedFileChannelInputStream(Path path) {
        this(path, 8192);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public BufferedFileChannelInputStream(Path path, int i10) {
        this(((Builder) builder().setPath(path)).setBufferSize(i10));
    }
}
