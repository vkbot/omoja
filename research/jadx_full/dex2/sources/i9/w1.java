package i9;

import kotlin.UInt;
import kotlin.UIntArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class w1 extends i1 {
    public static final w1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        UInt.Companion.getClass();
        c = new w1(x1.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        int[] iArr = ((UIntArray) obj).unbox-impl();
        iArr.getClass();
        return UIntArray.getSize-impl(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        v1 v1Var = (v1) obj;
        v1Var.getClass();
        int i2 = UInt.constructor-impl(cVar.decodeInlineElement(this.b, i).decodeInt());
        g1.c(v1Var);
        int[] iArr = v1Var.a;
        int i3 = v1Var.b;
        v1Var.b = i3 + 1;
        UIntArray.set-VXSXFK8(iArr, i3, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        int[] iArr = ((UIntArray) obj).unbox-impl();
        iArr.getClass();
        v1 v1Var = new v1();
        v1Var.a = iArr;
        v1Var.b = UIntArray.getSize-impl(iArr);
        v1Var.b(10);
        return v1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return UIntArray.box-impl(UIntArray.constructor-impl(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        int[] iArr = ((UIntArray) obj).unbox-impl();
        dVar.getClass();
        iArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeInlineElement(this.b, i2).encodeInt(UIntArray.get-pVg5ArA(iArr, i2));
        }
    }
}
