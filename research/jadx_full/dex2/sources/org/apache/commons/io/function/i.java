package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class i implements IOBinaryOperator {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOComparator b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(IOComparator iOComparator, int i) {
        this.a = i;
        this.b = iOComparator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return IOBinaryOperator.d(this.b, obj, obj2);
            default:
                return IOBinaryOperator.a(this.b, obj, obj2);
        }
    }
}
