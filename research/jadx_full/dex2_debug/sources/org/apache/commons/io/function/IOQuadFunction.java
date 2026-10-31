package org.apache.commons.io.function;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOQuadFunction<T, U, V, W, R> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object g(IOQuadFunction iOQuadFunction, IOFunction iOFunction, Object obj, Object obj2, Object obj3, Object obj4) {
        return iOQuadFunction.lambda$andThen$0(iOFunction, obj, obj2, obj3, obj4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$andThen$0(IOFunction iOFunction, Object obj, Object obj2, Object obj3, Object obj4) {
        return iOFunction.apply(apply(obj, obj2, obj3, obj4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <X> IOQuadFunction<T, U, V, W, X> andThen(IOFunction<? super R, ? extends X> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new f5.f(21, this, iOFunction);
    }

    R apply(T t, U u, V v, W w);
}
