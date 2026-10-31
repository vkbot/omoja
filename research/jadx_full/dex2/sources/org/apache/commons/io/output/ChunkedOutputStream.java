package org.apache.commons.io.output;

import j1.i;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ChunkedOutputStream extends FilterOutputStream {
    private final int chunkSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ChunkedOutputStream(ChunkedOutputStream$Builder chunkedOutputStream$Builder) {
        super(chunkedOutputStream$Builder.getOutputStream());
        int bufferSize = chunkedOutputStream$Builder.getBufferSize();
        if (bufferSize > 0) {
            this.chunkSize = bufferSize;
        } else {
            i.k("chunkSize <= 0");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ChunkedOutputStream$Builder builder() {
        return new ChunkedOutputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChunkSize() {
        return this.chunkSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        while (i2 > 0) {
            int iMin = Math.min(i2, this.chunkSize);
            ((FilterOutputStream) this).out.write(bArr, i, iMin);
            i2 -= iMin;
            i += iMin;
        }
    }

    public /* synthetic */ ChunkedOutputStream(ChunkedOutputStream$Builder chunkedOutputStream$Builder, ChunkedOutputStream$1 chunkedOutputStream$1) {
        this(chunkedOutputStream$Builder);
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream) {
        this(outputStream, 8192);
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream, int i) {
        super(outputStream);
        if (i > 0) {
            this.chunkSize = i;
        } else {
            i.k("chunkSize <= 0");
            throw null;
        }
    }
}
