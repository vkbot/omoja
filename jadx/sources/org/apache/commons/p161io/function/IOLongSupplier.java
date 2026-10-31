package org.apache.commons.p161io.function;

import java.util.function.LongSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOLongSupplier {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default long lambda$asSupplier$0() {
        return Uncheck.getAsLong(this);
    }

    default LongSupplier asSupplier() {
        return new LongSupplier() { // from class: org.apache.commons.io.function.u
            @Override // java.util.function.LongSupplier
            public final long getAsLong() {
                return this.f8017a.lambda$asSupplier$0();
            }
        };
    }

    long getAsLong();
}
