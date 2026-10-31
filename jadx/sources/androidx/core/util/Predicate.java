package androidx.core.util;

import androidx.core.content.C0333d;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface Predicate<T> {
    static <T> Predicate<T> isEqual(Object obj) {
        return obj == null ? new C0333d(11) : new C0395b(0, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$and$0(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$or$2(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    static <T> Predicate<T> not(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }

    default Predicate<T> and(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new C0394a(this, predicate, 1);
    }

    default Predicate<T> negate() {
        return new C0395b(1, this);
    }

    /* JADX INFO: renamed from: or */
    default Predicate<T> m664or(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new C0394a(this, predicate, 0);
    }

    boolean test(T t);
}
