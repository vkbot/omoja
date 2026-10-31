package org.apache.commons.p161io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ChunkedOutputStream extends FilterOutputStream {
    private final int chunkSize;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ChunkedOutputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public ChunkedOutputStream get() {
            return new ChunkedOutputStream(this);
        }
    }

    private ChunkedOutputStream(Builder builder) {
        super(builder.getOutputStream());
        int bufferSize = builder.getBufferSize();
        if (bufferSize > 0) {
            this.chunkSize = bufferSize;
        } else {
            C1929i.m3029k("chunkSize <= 0");
            throw null;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        while (i11 > 0) {
            int iMin = Math.min(i11, this.chunkSize);
            ((FilterOutputStream) this).out.write(bArr, i10, iMin);
            i11 -= iMin;
            i10 += iMin;
        }
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream) {
        this(outputStream, 8192);
    }

    @Deprecated
    public ChunkedOutputStream(OutputStream outputStream, int i10) {
        super(outputStream);
        if (i10 > 0) {
            this.chunkSize = i10;
        } else {
            C1929i.m3029k("chunkSize <= 0");
            throw null;
        }
    }
}
