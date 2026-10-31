package i9;

import kotlin.jvm.internal.DoubleCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class w extends i1 {
    public static final w c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        DoubleCompanionObject.INSTANCE.getClass();
        c = new w(x.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        v vVar = (v) obj;
        vVar.getClass();
        double dDecodeDoubleElement = cVar.decodeDoubleElement(this.b, i);
        g1.c(vVar);
        double[] dArr = vVar.a;
        int i2 = vVar.b;
        vVar.b = i2 + 1;
        dArr[i2] = dDecodeDoubleElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        v vVar = new v();
        vVar.a = dArr;
        vVar.b = dArr.length;
        vVar.b(10);
        return vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new double[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        double[] dArr = (double[]) obj;
        dVar.getClass();
        dArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeDoubleElement(this.b, i2, dArr[i2]);
        }
    }
}
