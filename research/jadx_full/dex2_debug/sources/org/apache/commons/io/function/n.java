package org.apache.commons.io.function;

import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class n implements Function {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOFunction c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ n(IOFunction iOFunction, int i) {
        this.b = i;
        this.c = iOFunction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return IOFunction.h(this.c, obj);
            case 1:
                return IOStream.T(this.c, obj);
            case 2:
                return IOStream.M(this.c, obj);
            case 3:
                return IOStream.u(this.c, obj);
            case 4:
                return IOStream.m(this.c, obj);
            default:
                return IOStream.K(this.c, obj);
        }
    }
}
