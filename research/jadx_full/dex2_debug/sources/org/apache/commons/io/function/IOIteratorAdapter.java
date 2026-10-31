package org.apache.commons.io.function;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class IOIteratorAdapter<E> implements IOIterator<E> {
    private final Iterator<E> delegate;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private IOIteratorAdapter(Iterator<E> it) {
        Objects.requireNonNull(it, "delegate");
        this.delegate = it;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <E> IOIteratorAdapter<E> adapt(Iterator<E> it) {
        return new IOIteratorAdapter<>(it);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    public boolean hasNext() {
        return this.delegate.hasNext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    public E next() {
        return this.delegate.next();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIterator
    public Iterator<E> unwrap() {
        return this.delegate;
    }
}
