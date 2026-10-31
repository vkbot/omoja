package org.apache.commons.io.function;

import java.util.function.BooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOBooleanSupplier {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default boolean lambda$asBooleanSupplier$0() {
        return Uncheck.getAsBoolean(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ boolean o(IOBooleanSupplier iOBooleanSupplier) {
        return iOBooleanSupplier.lambda$asBooleanSupplier$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default BooleanSupplier asBooleanSupplier() {
        return new j(this);
    }

    boolean getAsBoolean();
}
