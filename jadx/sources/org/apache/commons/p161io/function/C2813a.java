package org.apache.commons.p161io.function;

import java.util.Objects;

/* JADX INFO: renamed from: org.apache.commons.io.function.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2813a implements IOBiConsumer, IOFunction, IOPredicate, IOTriConsumer, IOUnaryOperator {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7976b;

    public /* synthetic */ C2813a(int i10) {
        this.f7976b = i10;
    }

    @Override // org.apache.commons.p161io.function.IOBiConsumer
    public void accept(Object obj, Object obj2) {
        Constants.lambda$static$0(obj, obj2);
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.f7976b) {
            case 1:
                return Constants.lambda$static$3(obj);
            default:
                return IOUnaryOperator.lambda$identity$0(obj);
        }
    }

    @Override // org.apache.commons.p161io.function.IOPredicate
    public boolean test(Object obj) {
        switch (this.f7976b) {
            case 2:
                return Constants.lambda$static$4(obj);
            case 3:
                return Constants.lambda$static$5(obj);
            default:
                return Objects.isNull(obj);
        }
    }

    @Override // org.apache.commons.p161io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) {
        Constants.lambda$static$6(obj, obj2, obj3);
    }
}
