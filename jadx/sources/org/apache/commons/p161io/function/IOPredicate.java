package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOPredicate<T> {
    static <T> IOPredicate<T> alwaysFalse() {
        return (IOPredicate<T>) Constants.IO_PREDICATE_FALSE;
    }

    static <T> IOPredicate<T> alwaysTrue() {
        return (IOPredicate<T>) Constants.IO_PREDICATE_TRUE;
    }

    static <T> IOPredicate<T> isEqual(Object obj) {
        return obj == null ? new C2813a(5) : new C2841v(1, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$and$1(IOPredicate iOPredicate, Object obj) {
        return test(obj) && iOPredicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$asPredicate$2(Object obj) {
        return Uncheck.test(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$3(Object obj) {
        return !test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$or$4(IOPredicate iOPredicate, Object obj) {
        return test(obj) || iOPredicate.test(obj);
    }

    default IOPredicate<T> and(IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new C2842w(this, iOPredicate, 1);
    }

    default Predicate<T> asPredicate() {
        return new C2843x(this, 0);
    }

    default IOPredicate<T> negate() {
        return new C2841v(0, this);
    }

    /* JADX INFO: renamed from: or */
    default IOPredicate<T> m4516or(IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new C2842w(this, iOPredicate, 0);
    }

    boolean test(T t);
}
