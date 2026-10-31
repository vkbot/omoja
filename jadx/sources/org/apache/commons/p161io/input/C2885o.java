package org.apache.commons.p161io.input;

import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOIntSupplier;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.input.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2885o implements IOIntSupplier, IOTriFunction, IOFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8065b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ UncheckedFilterInputStream f8066c;

    public /* synthetic */ C2885o(UncheckedFilterInputStream uncheckedFilterInputStream, int i10) {
        this.f8065b = i10;
        this.f8066c = uncheckedFilterInputStream;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.f8065b) {
            case 3:
                return this.f8066c.lambda$skip$6(((Long) obj).longValue());
            default:
                return this.f8066c.lambda$read$3((byte[]) obj);
        }
    }

    @Override // org.apache.commons.p161io.function.IOIntSupplier
    public int getAsInt() {
        switch (this.f8065b) {
            case 0:
                return this.f8066c.lambda$read$2();
            default:
                return this.f8066c.lambda$available$0();
        }
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return this.f8066c.lambda$read$4((byte[]) obj, iIntValue, iIntValue2);
    }
}
