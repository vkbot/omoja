package org.apache.commons.io.output;

import org.apache.commons.io.function.IOFunction;
import org.apache.commons.io.function.IOTriFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class c implements IOFunction, IOTriFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ Appendable c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(Appendable appendable, int i) {
        this.b = i;
        this.c = appendable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return this.c.append(((Character) obj).charValue());
            default:
                return this.c.append((CharSequence) obj);
        }
    }

    @Override // org.apache.commons.io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return this.c.append((CharSequence) obj, iIntValue, iIntValue2);
    }
}
