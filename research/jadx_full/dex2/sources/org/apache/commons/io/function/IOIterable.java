package org.apache.commons.io.function;

import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface IOIterable<T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Iterable<T> asIterable() {
        return new UncheckedIOIterable(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forEach(IOConsumer<? super T> iOConsumer) {
        IOIterator<T> it = iterator();
        Objects.requireNonNull(iOConsumer);
        it.forEachRemaining(iOConsumer);
    }

    IOIterator<T> iterator();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOSpliterator<T> spliterator() {
        return IOSpliteratorAdapter.adapt((Spliterator) new UncheckedIOIterable(this).spliterator());
    }

    Iterable<T> unwrap();
}
