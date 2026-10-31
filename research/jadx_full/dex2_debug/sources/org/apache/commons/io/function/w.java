package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class w implements IOPredicate {
    public final /* synthetic */ int b;
    public final /* synthetic */ IOPredicate c;
    public final /* synthetic */ IOPredicate d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ w(IOPredicate iOPredicate, IOPredicate iOPredicate2, int i) {
        this.b = i;
        this.c = iOPredicate;
        this.d = iOPredicate2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOPredicate
    public final boolean test(Object obj) {
        switch (this.b) {
            case 0:
                return IOPredicate.o(this.c, this.d, obj);
            default:
                return IOPredicate.b(this.c, this.d, obj);
        }
    }
}
