package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.BiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOBiFunction<T, U, R> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object b(IOBiFunction iOBiFunction, Object obj, Object obj2) {
        return iOBiFunction.lambda$asBiFunction$1(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object e(IOBiFunction iOBiFunction, IOFunction iOFunction, Object obj, Object obj2) {
        return iOBiFunction.lambda$andThen$0(iOFunction, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default Object lambda$andThen$0(IOFunction iOFunction, Object obj, Object obj2) {
        return iOFunction.apply(apply(obj, obj2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default Object lambda$asBiFunction$1(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default <V> IOBiFunction<T, U, V> andThen(IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new f(this, iOFunction);
    }

    R apply(T t, U u);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BiFunction<T, U, R> asBiFunction() {
        return new g(this, 0);
    }
}
