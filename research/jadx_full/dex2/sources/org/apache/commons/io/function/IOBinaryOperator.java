package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.BinaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOBinaryOperator<T> extends IOBiFunction<T, T, T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object a(IOComparator iOComparator, Object obj, Object obj2) {
        return lambda$minBy$1(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object c(IOBinaryOperator iOBinaryOperator, Object obj, Object obj2) {
        return iOBinaryOperator.lambda$asBinaryOperator$2(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ Object d(IOComparator iOComparator, Object obj, Object obj2) {
        return lambda$maxBy$0(iOComparator, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default Object lambda$asBinaryOperator$2(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$maxBy$0(IOComparator iOComparator, Object obj, Object obj2) {
        return iOComparator.compare(obj, obj2) >= 0 ? obj : obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Object lambda$minBy$1(IOComparator iOComparator, Object obj, Object obj2) {
        return iOComparator.compare(obj, obj2) <= 0 ? obj : obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOBinaryOperator<T> maxBy(IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new i(iOComparator, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOBinaryOperator<T> minBy(IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new i(iOComparator, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BinaryOperator<T> asBinaryOperator() {
        return new h(this, 0);
    }
}
