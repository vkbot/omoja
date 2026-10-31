package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOConsumer<T> {
    public static final IOConsumer<?> NOOP_IO_CONSUMER = new C2832m();

    static <T> void forAll(IOConsumer<T> iOConsumer, Stream<T> stream) {
        IOStreams.forAll(stream, iOConsumer, new C2816b0(1));
    }

    static <T> void forEach(Iterable<T> iterable, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(IOStreams.m4548of(iterable), iOConsumer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$1(IOConsumer iOConsumer, Object obj) {
        accept(obj);
        iOConsumer.accept(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$asConsumer$2(Object obj) {
        Uncheck.accept(this, obj);
    }

    static <T> IOConsumer<T> noop() {
        return (IOConsumer<T>) NOOP_IO_CONSUMER;
    }

    void accept(T t);

    default IOConsumer<T> andThen(IOConsumer<? super T> iOConsumer) {
        Objects.requireNonNull(iOConsumer, "after");
        return new C2831l(0, this, iOConsumer);
    }

    default Consumer<T> asConsumer() {
        return new C2814a0(1, this);
    }

    static <T> void forEach(Stream<T> stream, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(stream, iOConsumer);
    }

    static <T> void forEach(T[] tArr, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(IOStreams.m4550of(tArr), iOConsumer);
    }

    static <T> void forAll(IOConsumer<T> iOConsumer, Iterable<T> iterable) {
        IOStreams.forAll(IOStreams.m4548of(iterable), iOConsumer);
    }

    @SafeVarargs
    static <T> void forAll(IOConsumer<T> iOConsumer, T... tArr) {
        IOStreams.forAll(IOStreams.m4550of(tArr), iOConsumer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ void lambda$static$0(Object obj) {
    }
}
