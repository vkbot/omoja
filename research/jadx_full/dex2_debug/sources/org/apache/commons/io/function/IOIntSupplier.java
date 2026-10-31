package org.apache.commons.io.function;

import java.util.function.IntSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOIntSupplier {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ int a(IOIntSupplier iOIntSupplier) {
        return iOIntSupplier.lambda$asIntSupplier$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default int lambda$asIntSupplier$0() {
        return Uncheck.getAsInt(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IntSupplier asIntSupplier() {
        return new t(this);
    }

    int getAsInt();
}
