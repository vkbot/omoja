package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.apache.commons.io.function.IOBiConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BoundedInputStream extends ProxyInputStream {
    private long count;
    private long mark;
    private final long maxCount;
    private final IOBiConsumer<Long, Long> onMaxCount;
    private boolean propagateClose;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private BoundedInputStream(BoundedInputStream$Builder boundedInputStream$Builder) {
        super(boundedInputStream$Builder);
        this.propagateClose = true;
        this.count = boundedInputStream$Builder.getCount();
        this.maxCount = boundedInputStream$Builder.getMaxCount();
        this.propagateClose = boundedInputStream$Builder.isPropagateClose();
        this.onMaxCount = boundedInputStream$Builder.getOnMaxCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BoundedInputStream$Builder builder() {
        return new BoundedInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isMaxCount() {
        return this.maxCount >= 0 && getCount() >= this.maxCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long toReadLen(long j) {
        long j2 = this.maxCount;
        return j2 >= 0 ? Math.min(j, j2 - getCount()) : j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) {
        if (i != -1) {
            try {
                this.count += (long) i;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.afterRead(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return Math.min(super.available(), (int) Math.min(getRemaining(), 2147483647L));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.propagateClose) {
            super.close();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized long getCount() {
        return this.count;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getMaxCount() {
        return this.maxCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public long getMaxLength() {
        return this.maxCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getRemaining() {
        long maxCount = getMaxCount();
        if (maxCount == -1) {
            return Long.MAX_VALUE;
        }
        return Math.max(0L, maxCount - getCount());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.mark = this.count;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMaxLength(long j, long j2) {
        this.onMaxCount.accept(Long.valueOf(j), Long.valueOf(j2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (!isMaxCount()) {
            return super.read(bArr, i, (int) toReadLen(i2));
        }
        onMaxLength(this.maxCount, getCount());
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        ((FilterInputStream) this).in.reset();
        this.count = this.mark;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public synchronized void setPropagateClose(boolean z) {
        this.propagateClose = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) {
        long jSkip;
        jSkip = super.skip(toReadLen(j));
        this.count += jSkip;
        return jSkip;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (isMaxCount()) {
            onMaxLength(this.maxCount, getCount());
            return -1;
        }
        return super.read();
    }

    public /* synthetic */ BoundedInputStream(BoundedInputStream$Builder boundedInputStream$Builder, BoundedInputStream$1 boundedInputStream$1) {
        this(boundedInputStream$Builder);
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1L);
    }

    private BoundedInputStream(InputStream inputStream, BoundedInputStream$Builder boundedInputStream$Builder) {
        super(inputStream, boundedInputStream$Builder);
        this.propagateClose = true;
        this.count = boundedInputStream$Builder.getCount();
        this.maxCount = boundedInputStream$Builder.getMaxCount();
        this.propagateClose = boundedInputStream$Builder.isPropagateClose();
        this.onMaxCount = boundedInputStream$Builder.getOnMaxCount();
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream, long j) {
        this(inputStream, (BoundedInputStream$Builder) builder().setMaxCount(j));
    }
}
