package org.apache.commons.p161io.function;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterators;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.apache.commons.p161io.IOExceptionList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface IOStream<T> extends IOBaseStream<T, IOStream<T>, Stream<T>> {
    static <T> IOStream<T> adapt(Stream<T> stream) {
        return IOStreamAdapter.adapt(stream);
    }

    static <T> IOStream<T> empty() {
        return IOStreamAdapter.adapt(Stream.empty());
    }

    static <T> IOStream<T> iterate(final T t, final IOUnaryOperator<T> iOUnaryOperator) {
        Objects.requireNonNull(iOUnaryOperator);
        return adapt(StreamSupport.stream(Spliterators.spliteratorUnknownSize(new Iterator<T>() { // from class: org.apache.commons.io.function.IOStream.1

            /* JADX INFO: renamed from: t */
            T f7975t = (T) IOStreams.NONE;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return true;
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    T t3 = this.f7975t;
                    T tApply = t3 == IOStreams.NONE ? (T) t : iOUnaryOperator.apply(t3);
                    this.f7975t = tApply;
                    return tApply;
                } catch (IOException e) {
                    NoSuchElementException noSuchElementException = new NoSuchElementException();
                    noSuchElementException.initCause(e);
                    throw noSuchElementException;
                }
            }
        }, 1040), false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Stream lambda$flatMap$6(IOFunction iOFunction, Object obj) {
        return ((IOStream) Erase.apply(iOFunction, obj)).unwrap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ DoubleStream lambda$flatMapToDouble$7(IOFunction iOFunction, Object obj) {
        return (DoubleStream) Erase.apply(iOFunction, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ IntStream lambda$flatMapToInt$8(IOFunction iOFunction, Object obj) {
        return (IntStream) Erase.apply(iOFunction, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ LongStream lambda$flatMapToLong$9(IOFunction iOFunction, Object obj) {
        return (LongStream) Erase.apply(iOFunction, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ void lambda$forAll$11(IOConsumer iOConsumer, AtomicReference atomicReference, BiFunction biFunction, AtomicInteger atomicInteger, Object obj) {
        try {
            iOConsumer.accept(obj);
        } catch (IOException e) {
            if (atomicReference.get() == null) {
                atomicReference.set(new ArrayList());
            }
            if (biFunction != null) {
                ((List) atomicReference.get()).add((IOException) biFunction.apply(Integer.valueOf(atomicInteger.get()), e));
            }
        }
        atomicInteger.incrementAndGet();
    }

    /* JADX INFO: renamed from: of */
    static <T> IOStream<T> m4536of(Iterable<T> iterable) {
        return iterable == null ? empty() : adapt(StreamSupport.stream(iterable.spliterator(), false));
    }

    default boolean allMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().allMatch(new C2843x(iOPredicate, 3));
    }

    default boolean anyMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().anyMatch(new C2843x(iOPredicate, 2));
    }

    default <R> R collect(IOSupplier<R> iOSupplier, IOBiConsumer<R, ? super T> iOBiConsumer, IOBiConsumer<R, R> iOBiConsumer2) {
        return (R) unwrap().collect(new C2845z(iOSupplier, 0), new C2821e(iOBiConsumer, 2), new C2821e(iOBiConsumer2, 1));
    }

    default long count() {
        return unwrap().count();
    }

    default IOStream<T> distinct() {
        return adapt(unwrap().distinct());
    }

    default IOStream<T> filter(IOPredicate<? super T> iOPredicate) {
        return adapt(unwrap().filter(new C2843x(iOPredicate, 1)));
    }

    default Optional<T> findAny() {
        return unwrap().findAny();
    }

    default Optional<T> findFirst() {
        return unwrap().findFirst();
    }

    default <R> IOStream<R> flatMap(IOFunction<? super T, ? extends IOStream<? extends R>> iOFunction) {
        return adapt(unwrap().flatMap(new C2833n(iOFunction, 2)));
    }

    default DoubleStream flatMapToDouble(IOFunction<? super T, ? extends DoubleStream> iOFunction) {
        return unwrap().flatMapToDouble(new C2833n(iOFunction, 5));
    }

    default IntStream flatMapToInt(IOFunction<? super T, ? extends IntStream> iOFunction) {
        return unwrap().flatMapToInt(new C2833n(iOFunction, 3));
    }

    default LongStream flatMapToLong(IOFunction<? super T, ? extends LongStream> iOFunction) {
        return unwrap().flatMapToLong(new C2833n(iOFunction, 4));
    }

    default void forAll(IOConsumer<T> iOConsumer, final BiFunction<Integer, IOException, IOException> biFunction) {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicInteger atomicInteger = new AtomicInteger();
        final IOConsumer iOConsumer2 = IOStreams.toIOConsumer(iOConsumer);
        unwrap().forEach(new Consumer() { // from class: org.apache.commons.io.function.y
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IOStream.lambda$forAll$11(iOConsumer2, atomicReference, biFunction, atomicInteger, obj);
            }
        });
        IOExceptionList.checkEmpty((List) atomicReference.get(), null);
    }

    default void forEach(IOConsumer<? super T> iOConsumer) {
        unwrap().forEach(new C2814a0(3, iOConsumer));
    }

    default void forEachOrdered(IOConsumer<? super T> iOConsumer) {
        unwrap().forEachOrdered(new C2814a0(4, iOConsumer));
    }

    default IOStream<T> limit(long j10) {
        return adapt(unwrap().limit(j10));
    }

    default <R> IOStream<R> map(IOFunction<? super T, ? extends R> iOFunction) {
        return adapt(unwrap().map(new C2833n(iOFunction, 1)));
    }

    default DoubleStream mapToDouble(ToDoubleFunction<? super T> toDoubleFunction) {
        return unwrap().mapToDouble(toDoubleFunction);
    }

    default IntStream mapToInt(ToIntFunction<? super T> toIntFunction) {
        return unwrap().mapToInt(toIntFunction);
    }

    default LongStream mapToLong(ToLongFunction<? super T> toLongFunction) {
        return unwrap().mapToLong(toLongFunction);
    }

    default Optional<T> max(IOComparator<? super T> iOComparator) {
        return unwrap().max(new C2830k(iOComparator, 3));
    }

    default Optional<T> min(IOComparator<? super T> iOComparator) {
        return unwrap().min(new C2830k(iOComparator, 2));
    }

    default boolean noneMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().noneMatch(new C2843x(iOPredicate, 4));
    }

    default IOStream<T> peek(IOConsumer<? super T> iOConsumer) {
        return adapt(unwrap().peek(new C2814a0(2, iOConsumer)));
    }

    default <U> U reduce(U u8, IOBiFunction<U, ? super T, U> iOBiFunction, IOBinaryOperator<U> iOBinaryOperator) {
        return (U) unwrap().reduce(u8, new C2825g(iOBiFunction, 1), new C2827h(iOBinaryOperator, 2));
    }

    default IOStream<T> skip(long j10) {
        return adapt(unwrap().skip(j10));
    }

    default IOStream<T> sorted(IOComparator<? super T> iOComparator) {
        return adapt(unwrap().sorted(new C2830k(iOComparator, 1)));
    }

    default Object[] toArray() {
        return unwrap().toArray();
    }

    default <A> A[] toArray(IntFunction<A[]> intFunction) {
        return (A[]) unwrap().toArray(intFunction);
    }

    @SafeVarargs
    /* JADX INFO: renamed from: of */
    static <T> IOStream<T> m4538of(T... tArr) {
        return (tArr == null || tArr.length == 0) ? empty() : adapt(Arrays.stream(tArr));
    }

    default IOStream<T> sorted() {
        return adapt(unwrap().sorted());
    }

    /* JADX INFO: renamed from: of */
    static <T> IOStream<T> m4537of(T t) {
        return adapt(Stream.of(t));
    }

    default T reduce(T t, IOBinaryOperator<T> iOBinaryOperator) {
        return unwrap().reduce(t, new C2827h(iOBinaryOperator, 3));
    }

    default Optional<T> reduce(IOBinaryOperator<T> iOBinaryOperator) {
        return unwrap().reduce(new C2827h(iOBinaryOperator, 1));
    }

    default <R, A> R collect(Collector<? super T, A, R> collector) {
        return (R) unwrap().collect(collector);
    }

    default void forAll(IOConsumer<T> iOConsumer) {
        forAll(iOConsumer, new C2816b0(2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ IOException lambda$forAll$10(Integer num, IOException iOException) {
        return iOException;
    }
}
