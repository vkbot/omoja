package org.apache.commons.io.channels;

import j1.i;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SeekableByteChannel;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;
import n0.b;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ByteArraySeekableByteChannel implements SeekableByteChannel {
    private static final int RESIZE_LIMIT = 1073741823;
    private volatile boolean closed;
    private byte[] data;
    private final ReentrantLock lock;
    private int position;
    private int size;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ByteArraySeekableByteChannel(int i) {
        this.lock = new ReentrantLock();
        if (i < 0) {
            i.k("Size must be non-negative");
            throw null;
        }
        this.data = new byte[i];
        this.position = 0;
        this.size = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkOpen() throws ClosedChannelException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int checkRange(long j, String str) {
        if (j >= 0 && j <= 2147483639) {
            return (int) j;
        }
        b.v("%s must be in range [0..%,d]: %,d", new Object[]{str, Integer.valueOf(IOUtils.SOFT_MAX_ARRAY_LENGTH), Long.valueOf(j)});
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resize(int i) {
        int length = this.data.length;
        if (length == 0) {
            length = 1;
        }
        if (i < RESIZE_LIMIT) {
            while (length < i) {
                length <<= 1;
            }
            i = length;
        }
        this.data = Arrays.copyOf(this.data, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ByteArraySeekableByteChannel wrap(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes");
        return new ByteArraySeekableByteChannel(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] array() {
        return this.data;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getSize() {
        return this.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel position(long j) throws ClosedChannelException {
        checkOpen();
        int iCheckRange = checkRange(j, "position()");
        this.lock.lock();
        try {
            this.position = iCheckRange;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            int iRemaining = byteBuffer.remaining();
            int i = this.size;
            int i2 = this.position;
            int i3 = i - i2;
            if (i3 <= 0) {
                return -1;
            }
            if (iRemaining > i3) {
                iRemaining = i3;
            }
            byteBuffer.put(this.data, i2, iRemaining);
            this.position += iRemaining;
            return iRemaining;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.SeekableByteChannel
    public long size() throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            return this.size;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] toByteArray() {
        return Arrays.copyOf(this.data, this.size);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j) throws ClosedChannelException {
        checkOpen();
        int iCheckRange = checkRange(j, "truncate()");
        this.lock.lock();
        try {
            if (this.size > iCheckRange) {
                this.size = iCheckRange;
            }
            if (this.position > iCheckRange) {
                this.position = iCheckRange;
            }
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            int iRemaining = byteBuffer.remaining();
            if (iRemaining > Math.max(0, this.size - this.position)) {
                int i = this.position + iRemaining;
                if (i < 0 || i > 2147483639) {
                    throw new OutOfMemoryError("required array size " + Long.toString(((long) i) & 4294967295L, 10) + " too large");
                }
                resize(i);
            }
            byteBuffer.get(this.data, this.position, iRemaining);
            int i2 = this.position + iRemaining;
            this.position = i2;
            if (this.size < i2) {
                this.size = i2;
            }
            this.lock.unlock();
            return iRemaining;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    private ByteArraySeekableByteChannel(byte[] bArr) {
        this.lock = new ReentrantLock();
        this.data = bArr;
        this.position = 0;
        this.size = bArr.length;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public long position() throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            return this.position;
        } finally {
            this.lock.unlock();
        }
    }

    public ByteArraySeekableByteChannel() {
        this(8192);
    }
}
