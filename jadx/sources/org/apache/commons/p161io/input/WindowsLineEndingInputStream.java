package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class WindowsLineEndingInputStream extends InputStream {
    private boolean atEos;
    private boolean atSlashCr;
    private boolean atSlashLf;

    /* JADX INFO: renamed from: in */
    private final InputStream f8040in;
    private boolean injectSlashLf;
    private final boolean lineFeedAtEos;

    public WindowsLineEndingInputStream(InputStream inputStream, boolean z9) {
        this.f8040in = inputStream;
        this.lineFeedAtEos = z9;
    }

    private int handleEos() {
        if (!this.lineFeedAtEos) {
            return -1;
        }
        boolean z9 = this.atSlashLf;
        if (!z9 && !this.atSlashCr) {
            this.atSlashCr = true;
            return 13;
        }
        if (z9) {
            return -1;
        }
        this.atSlashCr = false;
        this.atSlashLf = true;
        return 10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f8040in.close();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        throw UnsupportedOperationExceptions.mark();
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        if (this.atEos) {
            return handleEos();
        }
        if (this.injectSlashLf) {
            this.injectSlashLf = false;
            return 10;
        }
        boolean z9 = this.atSlashCr;
        int i10 = this.f8040in.read();
        boolean z10 = i10 == -1;
        this.atEos = z10;
        if (!z10) {
            this.atSlashCr = i10 == 13;
            this.atSlashLf = i10 == 10;
        }
        if (z10) {
            return handleEos();
        }
        if (i10 != 10 || z9) {
            return i10;
        }
        this.injectSlashLf = true;
        return 13;
    }
}
