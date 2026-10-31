package i9;

import kotlin.jvm.internal.FloatCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class d0 extends i1 {
    public static final d0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        FloatCompanionObject.INSTANCE.getClass();
        c = new d0(e0.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        c0 c0Var = (c0) obj;
        c0Var.getClass();
        float fDecodeFloatElement = cVar.decodeFloatElement(this.b, i);
        g1.c(c0Var);
        float[] fArr = c0Var.a;
        int i2 = c0Var.b;
        c0Var.b = i2 + 1;
        fArr[i2] = fDecodeFloatElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        c0 c0Var = new c0();
        c0Var.a = fArr;
        c0Var.b = fArr.length;
        c0Var.b(10);
        return c0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new float[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        float[] fArr = (float[]) obj;
        dVar.getClass();
        fArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeFloatElement(this.b, i2, fArr[i2]);
        }
    }
}
