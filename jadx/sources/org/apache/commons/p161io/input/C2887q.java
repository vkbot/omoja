package org.apache.commons.p161io.input;

import java.nio.CharBuffer;
import org.apache.commons.p161io.function.IOBooleanSupplier;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOIntSupplier;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.input.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2887q implements IOIntSupplier, IOTriFunction, IOFunction, IOBooleanSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8069b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ UncheckedFilterReader f8070c;

    public /* synthetic */ C2887q(UncheckedFilterReader uncheckedFilterReader, int i10) {
        this.f8069b = i10;
        this.f8070c = uncheckedFilterReader;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.f8069b) {
            case 2:
                return this.f8070c.lambda$read$5((CharBuffer) obj);
            case 3:
                return this.f8070c.lambda$read$3((char[]) obj);
            default:
                return this.f8070c.lambda$skip$8(((Long) obj).longValue());
        }
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        return this.f8070c.lambda$ready$6();
    }

    @Override // org.apache.commons.p161io.function.IOIntSupplier
    public int getAsInt() {
        return this.f8070c.lambda$read$2();
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return this.f8070c.lambda$read$4((char[]) obj, iIntValue, iIntValue2);
    }
}
