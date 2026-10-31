package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Stream;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.input.C2877g;
import org.apache.commons.p161io.input.C2878h;
import org.apache.commons.p161io.input.C2879i;
import org.apache.commons.p161io.input.C2880j;
import p094i7.C1762k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FilterCollectionWriter extends Writer {
    protected final Collection<Writer> EMPTY_WRITERS;
    protected final Collection<Writer> writers;

    public FilterCollectionWriter(Writer... writerArr) {
        List list = Collections.EMPTY_LIST;
        this.EMPTY_WRITERS = list;
        this.writers = writerArr != null ? Arrays.asList(writerArr) : list;
    }

    private FilterCollectionWriter forAllWriters(IOConsumer<Writer> iOConsumer) {
        IOConsumer.forAll(iOConsumer, writers());
        return this;
    }

    private Stream<Writer> writers() {
        return this.writers.stream().filter(new C1762k(5));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        return forAllWriters(new C2880j(4, charSequence));
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        forAllWriters(new C2878h(2));
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        forAllWriters(new C2878h(3));
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        forAllWriters(new C2880j(5, cArr));
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        forAllWriters(new C2879i(cArr, i10, i11, 2));
    }

    @Override // java.io.Writer
    public void write(int i10) {
        forAllWriters(new C2877g(i10, 1));
    }

    @Override // java.io.Writer
    public void write(String str) {
        forAllWriters(new C2880j(3, str));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(final char c) {
        return forAllWriters(new IOConsumer() { // from class: org.apache.commons.io.output.b
            @Override // org.apache.commons.p161io.function.IOConsumer
            public final void accept(Object obj) throws IOException {
                ((Writer) obj).append(c);
            }
        });
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) {
        forAllWriters(new C2879i(str, i10, i11, 3));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) {
        return forAllWriters(new C2879i(charSequence, i10, i11, 1));
    }

    public FilterCollectionWriter(Collection<Writer> collection) {
        List list = Collections.EMPTY_LIST;
        this.EMPTY_WRITERS = list;
        this.writers = collection == null ? list : collection;
    }
}
