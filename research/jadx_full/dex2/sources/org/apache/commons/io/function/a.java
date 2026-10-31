package org.apache.commons.io.function;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements IOBiConsumer, IOFunction, IOPredicate, IOTriConsumer, IOUnaryOperator {
    public final /* synthetic */ int b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i) {
        this.b = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOBiConsumer
    public void accept(Object obj, Object obj2) {
        Constants.c(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        switch (this.b) {
            case 1:
                return Constants.b(obj);
            default:
                return IOUnaryOperator.p(obj);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOPredicate
    public boolean test(Object obj) {
        switch (this.b) {
            case 2:
                return Constants.f(obj);
            case 3:
                return Constants.a(obj);
            default:
                return Objects.isNull(obj);
        }
    }

    @Override // org.apache.commons.io.function.IOTriConsumer
    public void accept(Object obj, Object obj2, Object obj3) {
        Constants.d(obj, obj2, obj3);
    }
}
