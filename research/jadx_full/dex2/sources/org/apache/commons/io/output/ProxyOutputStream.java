package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ProxyOutputStream extends FilterOutputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProxyOutputStream(ProxyOutputStream$Builder proxyOutputStream$Builder) {
        super(proxyOutputStream$Builder.getOutputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.close(((FilterOutputStream) this).out, new j(6, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ProxyOutputStream setReference(OutputStream outputStream) {
        ((FilterOutputStream) this).out = outputStream;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OutputStream unwrap() {
        return ((FilterOutputStream) this).out;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            int length = IOUtils.length(bArr);
            beforeWrite(length);
            ((FilterOutputStream) this).out.write(bArr);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeRepeat(byte[] bArr, int i, int i2, long j) throws IOException {
        while (true) {
            long j2 = j - 1;
            if (j <= 0) {
                return;
            }
            write(bArr, i, i2);
            j = j2;
        }
    }

    public ProxyOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void writeRepeat(byte[] bArr, long j) throws IOException {
        while (true) {
            long j2 = j - 1;
            if (j <= 0) {
                return;
            }
            write(bArr);
            j = j2;
        }
    }

    public void writeRepeat(int i, long j) throws IOException {
        while (true) {
            long j2 = j - 1;
            if (j <= 0) {
                return;
            }
            write(i);
            j = j2;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            afterWrite(i2);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            ((FilterOutputStream) this).out.write(i);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void afterWrite(int i) {
    }

    public void beforeWrite(int i) {
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
