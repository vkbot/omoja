package i9;

import kotlin.jvm.internal.ShortCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class o1 extends i1 {
    public static final o1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ShortCompanionObject.INSTANCE.getClass();
        c = new o1(p1.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        n1 n1Var = (n1) obj;
        n1Var.getClass();
        short sDecodeShortElement = cVar.decodeShortElement(this.b, i);
        g1.c(n1Var);
        short[] sArr = n1Var.a;
        int i2 = n1Var.b;
        n1Var.b = i2 + 1;
        sArr[i2] = sDecodeShortElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        n1 n1Var = new n1();
        n1Var.a = sArr;
        n1Var.b = sArr.length;
        n1Var.b(10);
        return n1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new short[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        short[] sArr = (short[]) obj;
        dVar.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeShortElement(this.b, i2, sArr[i2]);
        }
    }
}
