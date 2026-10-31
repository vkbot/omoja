package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class v implements IOPredicate, IOFunction {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ v(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        return ((IOBaseStream) this.c).onClose((IORunnable) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOPredicate
    public boolean test(Object obj) {
        switch (this.b) {
            case 0:
                return IOPredicate.g((IOPredicate) this.c, obj);
            default:
                return IOPredicate.e(this.c, obj);
        }
    }
}
