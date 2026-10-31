package org.apache.commons.io.function;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterators;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
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
import org.apache.commons.io.IOExceptionList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface IOStream<T> extends IOBaseStream<T, IOStream<T>, Stream<T>> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ int B(IOComparator iOComparator, Object obj, Object obj2) {
        return lambda$min$16(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void C(IOConsumer iOConsumer, Object obj) {
        lambda$forEachOrdered$13(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean E(IOPredicate iOPredicate, Object obj) {
        return lambda$allMatch$0(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ int F(IOComparator iOComparator, Object obj, Object obj2) {
        return lambda$max$15(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ DoubleStream K(IOFunction iOFunction, Object obj) {
        return lambda$flatMapToDouble$7(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Stream M(IOFunction iOFunction, Object obj) {
        return lambda$flatMap$6(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object N(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return lambda$reduce$19(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object O(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return lambda$reduce$20(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void R(IOConsumer iOConsumer, Object obj) {
        lambda$forEach$12(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object T(IOFunction iOFunction, Object obj) {
        return lambda$map$14(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object W(IOBiFunction iOBiFunction, Object obj, Object obj2) {
        return lambda$reduce$21(iOBiFunction, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object X(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return lambda$reduce$22(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOStream<T> adapt(Stream<T> stream) {
        return IOStreamAdapter.adapt(stream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean e(IOPredicate iOPredicate, Object obj) {
        return lambda$noneMatch$17(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOStream<T> empty() {
        return IOStreamAdapter.adapt(Stream.empty());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void h(IOConsumer iOConsumer, Object obj) {
        lambda$peek$18(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void i(IOBiConsumer iOBiConsumer, Object obj, Object obj2) {
        lambda$collect$4(iOBiConsumer, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOStream<T> iterate(T t, IOUnaryOperator<T> iOUnaryOperator) {
        Objects.requireNonNull(iOUnaryOperator);
        return adapt(StreamSupport.stream(Spliterators.spliteratorUnknownSize(new IOStream$1(t, iOUnaryOperator), 1040), false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object l(IOSupplier iOSupplier) {
        return lambda$collect$2(iOSupplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$allMatch$0(IOPredicate iOPredicate, Object obj) {
        return Erase.test(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$anyMatch$1(IOPredicate iOPredicate, Object obj) {
        return Erase.test(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$collect$2(IOSupplier iOSupplier) {
        return Erase.get(iOSupplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$collect$3(IOBiConsumer iOBiConsumer, Object obj, Object obj2) throws Throwable {
        Erase.accept(iOBiConsumer, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$collect$4(IOBiConsumer iOBiConsumer, Object obj, Object obj2) throws Throwable {
        Erase.accept(iOBiConsumer, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$filter$5(IOPredicate iOPredicate, Object obj) {
        return Erase.test(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Stream lambda$flatMap$6(IOFunction iOFunction, Object obj) {
        return ((IOStream) Erase.apply(iOFunction, obj)).unwrap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ DoubleStream lambda$flatMapToDouble$7(IOFunction iOFunction, Object obj) {
        return (DoubleStream) Erase.apply(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ IntStream lambda$flatMapToInt$8(IOFunction iOFunction, Object obj) {
        return (IntStream) Erase.apply(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ LongStream lambda$flatMapToLong$9(IOFunction iOFunction, Object obj) {
        return (LongStream) Erase.apply(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$forAll$11(IOConsumer iOConsumer, AtomicReference atomicReference, BiFunction biFunction, AtomicInteger atomicInteger, Object obj) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$forEach$12(IOConsumer iOConsumer, Object obj) {
        Erase.accept(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$forEachOrdered$13(IOConsumer iOConsumer, Object obj) {
        Erase.accept(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$map$14(IOFunction iOFunction, Object obj) {
        return Erase.apply(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$max$15(IOComparator iOComparator, Object obj, Object obj2) {
        return Erase.compare(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$min$16(IOComparator iOComparator, Object obj, Object obj2) {
        return Erase.compare(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$noneMatch$17(IOPredicate iOPredicate, Object obj) {
        return Erase.test(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$peek$18(IOConsumer iOConsumer, Object obj) {
        Erase.accept(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$reduce$19(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return Erase.apply(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$reduce$20(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return Erase.apply(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$reduce$21(IOBiFunction iOBiFunction, Object obj, Object obj2) {
        return Erase.apply(iOBiFunction, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$reduce$22(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return Erase.apply(iOBinaryOperator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$sorted$23(IOComparator iOComparator, Object obj, Object obj2) {
        return Erase.compare(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ LongStream m(IOFunction iOFunction, Object obj) {
        return lambda$flatMapToLong$9(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOStream<T> of(Iterable<T> iterable) {
        return iterable == null ? empty() : adapt(StreamSupport.stream(iterable.spliterator(), false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ int q(IOComparator iOComparator, Object obj, Object obj2) {
        return lambda$sorted$23(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean r(IOPredicate iOPredicate, Object obj) {
        return lambda$filter$5(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean s(IOPredicate iOPredicate, Object obj) {
        return lambda$anyMatch$1(iOPredicate, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ IntStream u(IOFunction iOFunction, Object obj) {
        return lambda$flatMapToInt$8(iOFunction, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void v(IOConsumer iOConsumer, AtomicReference atomicReference, BiFunction biFunction, AtomicInteger atomicInteger, Object obj) {
        lambda$forAll$11(iOConsumer, atomicReference, biFunction, atomicInteger, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void x(IOBiConsumer iOBiConsumer, Object obj, Object obj2) {
        lambda$collect$3(iOBiConsumer, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ IOException z(Integer num, IOException iOException) {
        return lambda$forAll$10(num, iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean allMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().allMatch(new x(iOPredicate, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean anyMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().anyMatch(new x(iOPredicate, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <R> R collect(IOSupplier<R> iOSupplier, IOBiConsumer<R, ? super T> iOBiConsumer, IOBiConsumer<R, R> iOBiConsumer2) {
        return (R) unwrap().collect(new z(iOSupplier, 0), new e(iOBiConsumer, 2), new e(iOBiConsumer2, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default long count() {
        return unwrap().count();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> distinct() {
        return adapt(unwrap().distinct());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> filter(IOPredicate<? super T> iOPredicate) {
        return adapt(unwrap().filter(new x(iOPredicate, 1)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Optional<T> findAny() {
        return unwrap().findAny();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Optional<T> findFirst() {
        return unwrap().findFirst();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <R> IOStream<R> flatMap(IOFunction<? super T, ? extends IOStream<? extends R>> iOFunction) {
        return adapt(unwrap().flatMap(new n(iOFunction, 2)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default DoubleStream flatMapToDouble(IOFunction<? super T, ? extends DoubleStream> iOFunction) {
        return unwrap().flatMapToDouble(new n(iOFunction, 5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IntStream flatMapToInt(IOFunction<? super T, ? extends IntStream> iOFunction) {
        return unwrap().flatMapToInt(new n(iOFunction, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default LongStream flatMapToLong(IOFunction<? super T, ? extends LongStream> iOFunction) {
        return unwrap().flatMapToLong(new n(iOFunction, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forAll(IOConsumer<T> iOConsumer, BiFunction<Integer, IOException, IOException> biFunction) {
        AtomicReference atomicReference = new AtomicReference();
        AtomicInteger atomicInteger = new AtomicInteger();
        unwrap().forEach(new y(IOStreams.toIOConsumer(iOConsumer), atomicReference, biFunction, atomicInteger));
        IOExceptionList.checkEmpty((List) atomicReference.get(), null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forEach(IOConsumer<? super T> iOConsumer) {
        unwrap().forEach(new a0(3, iOConsumer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void forEachOrdered(IOConsumer<? super T> iOConsumer) {
        unwrap().forEachOrdered(new a0(4, iOConsumer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> limit(long j) {
        return adapt(unwrap().limit(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <R> IOStream<R> map(IOFunction<? super T, ? extends R> iOFunction) {
        return adapt(unwrap().map(new n(iOFunction, 1)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default DoubleStream mapToDouble(ToDoubleFunction<? super T> toDoubleFunction) {
        return unwrap().mapToDouble(toDoubleFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IntStream mapToInt(ToIntFunction<? super T> toIntFunction) {
        return unwrap().mapToInt(toIntFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default LongStream mapToLong(ToLongFunction<? super T> toLongFunction) {
        return unwrap().mapToLong(toLongFunction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Optional<T> max(IOComparator<? super T> iOComparator) {
        return unwrap().max(new k(iOComparator, 3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Optional<T> min(IOComparator<? super T> iOComparator) {
        return unwrap().min(new k(iOComparator, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean noneMatch(IOPredicate<? super T> iOPredicate) {
        return unwrap().noneMatch(new x(iOPredicate, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> peek(IOConsumer<? super T> iOConsumer) {
        return adapt(unwrap().peek(new a0(2, iOConsumer)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <U> U reduce(U u, IOBiFunction<U, ? super T, U> iOBiFunction, IOBinaryOperator<U> iOBinaryOperator) {
        return (U) unwrap().reduce(u, new g(iOBiFunction, 1), new h(iOBinaryOperator, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> skip(long j) {
        return adapt(unwrap().skip(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOStream<T> sorted(IOComparator<? super T> iOComparator) {
        return adapt(unwrap().sorted(new k(iOComparator, 1)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Object[] toArray() {
        return unwrap().toArray();
    }

    default <A> A[] toArray(IntFunction<A[]> intFunction) {
        return (A[]) unwrap().toArray(intFunction);
    }

    @SafeVarargs
    static <T> IOStream<T> of(T... tArr) {
        return (tArr == null || tArr.length == 0) ? empty() : adapt(Arrays.stream(tArr));
    }

    default IOStream<T> sorted() {
        return adapt(unwrap().sorted());
    }

    static <T> IOStream<T> of(T t) {
        return adapt(Stream.of(t));
    }

    default T reduce(T t, IOBinaryOperator<T> iOBinaryOperator) {
        return unwrap().reduce(t, new h(iOBinaryOperator, 3));
    }

    default Optional<T> reduce(IOBinaryOperator<T> iOBinaryOperator) {
        return unwrap().reduce(new h(iOBinaryOperator, 1));
    }

    default <R, A> R collect(Collector<? super T, A, R> collector) {
        return (R) unwrap().collect(collector);
    }

    default void forAll(IOConsumer<T> iOConsumer) {
        forAll(iOConsumer, new b0(2));
    }

    private static /* synthetic */ IOException lambda$forAll$10(Integer num, IOException iOException) {
        return iOException;
    }
}
