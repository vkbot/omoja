package org.apache.commons.p161io.output;

import java.io.Writer;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class NullWriter extends Writer {
    public static final NullWriter INSTANCE;

    @Deprecated
    public static final NullWriter NULL_WRITER;

    static {
        NullWriter nullWriter = new NullWriter();
        INSTANCE = nullWriter;
        NULL_WRITER = nullWriter;
    }

    @Deprecated
    public NullWriter() {
    }

    @Override // java.io.Writer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) {
        IOUtils.checkFromToIndex(charSequence, i10, i11);
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
    }

    @Override // java.io.Writer
    public void write(int i10) {
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) {
        IOUtils.checkFromIndexSize(str, i10, i11);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }
}
