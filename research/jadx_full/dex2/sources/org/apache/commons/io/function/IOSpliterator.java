package org.apache.commons.io.function;

import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface IOSpliterator<T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <E> IOSpliterator<E> adapt(Spliterator<E> spliterator) {
        return IOSpliteratorAdapter.adapt((Spliterator) spliterator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Spliterator<T> asSpliterator() {
        return new UncheckedIOSpliterator(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default int characteristics() {
        return unwrap().characteristics();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default long estimateSize() {
        return unwrap().estimateSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forEachRemaining(IOConsumer<? super T> iOConsumer) {
        while (tryAdvance(iOConsumer)) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOComparator<? super T> getComparator() {
        return (IOComparator) unwrap().getComparator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default long getExactSizeIfKnown() {
        return unwrap().getExactSizeIfKnown();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean hasCharacteristics(int i) {
        return unwrap().hasCharacteristics(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean tryAdvance(IOConsumer<? super T> iOConsumer) {
        Spliterator<T> spliteratorUnwrap = unwrap();
        Objects.requireNonNull(iOConsumer, "action");
        return spliteratorUnwrap.tryAdvance(iOConsumer.asConsumer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOSpliterator<T> trySplit() {
        return adapt(unwrap().trySplit());
    }

    Spliterator<T> unwrap();
}
