package org.apache.commons.p161io.channels;

import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SeekableByteChannel;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ByteArraySeekableByteChannel implements SeekableByteChannel {
    private static final int RESIZE_LIMIT = 1073741823;
    private volatile boolean closed;
    private byte[] data;
    private final ReentrantLock lock;
    private int position;
    private int size;

    public ByteArraySeekableByteChannel(int i10) {
        this.lock = new ReentrantLock();
        if (i10 < 0) {
            C1929i.m3029k("Size must be non-negative");
            throw null;
        }
        this.data = new byte[i10];
        this.position = 0;
        this.size = 0;
    }

    private void checkOpen() throws ClosedChannelException {
        if (!isOpen()) {
            throw new ClosedChannelException();
        }
    }

    private int checkRange(long j10, String str) {
        if (j10 >= 0 && j10 <= 2147483639) {
            return (int) j10;
        }
        C2467b.m3832v("%s must be in range [0..%,d]: %,d", new Object[]{str, Integer.valueOf(IOUtils.SOFT_MAX_ARRAY_LENGTH), Long.valueOf(j10)});
        return 0;
    }

    private void resize(int i10) {
        int length = this.data.length;
        if (length == 0) {
            length = 1;
        }
        if (i10 < RESIZE_LIMIT) {
            while (length < i10) {
                length <<= 1;
            }
            i10 = length;
        }
        this.data = Arrays.copyOf(this.data, i10);
    }

    public static ByteArraySeekableByteChannel wrap(byte[] bArr) {
        Objects.requireNonNull(bArr, "bytes");
        return new ByteArraySeekableByteChannel(bArr);
    }

    public byte[] array() {
        return this.data;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    public long getSize() {
        return this.size;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel position(long j10) throws ClosedChannelException {
        checkOpen();
        int iCheckRange = checkRange(j10, "position()");
        this.lock.lock();
        try {
            this.position = iCheckRange;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            int iRemaining = byteBuffer.remaining();
            int i10 = this.size;
            int i11 = this.position;
            int i12 = i10 - i11;
            if (i12 <= 0) {
                return -1;
            }
            if (iRemaining > i12) {
                iRemaining = i12;
            }
            byteBuffer.put(this.data, i11, iRemaining);
            this.position += iRemaining;
            return iRemaining;
        } finally {
            this.lock.unlock();
        }
    }

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

    public byte[] toByteArray() {
        return Arrays.copyOf(this.data, this.size);
    }

    @Override // java.nio.channels.SeekableByteChannel
    public SeekableByteChannel truncate(long j10) throws ClosedChannelException {
        checkOpen();
        int iCheckRange = checkRange(j10, "truncate()");
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

    @Override // java.nio.channels.SeekableByteChannel, java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws ClosedChannelException {
        checkOpen();
        this.lock.lock();
        try {
            int iRemaining = byteBuffer.remaining();
            if (iRemaining > Math.max(0, this.size - this.position)) {
                int i10 = this.position + iRemaining;
                if (i10 < 0 || i10 > 2147483639) {
                    throw new OutOfMemoryError("required array size " + Long.toString(((long) i10) & 4294967295L, 10) + " too large");
                }
                resize(i10);
            }
            byteBuffer.get(this.data, this.position, iRemaining);
            int i11 = this.position + iRemaining;
            this.position = i11;
            if (this.size < i11) {
                this.size = i11;
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
