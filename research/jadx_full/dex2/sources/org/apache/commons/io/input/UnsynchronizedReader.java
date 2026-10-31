package org.apache.commons.io.input;

import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class UnsynchronizedReader extends Reader {
    private static final int MAX_SKIP_BUFFER_SIZE = 8192;
    private boolean closed;
    private char[] skipBuffer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkOpen() {
        Input.checkOpen(!isClosed());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setClosed(boolean z) {
        this.closed = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public long skip(long j) {
        int i;
        if (j < 0) {
            j1.i.k("skip value < 0");
            return 0L;
        }
        int iMin = (int) Math.min(j, 8192L);
        char[] cArr = this.skipBuffer;
        if (cArr == null || cArr.length < iMin) {
            this.skipBuffer = new char[iMin];
        }
        long j2 = j;
        while (j2 > 0 && (i = read(this.skipBuffer, 0, (int) Math.min(j2, iMin))) != -1) {
            j2 -= (long) i;
        }
        return j - j2;
    }
}
