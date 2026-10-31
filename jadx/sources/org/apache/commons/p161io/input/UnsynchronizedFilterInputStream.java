package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class UnsynchronizedFilterInputStream extends InputStream {
    protected volatile InputStream inputStream;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedFilterInputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public UnsynchronizedFilterInputStream get() {
            return new UnsynchronizedFilterInputStream(this);
        }
    }

    public UnsynchronizedFilterInputStream(Builder builder) {
        this.inputStream = builder.getInputStream();
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.InputStream
    public int available() {
        return this.inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inputStream.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.inputStream.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.inputStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        return this.inputStream.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.inputStream.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        return this.inputStream.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        return this.inputStream.read(bArr, i10, i11);
    }

    public UnsynchronizedFilterInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }
}
