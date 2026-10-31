package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ClosedWriter extends Writer {

    @Deprecated
    public static final ClosedWriter CLOSED_WRITER;
    public static final ClosedWriter INSTANCE;

    static {
        ClosedWriter closedWriter = new ClosedWriter();
        INSTANCE = closedWriter;
        CLOSED_WRITER = closedWriter;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        throw new IOException("flush() failed: stream is closed");
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        throw new IOException(String.format("write(%s, %d, %d) failed: stream is closed", Arrays.toString(cArr), Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
