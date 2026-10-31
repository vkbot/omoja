package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import l9.i;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ChunkedWriter extends FilterWriter {
    private static final int DEFAULT_CHUNK_SIZE = 8192;
    private final int chunkSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChunkedWriter(Writer writer, int i) {
        super(writer);
        if (i > 0) {
            this.chunkSize = i;
        } else {
            i.a();
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i, i2);
        while (i2 > 0) {
            int iMin = Math.min(i2, this.chunkSize);
            ((FilterWriter) this).out.write(cArr, i, iMin);
            i2 -= iMin;
            i += iMin;
        }
    }

    public ChunkedWriter(Writer writer) {
        this(writer, 8192);
    }
}
