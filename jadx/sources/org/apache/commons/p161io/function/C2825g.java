package org.apache.commons.p161io.function;

import java.util.function.BiFunction;

/* JADX INFO: renamed from: org.apache.commons.io.function.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2825g implements BiFunction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7991a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOBiFunction f7992b;

    public /* synthetic */ C2825g(IOBiFunction iOBiFunction, int i10) {
        this.f7991a = i10;
        this.f7992b = iOBiFunction;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f7991a) {
            case 0:
                return this.f7992b.lambda$asBiFunction$1(obj, obj2);
            default:
                return Erase.apply(this.f7992b, obj, obj2);
        }
    }
}
