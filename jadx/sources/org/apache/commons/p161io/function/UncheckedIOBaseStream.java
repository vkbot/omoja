package org.apache.commons.p161io.function;

import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import org.apache.commons.p161io.function.IOBaseStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class UncheckedIOBaseStream<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> implements BaseStream<T, B> {
    private final S delegate;

    public UncheckedIOBaseStream(S s5) {
        this.delegate = s5;
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // java.util.stream.BaseStream
    public boolean isParallel() {
        return this.delegate.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public Iterator<T> iterator() {
        return this.delegate.iterator().asIterator();
    }

    @Override // java.util.stream.BaseStream
    public B onClose(Runnable runnable) {
        S s5 = this.delegate;
        Objects.requireNonNull(s5);
        return (B) ((IOBaseStream) Uncheck.apply(new C2841v(2, s5), new C2820d0(0, runnable))).unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B parallel() {
        return (B) this.delegate.parallel().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B sequential() {
        return (B) this.delegate.sequential().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public Spliterator<T> spliterator() {
        return this.delegate.spliterator().unwrap();
    }

    @Override // java.util.stream.BaseStream
    public B unordered() {
        return (B) this.delegate.unordered().unwrap();
    }
}
