package org.apache.commons.p161io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ProxyInputStream extends FilterInputStream {
    private final IOIntConsumer afterRead;
    private volatile boolean closed;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static abstract class AbstractBuilder<T, B extends AbstractStreamBuilder<T, B>> extends AbstractStreamBuilder<T, B> {
        private IOIntConsumer afterRead;

        public IOIntConsumer getAfterRead() {
            return this.afterRead;
        }

        public B setAfterRead(IOIntConsumer iOIntConsumer) {
            this.afterRead = iOIntConsumer;
            return asThis();
        }
    }

    public ProxyInputStream(InputStream inputStream, AbstractBuilder<?, ?> abstractBuilder) {
        super(inputStream);
        this.afterRead = abstractBuilder.getAfterRead() != null ? abstractBuilder.getAfterRead() : IOIntConsumer.NOOP;
    }

    public void afterRead(int i10) {
        this.afterRead.accept(i10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (((FilterInputStream) this).in == null || isClosed()) {
            return 0;
        }
        try {
            return ((FilterInputStream) this).in.available();
        } catch (IOException e) {
            handleIOException(e);
            return 0;
        }
    }

    public void checkOpen() throws IOException {
        Input.checkOpen(!isClosed());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.close(((FilterInputStream) this).in, new C2880j(1, this));
        this.closed = true;
    }

    public boolean isClosed() {
        return this.closed;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        if (((FilterInputStream) this).in != null) {
            ((FilterInputStream) this).in.mark(i10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in != null && ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int i10 = 1;
        try {
            beforeRead(1);
            int i11 = ((FilterInputStream) this).in.read();
            if (i11 == -1) {
                i10 = -1;
            }
            afterRead(i10);
            return i11;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public ProxyInputStream setReference(InputStream inputStream) {
        ((FilterInputStream) this).in = inputStream;
        return this;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        try {
            return ((FilterInputStream) this).in.skip(j10);
        } catch (IOException e) {
            handleIOException(e);
            return 0L;
        }
    }

    public InputStream unwrap() {
        return ((FilterInputStream) this).in;
    }

    public ProxyInputStream(InputStream inputStream) {
        super(inputStream);
        this.afterRead = IOIntConsumer.NOOP;
    }

    public ProxyInputStream(AbstractBuilder<?, ?> abstractBuilder) {
        this(abstractBuilder.getInputStream(), abstractBuilder);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        try {
            beforeRead(IOUtils.length(bArr));
            int i10 = ((FilterInputStream) this).in.read(bArr);
            afterRead(i10);
            return i10;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        try {
            beforeRead(i11);
            int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
            afterRead(i12);
            return i12;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    public void beforeRead(int i10) {
    }

    public void handleIOException(IOException iOException) {
        throw iOException;
    }
}
