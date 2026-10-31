package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.BinaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOBinaryOperator<T> extends IOBiFunction<T, T, T> {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default Object lambda$asBinaryOperator$2(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$maxBy$0(IOComparator iOComparator, Object obj, Object obj2) {
        return iOComparator.compare(obj, obj2) >= 0 ? obj : obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$minBy$1(IOComparator iOComparator, Object obj, Object obj2) {
        return iOComparator.compare(obj, obj2) <= 0 ? obj : obj2;
    }

    static <T> IOBinaryOperator<T> maxBy(IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new C2828i(iOComparator, 0);
    }

    static <T> IOBinaryOperator<T> minBy(IOComparator<? super T> iOComparator) {
        Objects.requireNonNull(iOComparator);
        return new C2828i(iOComparator, 1);
    }

    default BinaryOperator<T> asBinaryOperator() {
        return new C2827h(this, 0);
    }
}
