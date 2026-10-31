package org.apache.commons.io.function;

import java.util.Iterator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import org.apache.commons.io.function.IOBaseStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class UncheckedIOBaseStream<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> implements BaseStream<T, B> {
    private final S delegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UncheckedIOBaseStream(S s) {
        this.delegate = s;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(Runnable runnable) {
        lambda$onClose$0(runnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$onClose$0(Runnable runnable) {
        runnable.run();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public boolean isParallel() {
        return this.delegate.isParallel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public Iterator<T> iterator() {
        return this.delegate.iterator().asIterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public B onClose(Runnable runnable) {
        S s = this.delegate;
        Objects.requireNonNull(s);
        return (B) ((IOBaseStream) Uncheck.apply(new v(2, s), new d0(0, runnable))).unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public B parallel() {
        return (B) this.delegate.parallel().unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public B sequential() {
        return (B) this.delegate.sequential().unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public Spliterator<T> spliterator() {
        return this.delegate.spliterator().unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.stream.BaseStream
    public B unordered() {
        return (B) this.delegate.unordered().unwrap();
    }
}
