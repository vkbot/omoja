package org.apache.commons.io.function;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOTriFunction<T, U, V, R> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object b(IOTriFunction iOTriFunction, IOFunction iOFunction, Object obj, Object obj2, Object obj3) {
        return iOTriFunction.lambda$andThen$0(iOFunction, obj, obj2, obj3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$andThen$0(IOFunction iOFunction, Object obj, Object obj2, Object obj3) {
        return iOFunction.apply(apply(obj, obj2, obj3));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <W> IOTriFunction<T, U, V, W> andThen(IOFunction<? super R, ? extends W> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new f5.f(23, this, iOFunction);
    }

    R apply(T t, U u, V v);
}
