package org.apache.commons.p161io.function;

import java.util.function.BinaryOperator;

/* JADX INFO: renamed from: org.apache.commons.io.function.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2827h implements BinaryOperator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7995a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOBinaryOperator f7996b;

    public /* synthetic */ C2827h(IOBinaryOperator iOBinaryOperator, int i10) {
        this.f7995a = i10;
        this.f7996b = iOBinaryOperator;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f7995a) {
            case 0:
                return this.f7996b.lambda$asBinaryOperator$2(obj, obj2);
            case 1:
                return Erase.apply(this.f7996b, obj, obj2);
            case 2:
                return Erase.apply(this.f7996b, obj, obj2);
            default:
                return Erase.apply(this.f7996b, obj, obj2);
        }
    }
}
