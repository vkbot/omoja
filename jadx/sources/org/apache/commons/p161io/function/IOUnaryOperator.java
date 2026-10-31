package org.apache.commons.p161io.function;

import java.util.function.UnaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOUnaryOperator<T> extends IOFunction<T, T> {
    static <T> IOUnaryOperator<T> identity() {
        return new C2813a(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default Object lambda$asUnaryOperator$1(Object obj) {
        return Uncheck.apply(this, obj);
    }

    default UnaryOperator<T> asUnaryOperator() {
        return new UnaryOperator() { // from class: org.apache.commons.io.function.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f7980b.lambda$asUnaryOperator$1(obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Object lambda$identity$0(Object obj) {
        return obj;
    }
}
