package i9;

import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class p0 extends i1 {
    public static final p0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        LongCompanionObject.INSTANCE.getClass();
        c = new p0(q0.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        o0 o0Var = (o0) obj;
        o0Var.getClass();
        long jDecodeLongElement = cVar.decodeLongElement(this.b, i);
        g1.c(o0Var);
        long[] jArr = o0Var.a;
        int i2 = o0Var.b;
        o0Var.b = i2 + 1;
        jArr[i2] = jDecodeLongElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        o0 o0Var = new o0();
        o0Var.a = jArr;
        o0Var.b = jArr.length;
        o0Var.b(10);
        return o0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new long[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        long[] jArr = (long[]) obj;
        dVar.getClass();
        jArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeLongElement(this.b, i2, jArr[i2]);
        }
    }
}
