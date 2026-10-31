package org.apache.commons.io.function;

import java.util.function.LongSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class u implements LongSupplier {
    public final /* synthetic */ IOLongSupplier a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ u(IOLongSupplier iOLongSupplier) {
        this.a = iOLongSupplier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.LongSupplier
    public final long getAsLong() {
        return IOLongSupplier.a(this.a);
    }
}
