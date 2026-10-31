package org.apache.commons.io.function;

import java.util.function.IntSupplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class t implements IntSupplier {
    public final /* synthetic */ IOIntSupplier a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t(IOIntSupplier iOIntSupplier) {
        this.a = iOIntSupplier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntSupplier
    public final int getAsInt() {
        return IOIntSupplier.a(this.a);
    }
}
