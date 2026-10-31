package org.apache.commons.io.function;

import java.util.function.BiFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class g implements BiFunction {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOBiFunction b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(IOBiFunction iOBiFunction, int i) {
        this.a = i;
        this.b = iOBiFunction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return IOBiFunction.b(this.b, obj, obj2);
            default:
                return IOStream.W(this.b, obj, obj2);
        }
    }
}
