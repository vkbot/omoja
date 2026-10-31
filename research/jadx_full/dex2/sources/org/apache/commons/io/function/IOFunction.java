package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOFunction<T, R> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object c(IOFunction iOFunction, IOFunction iOFunction2, Object obj) {
        return iOFunction.lambda$andThen$3(iOFunction2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void d(IOFunction iOFunction, Consumer consumer, Object obj) {
        iOFunction.lambda$andThen$0(consumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object h(IOFunction iOFunction, Object obj) {
        return iOFunction.lambda$asFunction$4(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object i(IOFunction iOFunction, Supplier supplier) {
        return iOFunction.lambda$compose$8(supplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOFunction<T, T> identity() {
        return Constants.IO_FUNCTION_ID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object k(IOFunction iOFunction, IOSupplier iOSupplier) {
        return iOFunction.lambda$compose$7(iOSupplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object l(IOFunction iOFunction, IOFunction iOFunction2, Object obj) {
        return iOFunction.lambda$compose$6(iOFunction2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default void lambda$andThen$0(Consumer consumer, Object obj) {
        consumer.accept(apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$andThen$1(Function function, Object obj) {
        return function.apply(apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default void lambda$andThen$2(IOConsumer iOConsumer, Object obj) {
        iOConsumer.accept(apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$andThen$3(IOFunction iOFunction, Object obj) {
        return iOFunction.apply(apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default Object lambda$asFunction$4(Object obj) {
        return Uncheck.apply(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: org.apache.commons.io.function.IOFunction<T, R> */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$compose$5(Function function, Object obj) {
        return apply(function.apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: org.apache.commons.io.function.IOFunction<T, R> */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$compose$6(IOFunction iOFunction, Object obj) {
        return apply(iOFunction.apply(obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: org.apache.commons.io.function.IOFunction<T, R> */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$compose$7(IOSupplier iOSupplier) {
        return apply(iOSupplier.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: org.apache.commons.io.function.IOFunction<T, R> */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$compose$8(Supplier supplier) {
        return apply(supplier.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void m(IOFunction iOFunction, IOConsumer iOConsumer, Object obj) {
        iOFunction.lambda$andThen$2(iOConsumer, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object q(IOFunction iOFunction, Function function, Object obj) {
        return iOFunction.lambda$andThen$1(function, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object r(IOFunction iOFunction, Function function, Object obj) {
        return iOFunction.lambda$compose$5(function, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOConsumer<T> andThen(Consumer<? super R> consumer) {
        Objects.requireNonNull(consumer, "after");
        return new l(2, this, consumer);
    }

    R apply(T t);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Function<T, R> asFunction() {
        return new n(this, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOSupplier<R> compose(IOSupplier<? extends T> iOSupplier) {
        Objects.requireNonNull(iOSupplier, "before");
        return new f5.f(19, this, iOSupplier);
    }

    default <V> IOFunction<T, V> andThen(Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function, "after");
        return new p(this, function, 1);
    }

    default <V> IOFunction<V, R> compose(IOFunction<? super V, ? extends T> iOFunction) {
        Objects.requireNonNull(iOFunction, "before");
        return new o(this, iOFunction, 1);
    }

    default IOConsumer<T> andThen(IOConsumer<? super R> iOConsumer) {
        Objects.requireNonNull(iOConsumer, "after");
        return new l(this, iOConsumer);
    }

    default <V> IOFunction<V, R> compose(Function<? super V, ? extends T> function) {
        Objects.requireNonNull(function, "before");
        return new p(this, function, 0);
    }

    default <V> IOFunction<T, V> andThen(IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction, "after");
        return new o(this, iOFunction, 0);
    }

    default IOSupplier<R> compose(Supplier<? extends T> supplier) {
        Objects.requireNonNull(supplier, "before");
        return new f5.f(20, this, supplier);
    }
}
