package org.apache.commons.p161io.function;

import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class UncheckedIOSpliterator<T> implements Spliterator<T> {
    private final IOSpliterator<T> delegate;

    public UncheckedIOSpliterator(IOSpliterator<T> iOSpliterator) {
        Objects.requireNonNull(iOSpliterator, "delegate");
        this.delegate = iOSpliterator;
    }

    @Override // java.util.Spliterator
    public int characteristics() {
        return this.delegate.characteristics();
    }

    @Override // java.util.Spliterator
    public long estimateSize() {
        return this.delegate.estimateSize();
    }

    @Override // java.util.Spliterator
    public void forEachRemaining(Consumer<? super T> consumer) {
        IOSpliterator<T> iOSpliterator = this.delegate;
        Objects.requireNonNull(iOSpliterator);
        C2826g0 c2826g0 = new C2826g0(1, iOSpliterator);
        Objects.requireNonNull(consumer);
        Uncheck.accept(c2826g0, new C2826g0(0, consumer));
    }

    @Override // java.util.Spliterator
    public Comparator<? super T> getComparator() {
        return this.delegate.getComparator().asComparator();
    }

    @Override // java.util.Spliterator
    public long getExactSizeIfKnown() {
        return this.delegate.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public boolean hasCharacteristics(int i10) {
        return this.delegate.hasCharacteristics(i10);
    }

    @Override // java.util.Spliterator
    public boolean tryAdvance(Consumer<? super T> consumer) {
        IOSpliterator<T> iOSpliterator = this.delegate;
        Objects.requireNonNull(iOSpliterator);
        C2824f0 c2824f0 = new C2824f0(iOSpliterator);
        Objects.requireNonNull(consumer);
        return ((Boolean) Uncheck.apply(c2824f0, new C2826g0(0, consumer))).booleanValue();
    }

    @Override // java.util.Spliterator
    public Spliterator<T> trySplit() {
        IOSpliterator<T> iOSpliterator = this.delegate;
        Objects.requireNonNull(iOSpliterator);
        return ((IOSpliterator) Uncheck.get(new C2824f0(iOSpliterator))).unwrap();
    }
}
