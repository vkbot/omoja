package org.apache.commons.io.function;

import java.util.Objects;
import java.util.Spliterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class IOSpliteratorAdapter<T> implements IOSpliterator<T> {
    private final Spliterator<T> delegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOSpliteratorAdapter(Spliterator<T> spliterator) {
        Objects.requireNonNull(spliterator, "delegate");
        this.delegate = spliterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <E> IOSpliteratorAdapter<E> adapt(Spliterator<E> spliterator) {
        return new IOSpliteratorAdapter<>(spliterator);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSpliterator
    public Spliterator<T> unwrap() {
        return this.delegate;
    }
}
