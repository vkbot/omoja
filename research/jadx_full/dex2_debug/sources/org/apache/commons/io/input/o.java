package org.apache.commons.io.input;

import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOIntSupplier;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class o implements IOIntSupplier, IOTriFunction, IOFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ UncheckedFilterInputStream c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(UncheckedFilterInputStream uncheckedFilterInputStream, int i) {
        this.b = i;
        this.c = uncheckedFilterInputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 3:
                return UncheckedFilterInputStream.b(this.c, ((Long) obj).longValue());
            default:
                return UncheckedFilterInputStream.S(this.c, (byte[]) obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIntSupplier
    public int getAsInt() {
        switch (this.b) {
            case 0:
                return UncheckedFilterInputStream.d0(this.c);
            default:
                return UncheckedFilterInputStream.V(this.c);
        }
    }

    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return UncheckedFilterInputStream.c0(this.c, (byte[]) obj, iIntValue, iIntValue2);
    }
}
