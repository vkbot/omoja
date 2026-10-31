package org.apache.commons.p161io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ProxyReader extends FilterReader {
    public ProxyReader(Reader reader) {
        super(reader);
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterReader) this).in.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void mark(int i10) {
        try {
            ((FilterReader) this).in.mark(i10);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean markSupported() {
        return ((FilterReader) this).in.markSupported();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i10 = 1;
        try {
            beforeRead(1);
            int i11 = ((FilterReader) this).in.read();
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

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws IOException {
        try {
            return ((FilterReader) this).in.ready();
        } catch (IOException e) {
            handleIOException(e);
            return false;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public synchronized void reset() {
        try {
            ((FilterReader) this).in.reset();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j10) throws IOException {
        try {
            return ((FilterReader) this).in.skip(j10);
        } catch (IOException e) {
            handleIOException(e);
            return 0L;
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        try {
            beforeRead(IOUtils.length(cArr));
            int i10 = ((FilterReader) this).in.read(cArr);
            afterRead(i10);
            return i10;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        try {
            beforeRead(i11);
            int i12 = ((FilterReader) this).in.read(cArr, i10, i11);
            afterRead(i12);
            return i12;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        try {
            beforeRead(IOUtils.length(charBuffer));
            int i10 = ((FilterReader) this).in.read(charBuffer);
            afterRead(i10);
            return i10;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    public void afterRead(int i10) {
    }

    public void beforeRead(int i10) {
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
