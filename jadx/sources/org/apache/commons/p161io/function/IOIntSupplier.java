package org.apache.commons.p161io.function;

import java.util.function.IntSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOIntSupplier {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default int lambda$asIntSupplier$0() {
        return Uncheck.getAsInt(this);
    }

    default IntSupplier asIntSupplier() {
        return new IntSupplier() { // from class: org.apache.commons.io.function.t
            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                return this.f8016a.lambda$asIntSupplier$0();
            }
        };
    }

    int getAsInt();
}
