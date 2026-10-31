package org.apache.commons.io.function;

import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class z implements Supplier {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOSupplier b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ z(IOSupplier iOSupplier, int i) {
        this.a = i;
        this.b = iOSupplier;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return IOStream.l(this.b);
            default:
                return this.b.getUnchecked();
        }
    }
}
