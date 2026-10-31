package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface IOSpliterator<T> {
    static <E> IOSpliterator<E> adapt(Spliterator<E> spliterator) {
        return IOSpliteratorAdapter.adapt((Spliterator) spliterator);
    }

    default Spliterator<T> asSpliterator() {
        return new UncheckedIOSpliterator(this);
    }

    default int characteristics() {
        return unwrap().characteristics();
    }

    default long estimateSize() {
        return unwrap().estimateSize();
    }

    default void forEachRemaining(IOConsumer<? super T> iOConsumer) {
        while (tryAdvance(iOConsumer)) {
        }
    }

    default IOComparator<? super T> getComparator() {
        return (IOComparator) unwrap().getComparator();
    }

    default long getExactSizeIfKnown() {
        return unwrap().getExactSizeIfKnown();
    }

    default boolean hasCharacteristics(int i10) {
        return unwrap().hasCharacteristics(i10);
    }

    default boolean tryAdvance(IOConsumer<? super T> iOConsumer) {
        Spliterator<T> spliteratorUnwrap = unwrap();
        Objects.requireNonNull(iOConsumer, "action");
        return spliteratorUnwrap.tryAdvance(iOConsumer.asConsumer());
    }

    default IOSpliterator<T> trySplit() {
        return adapt(unwrap().trySplit());
    }

    Spliterator<T> unwrap();
}
