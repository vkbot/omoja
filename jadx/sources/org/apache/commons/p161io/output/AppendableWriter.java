package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.Writer;
import java.lang.Appendable;
import java.util.Objects;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AppendableWriter<T extends Appendable> extends Writer {
    private final T appendable;

    public AppendableWriter(T t) {
        this.appendable = t;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        this.appendable.append(c);
        return this;
    }

    public T getAppendable() {
        return this.appendable;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        for (int i12 = 0; i12 < i11; i12++) {
            this.appendable.append(cArr[i10 + i12]);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        this.appendable.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) throws IOException {
        this.appendable.append(charSequence, i10, i11);
        return this;
    }

    @Override // java.io.Writer
    public void write(int i10) throws IOException {
        this.appendable.append((char) i10);
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) throws IOException {
        Objects.requireNonNull(str, "str");
        this.appendable.append(str, i10, i11 + i10);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }
}
