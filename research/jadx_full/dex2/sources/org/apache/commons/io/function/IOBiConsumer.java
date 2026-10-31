package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOBiConsumer<T, U> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void f(IOBiConsumer iOBiConsumer, Object obj, Object obj2) {
        iOBiConsumer.lambda$asBiConsumer$1(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void j(IOBiConsumer iOBiConsumer, IOBiConsumer iOBiConsumer2, Object obj, Object obj2) {
        iOBiConsumer.lambda$andThen$0(iOBiConsumer2, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default void lambda$andThen$0(IOBiConsumer iOBiConsumer, Object obj, Object obj2) {
        accept(obj, obj2);
        iOBiConsumer.accept(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default void lambda$asBiConsumer$1(Object obj, Object obj2) {
        Uncheck.accept(this, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T, U> IOBiConsumer<T, U> noop() {
        return Constants.IO_BI_CONSUMER;
    }

    void accept(T t, U u);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOBiConsumer<T, U> andThen(IOBiConsumer<? super T, ? super U> iOBiConsumer) {
        Objects.requireNonNull(iOBiConsumer);
        return new f5.f(18, this, iOBiConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BiConsumer<T, U> asBiConsumer() {
        return new e(this, 0);
    }
}
