package org.apache.commons.p161io.function;

import java.util.function.BooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOBooleanSupplier {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default boolean lambda$asBooleanSupplier$0() {
        return Uncheck.getAsBoolean(this);
    }

    default BooleanSupplier asBooleanSupplier() {
        return new BooleanSupplier() { // from class: org.apache.commons.io.function.j
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return this.f7999a.lambda$asBooleanSupplier$0();
            }
        };
    }

    boolean getAsBoolean();
}
