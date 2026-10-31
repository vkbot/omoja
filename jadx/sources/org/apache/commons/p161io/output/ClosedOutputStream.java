package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ClosedOutputStream extends OutputStream {

    @Deprecated
    public static final ClosedOutputStream CLOSED_OUTPUT_STREAM;
    public static final ClosedOutputStream INSTANCE;

    static {
        ClosedOutputStream closedOutputStream = new ClosedOutputStream();
        INSTANCE = closedOutputStream;
        CLOSED_OUTPUT_STREAM = closedOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw new IOException("flush() failed: stream is closed");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        throw new IOException("write(byte[], int, int) failed: stream is closed");
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        throw new IOException("write(int) failed: stream is closed");
    }
}
