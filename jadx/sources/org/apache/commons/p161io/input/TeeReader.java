package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class TeeReader extends ProxyReader {
    private final Writer branch;
    private final boolean closeBranch;

    public TeeReader(Reader reader, Writer writer, boolean z9) {
        super(reader);
        this.branch = writer;
        this.closeBranch = z9;
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.closeBranch) {
                this.branch.close();
            }
        }
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        int iPosition = charBuffer.position();
        int i10 = super.read(charBuffer);
        if (i10 == -1) {
            return i10;
        }
        int iPosition2 = charBuffer.position();
        int iLimit = charBuffer.limit();
        try {
            charBuffer.position(iPosition).limit(iPosition2);
            this.branch.append((CharSequence) charBuffer);
            return i10;
        } finally {
            charBuffer.position(iPosition2).limit(iLimit);
        }
    }

    public TeeReader(Reader reader, Writer writer) {
        this(reader, writer, false);
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.Reader
    public int read(char[] cArr) throws IOException {
        int i10 = super.read(cArr);
        if (i10 != -1) {
            this.branch.write(cArr, 0, i10);
        }
        return i10;
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        int i12 = super.read(cArr, i10, i11);
        if (i12 != -1) {
            this.branch.write(cArr, i10, i12);
        }
        return i12;
    }

    @Override // org.apache.commons.p161io.input.ProxyReader, java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int i10 = super.read();
        if (i10 != -1) {
            this.branch.write(i10);
        }
        return i10;
    }
}
