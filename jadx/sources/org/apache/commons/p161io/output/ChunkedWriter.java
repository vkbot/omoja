package org.apache.commons.p161io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.IOUtils;
import p130l9.C2237i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ChunkedWriter extends FilterWriter {
    private static final int DEFAULT_CHUNK_SIZE = 8192;
    private final int chunkSize;

    public ChunkedWriter(Writer writer, int i10) {
        super(writer);
        if (i10 > 0) {
            this.chunkSize = i10;
        } else {
            C2237i.m3594a();
            throw null;
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        while (i11 > 0) {
            int iMin = Math.min(i11, this.chunkSize);
            ((FilterWriter) this).out.write(cArr, i10, iMin);
            i11 -= iMin;
            i10 += iMin;
        }
    }

    public ChunkedWriter(Writer writer) {
        this(writer, 8192);
    }
}
