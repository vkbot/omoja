package org.apache.commons.io.output;

import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOTriConsumer;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class e implements IOFunction, IOTriConsumer, IOTriFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ UncheckedFilterWriter c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(UncheckedFilterWriter uncheckedFilterWriter, int i) {
        this.b = i;
        this.c = uncheckedFilterWriter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) {
        switch (this.b) {
            case 2:
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                UncheckedFilterWriter.y(this.c, (String) obj, iIntValue, iIntValue2);
                break;
            default:
                int iIntValue3 = ((Integer) obj2).intValue();
                int iIntValue4 = ((Integer) obj3).intValue();
                UncheckedFilterWriter.c(this.c, (char[]) obj, iIntValue3, iIntValue4);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return UncheckedFilterWriter.d0(this.c, (CharSequence) obj);
            default:
                return UncheckedFilterWriter.e0(this.c, ((Character) obj).charValue());
        }
    }

    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return UncheckedFilterWriter.c0(this.c, (CharSequence) obj, iIntValue, iIntValue2);
    }
}
