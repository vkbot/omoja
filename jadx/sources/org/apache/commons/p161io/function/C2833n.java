package org.apache.commons.p161io.function;

import java.util.function.Function;

/* JADX INFO: renamed from: org.apache.commons.io.function.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2833n implements Function {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8005b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOFunction f8006c;

    public /* synthetic */ C2833n(IOFunction iOFunction, int i10) {
        this.f8005b = i10;
        this.f8006c = iOFunction;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f8005b) {
            case 0:
                return this.f8006c.lambda$asFunction$4(obj);
            case 1:
                return Erase.apply(this.f8006c, obj);
            case 2:
                return IOStream.lambda$flatMap$6(this.f8006c, obj);
            case 3:
                return IOStream.lambda$flatMapToInt$8(this.f8006c, obj);
            case 4:
                return IOStream.lambda$flatMapToLong$9(this.f8006c, obj);
            default:
                return IOStream.lambda$flatMapToDouble$7(this.f8006c, obj);
        }
    }
}
