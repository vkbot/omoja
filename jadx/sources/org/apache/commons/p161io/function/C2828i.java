package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2828i implements IOBinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7997a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOComparator f7998b;

    public /* synthetic */ C2828i(IOComparator iOComparator, int i10) {
        this.f7997a = i10;
        this.f7998b = iOComparator;
    }

    @Override // org.apache.commons.p161io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f7997a) {
            case 0:
                return IOBinaryOperator.lambda$maxBy$0(this.f7998b, obj, obj2);
            default:
                return IOBinaryOperator.lambda$minBy$1(this.f7998b, obj, obj2);
        }
    }
}
