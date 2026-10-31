package i9;

import kotlin.UShort;
import kotlin.UShortArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class c2 extends i1 {
    public static final c2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        UShort.Companion.getClass();
        c = new c2(d2.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        short[] sArr = ((UShortArray) obj).unbox-impl();
        sArr.getClass();
        return UShortArray.getSize-impl(sArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        b2 b2Var = (b2) obj;
        b2Var.getClass();
        short s = UShort.constructor-impl(cVar.decodeInlineElement(this.b, i).decodeShort());
        g1.c(b2Var);
        short[] sArr = b2Var.a;
        int i2 = b2Var.b;
        b2Var.b = i2 + 1;
        UShortArray.set-01HTLdE(sArr, i2, s);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        short[] sArr = ((UShortArray) obj).unbox-impl();
        sArr.getClass();
        b2 b2Var = new b2();
        b2Var.a = sArr;
        b2Var.b = UShortArray.getSize-impl(sArr);
        b2Var.b(10);
        return b2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return UShortArray.box-impl(UShortArray.constructor-impl(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        short[] sArr = ((UShortArray) obj).unbox-impl();
        dVar.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeInlineElement(this.b, i2).encodeShort(UShortArray.get-Mh2AYeg(sArr, i2));
        }
    }
}
