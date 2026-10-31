package org.apache.commons.p161io.function;

import java.util.Objects;
import p062f5.C1548f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOQuadFunction<T, U, V, W, R> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default Object lambda$andThen$0(IOFunction iOFunction, Object obj, Object obj2, Object obj3, Object obj4) {
        return iOFunction.apply(apply(obj, obj2, obj3, obj4));
    }

    default <X> IOQuadFunction<T, U, V, W, X> andThen(IOFunction<? super R, ? extends X> iOFunction) {
        Objects.requireNonNull(iOFunction);
        return new C1548f(21, this, iOFunction);
    }

    R apply(T t, U u8, V v9, W w);
}
