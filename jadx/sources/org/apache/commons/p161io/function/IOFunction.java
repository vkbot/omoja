package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import p062f5.C1548f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOFunction<T, R> {
    static <T> IOFunction<T, T> identity() {
        return Constants.IO_FUNCTION_ID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$0(Consumer consumer, Object obj) {
        consumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$1(Function function, Object obj) {
        return function.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$2(IOConsumer iOConsumer, Object obj) {
        iOConsumer.accept(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$3(IOFunction iOFunction, Object obj) {
        return iOFunction.apply(apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default Object lambda$asFunction$4(Object obj) {
        return Uncheck.apply(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$5(Function function, Object obj) {
        return apply(function.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$6(IOFunction iOFunction, Object obj) {
        return apply(iOFunction.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$7(IOSupplier iOSupplier) {
        return apply(iOSupplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$compose$8(Supplier supplier) {
        return apply(supplier.get());
    }

    default IOConsumer<T> andThen(Consumer<? super R> consumer) {
        Objects.requireNonNull(consumer, "after");
        return new C2831l(2, this, consumer);
    }

    R apply(T t);

    default Function<T, R> asFunction() {
        return new C2833n(this, 0);
    }

    default IOSupplier<R> compose(IOSupplier<? extends T> iOSupplier) {
        Objects.requireNonNull(iOSupplier, "before");
        return new C1548f(19, this, iOSupplier);
    }

    default <V> IOFunction<T, V> andThen(Function<? super R, ? extends V> function) {
        Objects.requireNonNull(function, "after");
        return new C2835p(this, function, 1);
    }

    default <V> IOFunction<V, R> compose(IOFunction<? super V, ? extends T> iOFunction) {
        Objects.requireNonNull(iOFunction, "before");
        return new C2834o(this, iOFunction, 1);
    }

    default IOConsumer<T> andThen(IOConsumer<? super R> iOConsumer) {
        Objects.requireNonNull(iOConsumer, "after");
        return new C2831l(this, iOConsumer);
    }

    default <V> IOFunction<V, R> compose(Function<? super V, ? extends T> function) {
        Objects.requireNonNull(function, "before");
        return new C2835p(this, function, 0);
    }

    default <V> IOFunction<T, V> andThen(IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction, "after");
        return new C2834o(this, iOFunction, 0);
    }

    default IOSupplier<R> compose(Supplier<? extends T> supplier) {
        Objects.requireNonNull(supplier, "before");
        return new C1548f(20, this, supplier);
    }
}
