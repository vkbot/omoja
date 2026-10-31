package org.apache.commons.io.function;

import java.util.function.LongSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOLongSupplier {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ long a(IOLongSupplier iOLongSupplier) {
        return iOLongSupplier.lambda$asSupplier$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default long lambda$asSupplier$0() {
        return Uncheck.getAsLong(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default LongSupplier asSupplier() {
        return new u(this);
    }

    long getAsLong();
}
