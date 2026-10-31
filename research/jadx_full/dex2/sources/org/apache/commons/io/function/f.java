package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class f implements IOBiFunction {
    public final /* synthetic */ IOBiFunction a;
    public final /* synthetic */ IOFunction b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(IOBiFunction iOBiFunction, IOFunction iOFunction) {
        this.a = iOBiFunction;
        this.b = iOFunction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        return IOBiFunction.e(this.a, this.b, obj, obj2);
    }
}
