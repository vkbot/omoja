package org.apache.commons.p161io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.input.C2880j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ProxyWriter extends FilterWriter {
    public ProxyWriter(Writer writer) {
        super(writer);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        try {
            int length = IOUtils.length(charSequence);
            beforeWrite(length);
            ((FilterWriter) this).out.append(charSequence);
            afterWrite(length);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtils.close(((FilterWriter) this).out, new C2880j(7, this));
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        try {
            ((FilterWriter) this).out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        try {
            int length = IOUtils.length(cArr);
            beforeWrite(length);
            ((FilterWriter) this).out.write(cArr);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        try {
            beforeWrite(i11);
            ((FilterWriter) this).out.write(cArr, i10, i11);
            afterWrite(i11);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        try {
            beforeWrite(1);
            ((FilterWriter) this).out.append(c);
            afterWrite(1);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i10) {
        try {
            beforeWrite(1);
            ((FilterWriter) this).out.write(i10);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) {
        int i12 = i11 - i10;
        try {
            beforeWrite(i12);
            ((FilterWriter) this).out.append(charSequence, i10, i11);
            afterWrite(i12);
            return this;
        } catch (IOException e) {
            handleIOException(e);
            return this;
        }
    }

    @Override // java.io.Writer
    public void write(String str) {
        try {
            int length = IOUtils.length(str);
            beforeWrite(length);
            ((FilterWriter) this).out.write(str);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i10, int i11) {
        try {
            beforeWrite(i11);
            ((FilterWriter) this).out.write(str, i10, i11);
            afterWrite(i11);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void afterWrite(int i10) {
    }

    public void beforeWrite(int i10) {
    }

    public void handleIOException(IOException iOException) {
        throw iOException;
    }
}
