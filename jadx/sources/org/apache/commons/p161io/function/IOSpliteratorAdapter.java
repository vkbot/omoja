package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class IOSpliteratorAdapter<T> implements IOSpliterator<T> {
    private final Spliterator<T> delegate;

    public IOSpliteratorAdapter(Spliterator<T> spliterator) {
        Objects.requireNonNull(spliterator, "delegate");
        this.delegate = spliterator;
    }

    public static <E> IOSpliteratorAdapter<E> adapt(Spliterator<E> spliterator) {
        return new IOSpliteratorAdapter<>(spliterator);
    }

    @Override // org.apache.commons.p161io.function.IOSpliterator
    public Spliterator<T> unwrap() {
        return this.delegate;
    }
}
