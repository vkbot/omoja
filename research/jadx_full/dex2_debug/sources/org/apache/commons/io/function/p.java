package org.apache.commons.io.function;

import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class p implements IOFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOFunction c;
    public final /* synthetic */ Function d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(IOFunction iOFunction, Function function, int i) {
        this.b = i;
        this.c = iOFunction;
        this.d = function;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.b) {
            case 0:
                return IOFunction.r(this.c, this.d, obj);
            default:
                return IOFunction.q(this.c, this.d, obj);
        }
    }
}
