package org.apache.commons.p161io.output;

import org.apache.commons.p161io.function.IOFunction;
import org.apache.commons.p161io.function.IOTriFunction;

/* JADX INFO: renamed from: org.apache.commons.io.output.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2911c implements IOFunction, IOTriFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8094b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Appendable f8095c;

    public /* synthetic */ C2911c(Appendable appendable, int i10) {
        this.f8094b = i10;
        this.f8095c = appendable;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.f8094b) {
            case 0:
                return this.f8095c.append(((Character) obj).charValue());
            default:
                return this.f8095c.append((CharSequence) obj);
        }
    }

    @Override // org.apache.commons.p161io.function.IOTriFunction
    public Object apply(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Integer) obj2).intValue();
        int iIntValue2 = ((Integer) obj3).intValue();
        return this.f8095c.append((CharSequence) obj, iIntValue, iIntValue2);
    }
}
