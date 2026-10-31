package org.apache.commons.io.input;

import java.nio.CharBuffer;
import org.apache.commons.io.function.IOBooleanSupplier;
import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOIntSupplier;
import org.apache.commons.io.function.IOSupplier;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class l implements IOFunction, IOSupplier, IOTriFunction, IOIntSupplier, IOBooleanSupplier {
    public final /* synthetic */ int b;
    public final /* synthetic */ UncheckedBufferedReader c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(UncheckedBufferedReader uncheckedBufferedReader, int i) {
        this.b = i;
        this.c = uncheckedBufferedReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return UncheckedBufferedReader.g0(this.c, (char[]) obj);
            case 1:
            default:
                return UncheckedBufferedReader.b(this.c, ((Long) obj).longValue());
            case 2:
                return UncheckedBufferedReader.c(this.c, (CharBuffer) obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public Object get() {
        return UncheckedBufferedReader.d0(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        return UncheckedBufferedReader.f0(this.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIntSupplier
    public int getAsInt() {
        return UncheckedBufferedReader.y(this.c);
    }

    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return UncheckedBufferedReader.e0(this.c, (char[]) obj, iIntValue, iIntValue2);
    }
}
