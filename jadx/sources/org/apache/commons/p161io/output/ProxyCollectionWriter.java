package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ProxyCollectionWriter extends FilterCollectionWriter {
    public ProxyCollectionWriter(Collection<Writer> collection) {
        super(collection);
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        try {
            int length = IOUtils.length(charSequence);
            beforeWrite(length);
            super.append(charSequence);
            afterWrite(length);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        try {
            super.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer
    public void write(char[] cArr) throws IOException {
        try {
            int length = IOUtils.length(cArr);
            beforeWrite(length);
            super.write(cArr);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public ProxyCollectionWriter(Writer... writerArr) {
        super(writerArr);
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        try {
            beforeWrite(i11);
            super.write(cArr, i10, i11);
            afterWrite(i11);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        try {
            beforeWrite(1);
            super.append(c);
            afterWrite(1);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer
    public void write(int i10) throws IOException {
        try {
            beforeWrite(1);
            super.write(i10);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) throws IOException {
        int i12 = i11 - i10;
        try {
            beforeWrite(i12);
            super.append(charSequence, i10, i11);
            afterWrite(i12);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer
    public void write(String str) throws IOException {
        try {
            int length = IOUtils.length(str);
            beforeWrite(length);
            super.write(str);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // org.apache.commons.p161io.output.FilterCollectionWriter, java.io.Writer
    public void write(String str, int i10, int i11) throws IOException {
        try {
            beforeWrite(i11);
            super.write(str, i10, i11);
            afterWrite(i11);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void afterWrite(int i10) {
    }

    public void beforeWrite(int i10) {
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }
}
