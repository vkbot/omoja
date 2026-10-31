package org.apache.commons.p161io.input;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOBiConsumer;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BoundedInputStream extends ProxyInputStream {
    private long count;
    private long mark;
    private final long maxCount;
    private final IOBiConsumer<Long, Long> onMaxCount;
    private boolean propagateClose;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractBuilder<T extends AbstractBuilder<T>> extends ProxyInputStream.AbstractBuilder<BoundedInputStream, T> {
        private long count;
        private long maxCount = -1;
        private IOBiConsumer<Long, Long> onMaxCount = IOBiConsumer.noop();
        private boolean propagateClose = true;

        public long getCount() {
            return this.count;
        }

        public long getMaxCount() {
            return this.maxCount;
        }

        public IOBiConsumer<Long, Long> getOnMaxCount() {
            return this.onMaxCount;
        }

        public boolean isPropagateClose() {
            return this.propagateClose;
        }

        public T setCount(long j10) {
            this.count = Math.max(0L, j10);
            return (T) asThis();
        }

        public T setMaxCount(long j10) {
            this.maxCount = Math.max(-1L, j10);
            return (T) asThis();
        }

        public T setOnMaxCount(IOBiConsumer<Long, Long> iOBiConsumer) {
            if (iOBiConsumer == null) {
                iOBiConsumer = IOBiConsumer.noop();
            }
            this.onMaxCount = iOBiConsumer;
            return (T) asThis();
        }

        public T setPropagateClose(boolean z9) {
            this.propagateClose = z9;
            return (T) asThis();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractBuilder<Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public BoundedInputStream get() {
            return new BoundedInputStream(this);
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }

        @Override // org.apache.commons.io.input.BoundedInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractBuilder setCount(long j10) {
            return super.setCount(j10);
        }

        @Override // org.apache.commons.io.input.BoundedInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractBuilder setMaxCount(long j10) {
            return super.setMaxCount(j10);
        }

        @Override // org.apache.commons.io.input.BoundedInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractBuilder setOnMaxCount(IOBiConsumer iOBiConsumer) {
            return super.setOnMaxCount(iOBiConsumer);
        }

        @Override // org.apache.commons.io.input.BoundedInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractBuilder setPropagateClose(boolean z9) {
            return super.setPropagateClose(z9);
        }
    }

    private BoundedInputStream(Builder builder) {
        super(builder);
        this.propagateClose = true;
        this.count = builder.getCount();
        this.maxCount = builder.getMaxCount();
        this.propagateClose = builder.isPropagateClose();
        this.onMaxCount = builder.getOnMaxCount();
    }

    public static Builder builder() {
        return new Builder();
    }

    private boolean isMaxCount() {
        return this.maxCount >= 0 && getCount() >= this.maxCount;
    }

    private long toReadLen(long j10) {
        long j11 = this.maxCount;
        return j11 >= 0 ? Math.min(j10, j11 - getCount()) : j10;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream
    public synchronized void afterRead(int i10) {
        if (i10 != -1) {
            try {
                this.count += (long) i10;
            } catch (Throwable th) {
                throw th;
            }
        }
        super.afterRead(i10);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return Math.min(super.available(), (int) Math.min(getRemaining(), 2147483647L));
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.propagateClose) {
            super.close();
        }
    }

    public synchronized long getCount() {
        return this.count;
    }

    public long getMaxCount() {
        return this.maxCount;
    }

    @Deprecated
    public long getMaxLength() {
        return this.maxCount;
    }

    public long getRemaining() {
        long maxCount = getMaxCount();
        if (maxCount == -1) {
            return Long.MAX_VALUE;
        }
        return Math.max(0L, maxCount - getCount());
    }

    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
        this.mark = this.count;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    public void onMaxLength(long j10, long j11) {
        this.onMaxCount.accept(Long.valueOf(j10), Long.valueOf(j11));
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        if (!isMaxCount()) {
            return super.read(bArr, i10, (int) toReadLen(i11));
        }
        onMaxLength(this.maxCount, getCount());
        return -1;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        ((FilterInputStream) this).in.reset();
        this.count = this.mark;
    }

    @Deprecated
    public synchronized void setPropagateClose(boolean z9) {
        this.propagateClose = z9;
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) {
        long jSkip;
        jSkip = super.skip(toReadLen(j10));
        this.count += jSkip;
        return jSkip;
    }

    public String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (isMaxCount()) {
            onMaxLength(this.maxCount, getCount());
            return -1;
        }
        return super.read();
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1L);
    }

    private BoundedInputStream(InputStream inputStream, Builder builder) {
        super(inputStream, builder);
        this.propagateClose = true;
        this.count = builder.getCount();
        this.maxCount = builder.getMaxCount();
        this.propagateClose = builder.isPropagateClose();
        this.onMaxCount = builder.getOnMaxCount();
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream, long j10) {
        this(inputStream, (Builder) builder().setMaxCount(j10));
    }
}
