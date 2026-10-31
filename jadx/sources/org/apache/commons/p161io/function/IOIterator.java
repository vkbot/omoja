package org.apache.commons.p161io.function;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface IOIterator<E> {
    static <E> IOIterator<E> adapt(Iterable<E> iterable) {
        return IOIteratorAdapter.adapt((Iterator) iterable.iterator());
    }

    default Iterator<E> asIterator() {
        return new UncheckedIOIterator(this);
    }

    default void forEachRemaining(IOConsumer<? super E> iOConsumer) {
        Objects.requireNonNull(iOConsumer);
        while (hasNext()) {
            iOConsumer.accept(next());
        }
    }

    boolean hasNext();

    E next();

    default void remove() {
        unwrap().remove();
    }

    Iterator<E> unwrap();

    static <E> IOIterator<E> adapt(Iterator<E> it) {
        return IOIteratorAdapter.adapt((Iterator) it);
    }
}
