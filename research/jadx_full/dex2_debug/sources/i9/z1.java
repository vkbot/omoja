package i9;

import kotlin.ULong;
import kotlin.ULongArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class z1 extends i1 {
    public static final z1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ULong.Companion.getClass();
        c = new z1(a2.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        long[] jArr = ((ULongArray) obj).unbox-impl();
        jArr.getClass();
        return ULongArray.getSize-impl(jArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        y1 y1Var = (y1) obj;
        y1Var.getClass();
        long j = ULong.constructor-impl(cVar.decodeInlineElement(this.b, i).decodeLong());
        g1.c(y1Var);
        long[] jArr = y1Var.a;
        int i2 = y1Var.b;
        y1Var.b = i2 + 1;
        ULongArray.set-k8EXiF4(jArr, i2, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        long[] jArr = ((ULongArray) obj).unbox-impl();
        jArr.getClass();
        y1 y1Var = new y1();
        y1Var.a = jArr;
        y1Var.b = ULongArray.getSize-impl(jArr);
        y1Var.b(10);
        return y1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return ULongArray.box-impl(ULongArray.constructor-impl(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        long[] jArr = ((ULongArray) obj).unbox-impl();
        dVar.getClass();
        jArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeInlineElement(this.b, i2).encodeLong(ULongArray.get-s-VKNKU(jArr, i2));
        }
    }
}
