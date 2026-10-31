package org.apache.commons.io.input;

import java.nio.CharBuffer;
import org.apache.commons.io.function.IOBooleanSupplier;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOIntSupplier;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class q implements IOIntSupplier, IOTriFunction, IOFunction, IOBooleanSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ UncheckedFilterReader c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(UncheckedFilterReader uncheckedFilterReader, int i) {
        this.b = i;
        this.c = uncheckedFilterReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 2:
                return UncheckedFilterReader.S(this.c, (CharBuffer) obj);
            case 3:
                return UncheckedFilterReader.e0(this.c, (char[]) obj);
            default:
                return UncheckedFilterReader.d0(this.c, ((Long) obj).longValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        return UncheckedFilterReader.c0(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIntSupplier
    public int getAsInt() {
        return UncheckedFilterReader.y(this.c);
    }

    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return UncheckedFilterReader.V(this.c, (char[]) obj, iIntValue, iIntValue2);
    }
}
