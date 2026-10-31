package org.apache.commons.io.function;

import java.util.function.UnaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOUnaryOperator<T> extends IOFunction<T, T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOUnaryOperator<T> identity() {
        return new a(6);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default Object lambda$asUnaryOperator$1(Object obj) {
        return Uncheck.apply(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object p(Object obj) {
        return lambda$identity$0(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object s(Object obj, IOUnaryOperator iOUnaryOperator) {
        return iOUnaryOperator.lambda$asUnaryOperator$1(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default UnaryOperator<T> asUnaryOperator() {
        return new c0(this);
    }

    private static /* synthetic */ Object lambda$identity$0(Object obj) {
        return obj;
    }
}
