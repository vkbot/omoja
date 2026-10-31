package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class UnixLineEndingInputStream extends InputStream {
    private boolean atEos;
    private boolean atSlashCr;
    private boolean atSlashLf;

    /* JADX INFO: renamed from: in */
    private final InputStream f8038in;
    private final boolean lineFeedAtEndOfFile;

    public UnixLineEndingInputStream(InputStream inputStream, boolean z9) {
        this.f8038in = inputStream;
        this.lineFeedAtEndOfFile = z9;
    }

    private int handleEos(boolean z9) {
        if (z9 || !this.lineFeedAtEndOfFile || this.atSlashLf) {
            return -1;
        }
        this.atSlashLf = true;
        return 10;
    }

    private int readWithUpdate() throws IOException {
        int i10 = this.f8038in.read();
        boolean z9 = i10 == -1;
        this.atEos = z9;
        if (z9) {
            return i10;
        }
        this.atSlashCr = i10 == 13;
        this.atSlashLf = i10 == 10;
        return i10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f8038in.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        throw UnsupportedOperationExceptions.mark();
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        boolean z9 = this.atSlashCr;
        if (this.atEos) {
            return handleEos(z9);
        }
        int withUpdate = readWithUpdate();
        if (this.atEos) {
            return handleEos(z9);
        }
        if (this.atSlashCr) {
            return 10;
        }
        if (!z9 || !this.atSlashLf) {
            return withUpdate;
        }
        return read();
    }
}
