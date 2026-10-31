package org.apache.commons.p161io.function;

import java.io.IOException;
import java.util.function.BiFunction;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class IOStreams {
    static final Object NONE = new Object();

    private IOStreams() {
    }

    public static <T> void forAll(Stream<T> stream, IOConsumer<T> iOConsumer, BiFunction<Integer, IOException, IOException> biFunction) {
        IOStream.adapt(stream).forAll(iOConsumer, new C2816b0(1));
    }

    public static <T> void forEach(Stream<T> stream, IOConsumer<T> iOConsumer) {
        m4549of(stream).forEach(new C2814a0(0, toIOConsumer(iOConsumer)));
    }

    /* JADX INFO: renamed from: of */
    public static <T> Stream<T> m4548of(Iterable<T> iterable) {
        return iterable == null ? Stream.empty() : StreamSupport.stream(iterable.spliterator(), false);
    }

    public static <T> IOConsumer<T> toIOConsumer(IOConsumer<T> iOConsumer) {
        return iOConsumer != null ? iOConsumer : IOConsumer.noop();
    }

    public static <T> void forAll(Stream<T> stream, IOConsumer<T> iOConsumer) {
        forAll(stream, iOConsumer, new C2816b0(0));
    }

    /* JADX INFO: renamed from: of */
    public static <T> Stream<T> m4549of(Stream<T> stream) {
        return stream == null ? Stream.empty() : stream;
    }

    @SafeVarargs
    /* JADX INFO: renamed from: of */
    public static <T> Stream<T> m4550of(T... tArr) {
        return tArr == null ? Stream.empty() : Stream.of((Object[]) tArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IOException lambda$forAll$0(Integer num, IOException iOException) {
        return iOException;
    }
}
