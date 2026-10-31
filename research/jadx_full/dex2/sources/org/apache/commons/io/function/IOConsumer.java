package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOConsumer<T> {
    public static final IOConsumer<?> NOOP_IO_CONSUMER = new m();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void a(Object obj) {
        lambda$static$0(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void b(IOConsumer iOConsumer, Object obj) {
        iOConsumer.lambda$asConsumer$2(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void c(IOConsumer iOConsumer, IOConsumer iOConsumer2, Object obj) {
        iOConsumer.lambda$andThen$1(iOConsumer2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> void forAll(IOConsumer<T> iOConsumer, Stream<T> stream) {
        IOStreams.forAll(stream, iOConsumer, new b0(1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> void forEach(Iterable<T> iterable, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(IOStreams.of(iterable), iOConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default void lambda$andThen$1(IOConsumer iOConsumer, Object obj) {
        accept(obj);
        iOConsumer.accept(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default void lambda$asConsumer$2(Object obj) {
        Uncheck.accept(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOConsumer<T> noop() {
        return (IOConsumer<T>) NOOP_IO_CONSUMER;
    }

    void accept(T t);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOConsumer<T> andThen(IOConsumer<? super T> iOConsumer) {
        Objects.requireNonNull(iOConsumer, "after");
        return new l(0, this, iOConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Consumer<T> asConsumer() {
        return new a0(1, this);
    }

    static <T> void forEach(Stream<T> stream, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(stream, iOConsumer);
    }

    static <T> void forEach(T[] tArr, IOConsumer<T> iOConsumer) {
        IOStreams.forEach(IOStreams.of(tArr), iOConsumer);
    }

    static <T> void forAll(IOConsumer<T> iOConsumer, Iterable<T> iterable) {
        IOStreams.forAll(IOStreams.of(iterable), iOConsumer);
    }

    @SafeVarargs
    static <T> void forAll(IOConsumer<T> iOConsumer, T... tArr) {
        IOStreams.forAll(IOStreams.of(tArr), iOConsumer);
    }

    private static /* synthetic */ void lambda$static$0(Object obj) {
    }
}
