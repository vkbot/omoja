package org.apache.commons.p161io.function;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class UncheckedIOIterator<E> implements Iterator<E> {
    private final IOIterator<E> delegate;

    public UncheckedIOIterator(IOIterator<E> iOIterator) {
        Objects.requireNonNull(iOIterator, "delegate");
        this.delegate = iOIterator;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        IOIterator<E> iOIterator = this.delegate;
        Objects.requireNonNull(iOIterator);
        return Uncheck.getAsBoolean(new C2822e0(iOIterator));
    }

    @Override // java.util.Iterator
    public E next() {
        IOIterator<E> iOIterator = this.delegate;
        Objects.requireNonNull(iOIterator);
        return (E) Uncheck.get(new C2822e0(iOIterator));
    }

    @Override // java.util.Iterator
    public void remove() {
        IOIterator<E> iOIterator = this.delegate;
        Objects.requireNonNull(iOIterator);
        Uncheck.run(new C2820d0(1, iOIterator));
    }
}
