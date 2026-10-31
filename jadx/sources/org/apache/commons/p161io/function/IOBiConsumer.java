package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.BiConsumer;
import p062f5.C1548f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOBiConsumer<T, U> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$0(IOBiConsumer iOBiConsumer, Object obj, Object obj2) {
        accept(obj, obj2);
        iOBiConsumer.accept(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$asBiConsumer$1(Object obj, Object obj2) {
        Uncheck.accept(this, obj, obj2);
    }

    static <T, U> IOBiConsumer<T, U> noop() {
        return Constants.IO_BI_CONSUMER;
    }

    void accept(T t, U u8);

    default IOBiConsumer<T, U> andThen(IOBiConsumer<? super T, ? super U> iOBiConsumer) {
        Objects.requireNonNull(iOBiConsumer);
        return new C1548f(18, this, iOBiConsumer);
    }

    default BiConsumer<T, U> asBiConsumer() {
        return new C2821e(this, 0);
    }
}
