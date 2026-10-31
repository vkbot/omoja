package org.apache.commons.io.function;

import java.util.function.BooleanSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class j implements BooleanSupplier {
    public final /* synthetic */ IOBooleanSupplier a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(IOBooleanSupplier iOBooleanSupplier) {
        this.a = iOBooleanSupplier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BooleanSupplier
    public final boolean getAsBoolean() {
        return IOBooleanSupplier.o(this.a);
    }
}
