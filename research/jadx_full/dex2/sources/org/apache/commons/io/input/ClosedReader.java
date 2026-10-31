package org.apache.commons.io.input;

import java.io.Reader;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ClosedReader extends Reader {

    @Deprecated
    public static final ClosedReader CLOSED_READER;
    public static final ClosedReader INSTANCE;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ClosedReader closedReader = new ClosedReader();
        INSTANCE = closedReader;
        CLOSED_READER = closedReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        IOUtils.checkFromIndexSize(cArr, i, i2);
        return i2 == 0 ? 0 : -1;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
