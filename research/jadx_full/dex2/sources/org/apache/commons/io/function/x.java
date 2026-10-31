package org.apache.commons.io.function;

import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class x implements Predicate {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOPredicate b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ x(IOPredicate iOPredicate, int i) {
        this.a = i;
        this.b = iOPredicate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                return IOPredicate.a(this.b, obj);
            case 1:
                return IOStream.r(this.b, obj);
            case 2:
                return IOStream.s(this.b, obj);
            case 3:
                return IOStream.E(this.b, obj);
            default:
                return IOStream.e(this.b, obj);
        }
    }
}
