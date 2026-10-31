package org.apache.commons.io.input;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class BufferedFileChannelInputStream extends InputStream {
    private final ByteBuffer byteBuffer;
    private final FileChannel fileChannel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BufferedFileChannelInputStream(BufferedFileChannelInputStream$Builder bufferedFileChannelInputStream$Builder) {
        this.fileChannel = BufferedFileChannelInputStream$Builder.access$100(bufferedFileChannelInputStream$Builder) != null ? BufferedFileChannelInputStream$Builder.access$100(bufferedFileChannelInputStream$Builder) : org.apache.commons.io.file.f.d(bufferedFileChannelInputStream$Builder.getPath(), new OpenOption[]{org.apache.commons.io.filefilter.f.g()});
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bufferedFileChannelInputStream$Builder.getBufferSize());
        this.byteBuffer = byteBufferAllocateDirect;
        byteBufferAllocateDirect.flip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BufferedFileChannelInputStream$Builder builder() {
        return new BufferedFileChannelInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void clean(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            cleanDirectBuffer(byteBuffer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cleanDirectBuffer(ByteBuffer byteBuffer) {
        if (ByteBufferCleaner.isSupported()) {
            ByteBufferCleaner.clean(byteBuffer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean refill() throws IOException {
        Input.checkOpen(this.fileChannel.isOpen());
        if (this.byteBuffer.hasRemaining()) {
            return true;
        }
        this.byteBuffer.clear();
        int i = 0;
        while (i == 0) {
            i = this.fileChannel.read(this.byteBuffer);
        }
        this.byteBuffer.flip();
        return i >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long skipFromFileChannel(long j) throws IOException {
        long jPosition = this.fileChannel.position();
        long size = this.fileChannel.size();
        long j2 = size - jPosition;
        FileChannel fileChannel = this.fileChannel;
        if (j > j2) {
            fileChannel.position(size);
            return j2;
        }
        fileChannel.position(jPosition + j);
        return j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        if (!refill()) {
            return -1;
        }
        int iMin = Math.min(i2, this.byteBuffer.remaining());
        this.byteBuffer.get(bArr, i, iMin);
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public synchronized long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        long jRemaining = this.byteBuffer.remaining();
        ByteBuffer byteBuffer = this.byteBuffer;
        if (jRemaining >= j) {
            byteBuffer.position(byteBuffer.position() + ((int) j));
            return j;
        }
        long jRemaining2 = byteBuffer.remaining();
        this.byteBuffer.position(0);
        this.byteBuffer.flip();
        return jRemaining2 + skipFromFileChannel(j - jRemaining2);
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        if (!refill()) {
            return -1;
        }
        return this.byteBuffer.get() & 255;
    }

    public /* synthetic */ BufferedFileChannelInputStream(BufferedFileChannelInputStream$Builder bufferedFileChannelInputStream$Builder, BufferedFileChannelInputStream$1 bufferedFileChannelInputStream$1) {
        this(bufferedFileChannelInputStream$Builder);
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file) {
        this(file, 8192);
    }

    @Deprecated
    public BufferedFileChannelInputStream(File file, int i) {
        this(c5.h.i(file), i);
    }

    @Deprecated
    public BufferedFileChannelInputStream(Path path) {
        this(path, 8192);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public BufferedFileChannelInputStream(Path path, int i) {
        this(((BufferedFileChannelInputStream$Builder) builder().setPath(path)).setBufferSize(i));
    }
}
