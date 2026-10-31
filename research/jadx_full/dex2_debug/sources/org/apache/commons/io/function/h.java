package org.apache.commons.io.function;

import java.util.function.BinaryOperator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class h implements BinaryOperator {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOBinaryOperator b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(IOBinaryOperator iOBinaryOperator, int i) {
        this.a = i;
        this.b = iOBinaryOperator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return IOBinaryOperator.c(this.b, obj, obj2);
            case 1:
                return IOStream.N(this.b, obj, obj2);
            case 2:
                return IOStream.X(this.b, obj, obj2);
            default:
                return IOStream.O(this.b, obj, obj2);
        }
    }
}
