package i9;

import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class k0 extends i1 {
    public static final k0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        IntCompanionObject.INSTANCE.getClass();
        c = new k0(l0.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        return iArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        j0 j0Var = (j0) obj;
        j0Var.getClass();
        int iDecodeIntElement = cVar.decodeIntElement(this.b, i);
        g1.c(j0Var);
        int[] iArr = j0Var.a;
        int i2 = j0Var.b;
        j0Var.b = i2 + 1;
        iArr[i2] = iDecodeIntElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        j0 j0Var = new j0();
        j0Var.a = iArr;
        j0Var.b = iArr.length;
        j0Var.b(10);
        return j0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new int[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        int[] iArr = (int[]) obj;
        dVar.getClass();
        iArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeIntElement(this.b, i2, iArr[i2]);
        }
    }
}
