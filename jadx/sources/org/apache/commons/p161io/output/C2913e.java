package org.apache.commons.p161io.output;

import java.io.IOException;
import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOTriConsumer;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.output.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2913e implements IOFunction, IOTriConsumer, IOTriFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8098b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ UncheckedFilterWriter f8099c;

    public /* synthetic */ C2913e(UncheckedFilterWriter uncheckedFilterWriter, int i10) {
        this.f8098b = i10;
        this.f8099c = uncheckedFilterWriter;
    }

    @Override // org.apache.commons.p161io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) throws IOException {
        switch (this.f8098b) {
            case 2:
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                this.f8099c.lambda$write$9((String) obj, iIntValue, iIntValue2);
                break;
            default:
                int iIntValue3 = ((Integer) obj2).intValue();
                int iIntValue4 = ((Integer) obj3).intValue();
                this.f8099c.lambda$write$6((char[]) obj, iIntValue3, iIntValue4);
                break;
        }
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.f8098b) {
            case 0:
                return this.f8099c.lambda$append$1((CharSequence) obj);
            default:
                return this.f8099c.lambda$append$0(((Character) obj).charValue());
        }
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return this.f8099c.lambda$append$2((CharSequence) obj, iIntValue, iIntValue2);
    }
}
