package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class o implements IOFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOFunction c;
    public final /* synthetic */ IOFunction d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ o(IOFunction iOFunction, IOFunction iOFunction2, int i) {
        this.b = i;
        this.c = iOFunction;
        this.d = iOFunction2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return IOFunction.c(this.c, this.d, obj);
            default:
                return IOFunction.l(this.c, this.d, obj);
        }
    }
}
