package org.apache.commons.p161io.function;

import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOSupplier<T> {
    default Supplier<T> asSupplier() {
        return new C2845z(this, 1);
    }

    T get();

    default T getUnchecked() {
        return (T) Uncheck.get(this);
    }
}
