package org.apache.commons.p161io.function;

import java.util.Objects;
import p062f5.C1548f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOTriConsumer<T, U, V> {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default void lambda$andThen$0(IOTriConsumer iOTriConsumer, Object obj, Object obj2, Object obj3) {
        accept(obj, obj2, obj3);
        iOTriConsumer.accept(obj, obj2, obj3);
    }

    static <T, U, V> IOTriConsumer<T, U, V> noop() {
        return Constants.IO_TRI_CONSUMER;
    }

    void accept(T t, U u8, V v9);

    default IOTriConsumer<T, U, V> andThen(IOTriConsumer<? super T, ? super U, ? super V> iOTriConsumer) {
        Objects.requireNonNull(iOTriConsumer);
        return new C1548f(22, this, iOTriConsumer);
    }
}
