package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.BiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOBiFunction<T, U, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$0(IOFunction iOFunction, Object obj, Object obj2) {
        return iOFunction.apply(apply(obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default Object lambda$asBiFunction$1(Object obj, Object obj2) {
        return Uncheck.apply(this, obj, obj2);
    }

    default <V> IOBiFunction<T, U, V> andThen(final IOFunction<? super R, ? extends V> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new IOBiFunction() { // from class: org.apache.commons.io.function.f
            @Override // org.apache.commons.p161io.function.IOBiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f7988a.lambda$andThen$0(iOFunction, obj, obj2);
            }
        };
    }

    R apply(T t, U u8);

    default BiFunction<T, U, R> asBiFunction() {
        return new C2825g(this, 0);
    }
}
