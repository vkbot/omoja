package org.apache.commons.io;

import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class StreamIterator<E> implements Iterator<E>, AutoCloseable {
    private boolean closed;
    private final Iterator<E> iterator;
    private final Stream<E> stream;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private StreamIterator(Stream<E> stream) {
        Objects.requireNonNull(stream, "stream");
        this.stream = stream;
        this.iterator = stream.iterator();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> StreamIterator<T> iterator(Stream<T> stream) {
        return new StreamIterator<>(stream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        this.stream.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.closed) {
            return false;
        }
        boolean zHasNext = this.iterator.hasNext();
        if (!zHasNext) {
            close();
        }
        return zHasNext;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public E next() {
        E next = this.iterator.next();
        if (next == null) {
            close();
        }
        return next;
    }
}
