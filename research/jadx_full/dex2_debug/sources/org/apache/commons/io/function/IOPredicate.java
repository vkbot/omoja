package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOPredicate<T> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean a(IOPredicate iOPredicate, Object obj) {
        return iOPredicate.lambda$asPredicate$2(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOPredicate<T> alwaysFalse() {
        return (IOPredicate<T>) Constants.IO_PREDICATE_FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOPredicate<T> alwaysTrue() {
        return (IOPredicate<T>) Constants.IO_PREDICATE_TRUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean b(IOPredicate iOPredicate, IOPredicate iOPredicate2, Object obj) {
        return iOPredicate.lambda$and$1(iOPredicate2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean e(Object obj, Object obj2) {
        return lambda$isEqual$0(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean g(IOPredicate iOPredicate, Object obj) {
        return iOPredicate.lambda$negate$3(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static <T> IOPredicate<T> isEqual(Object obj) {
        return obj == null ? new a(5) : new v(1, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default boolean lambda$and$1(IOPredicate iOPredicate, Object obj) {
        return test(obj) && iOPredicate.test(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default boolean lambda$asPredicate$2(Object obj) {
        return Uncheck.test(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ boolean lambda$isEqual$0(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default boolean lambda$negate$3(Object obj) {
        return !test(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    private /* synthetic */ default boolean lambda$or$4(IOPredicate iOPredicate, Object obj) {
        return test(obj) || iOPredicate.test(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean o(IOPredicate iOPredicate, IOPredicate iOPredicate2, Object obj) {
        return iOPredicate.lambda$or$4(iOPredicate2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOPredicate<T> and(IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new w(this, iOPredicate, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Predicate<T> asPredicate() {
        return new x(this, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOPredicate<T> negate() {
        return new v(0, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOPredicate<T> or(IOPredicate<? super T> iOPredicate) {
        Objects.requireNonNull(iOPredicate);
        return new w(this, iOPredicate, 0);
    }

    boolean test(T t);
}
