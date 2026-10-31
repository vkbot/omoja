package org.apache.commons.io.function;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface IOIterator<E> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <E> IOIterator<E> adapt(Iterable<E> iterable) {
        return IOIteratorAdapter.adapt((Iterator) iterable.iterator());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Iterator<E> asIterator() {
        return new UncheckedIOIterator(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forEachRemaining(IOConsumer<? super E> iOConsumer) {
        Objects.requireNonNull(iOConsumer);
        while (hasNext()) {
            iOConsumer.accept(next());
        }
    }

    boolean hasNext();

    E next();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void remove() {
        unwrap().remove();
    }

    Iterator<E> unwrap();

    static <E> IOIterator<E> adapt(Iterator<E> it) {
        return IOIteratorAdapter.adapt((Iterator) it);
    }
}
