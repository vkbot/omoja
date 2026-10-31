package org.apache.commons.io.function;

import java.io.Closeable;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import org.apache.commons.io.function.IOBaseStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface IOBaseStream<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> extends Closeable {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void U(IORunnable iORunnable) {
        lambda$onClose$0(iORunnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$onClose$0(IORunnable iORunnable) {
        Erase.run(iORunnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BaseStream<T, B> asBaseStream() {
        return new UncheckedIOBaseStream(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    default void close() {
        unwrap().close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean isParallel() {
        return unwrap().isParallel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOIterator<T> iterator() {
        return IOIteratorAdapter.adapt((Iterator) unwrap().iterator());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default S onClose(IORunnable iORunnable) {
        return (S) wrap(unwrap().onClose(new d(iORunnable, 0)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default S parallel() {
        return isParallel() ? this : (S) wrap(unwrap().parallel());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default S sequential() {
        return isParallel() ? (S) wrap(unwrap().sequential()) : this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOSpliterator<T> spliterator() {
        return IOSpliteratorAdapter.adapt((Spliterator) unwrap().spliterator());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default S unordered() {
        return (S) wrap(unwrap().unordered());
    }

    B unwrap();

    S wrap(B b);
}
