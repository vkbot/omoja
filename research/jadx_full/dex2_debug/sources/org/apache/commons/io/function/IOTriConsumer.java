package org.apache.commons.io.function;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOTriConsumer<T, U, V> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default void lambda$andThen$0(IOTriConsumer iOTriConsumer, Object obj, Object obj2, Object obj3) {
        accept(obj, obj2, obj3);
        iOTriConsumer.accept(obj, obj2, obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void n(IOTriConsumer iOTriConsumer, IOTriConsumer iOTriConsumer2, Object obj, Object obj2, Object obj3) {
        iOTriConsumer.lambda$andThen$0(iOTriConsumer2, obj, obj2, obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T, U, V> IOTriConsumer<T, U, V> noop() {
        return Constants.IO_TRI_CONSUMER;
    }

    void accept(T t, U u, V v);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOTriConsumer<T, U, V> andThen(IOTriConsumer<? super T, ? super U, ? super V> iOTriConsumer) {
        Objects.requireNonNull(iOTriConsumer);
        return new f5.f(22, this, iOTriConsumer);
    }
}
