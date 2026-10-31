package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Reader;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class UnsynchronizedReader extends Reader {
    private static final int MAX_SKIP_BUFFER_SIZE = 8192;
    private boolean closed;
    private char[] skipBuffer;

    public void checkOpen() throws IOException {
        Input.checkOpen(!isClosed());
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public void setClosed(boolean z9) {
        this.closed = z9;
    }

    @Override // java.io.Reader
    public long skip(long j10) {
        int i10;
        if (j10 < 0) {
            C1929i.m3029k("skip value < 0");
            return 0L;
        }
        int iMin = (int) Math.min(j10, 8192L);
        char[] cArr = this.skipBuffer;
        if (cArr == null || cArr.length < iMin) {
            this.skipBuffer = new char[iMin];
        }
        long j11 = j10;
        while (j11 > 0 && (i10 = read(this.skipBuffer, 0, (int) Math.min(j11, iMin))) != -1) {
            j11 -= (long) i10;
        }
        return j10 - j11;
    }
}
