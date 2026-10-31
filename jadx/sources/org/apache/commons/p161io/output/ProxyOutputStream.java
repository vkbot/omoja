package org.apache.commons.p161io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.input.C2880j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ProxyOutputStream extends FilterOutputStream {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ProxyOutputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public ProxyOutputStream get() {
            return new ProxyOutputStream(this);
        }
    }

    public ProxyOutputStream(Builder builder) {
        super(builder.getOutputStream());
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.close(((FilterOutputStream) this).out, new C2880j(6, this));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public ProxyOutputStream setReference(OutputStream outputStream) {
        ((FilterOutputStream) this).out = outputStream;
        return this;
    }

    public OutputStream unwrap() {
        return ((FilterOutputStream) this).out;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        try {
            int length = IOUtils.length(bArr);
            beforeWrite(length);
            ((FilterOutputStream) this).out.write(bArr);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void writeRepeat(byte[] bArr, int i10, int i11, long j10) {
        while (true) {
            long j11 = j10 - 1;
            if (j10 <= 0) {
                return;
            }
            write(bArr, i10, i11);
            j10 = j11;
        }
    }

    public ProxyOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void writeRepeat(byte[] bArr, long j10) {
        while (true) {
            long j11 = j10 - 1;
            if (j10 <= 0) {
                return;
            }
            write(bArr);
            j10 = j11;
        }
    }

    public void writeRepeat(int i10, long j10) {
        while (true) {
            long j11 = j10 - 1;
            if (j10 <= 0) {
                return;
            }
            write(i10);
            j10 = j11;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        try {
            beforeWrite(i11);
            ((FilterOutputStream) this).out.write(bArr, i10, i11);
            afterWrite(i11);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i10) {
        try {
            beforeWrite(1);
            ((FilterOutputStream) this).out.write(i10);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void afterWrite(int i10) {
    }

    public void beforeWrite(int i10) {
    }

    public void handleIOException(IOException iOException) {
        throw iOException;
    }
}
