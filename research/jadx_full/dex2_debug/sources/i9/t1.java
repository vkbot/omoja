package i9;

import kotlin.UByte;
import kotlin.UByteArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class t1 extends i1 {
    public static final t1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        UByte.Companion.getClass();
        c = new t1(u1.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        byte[] bArr = ((UByteArray) obj).unbox-impl();
        bArr.getClass();
        return UByteArray.getSize-impl(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        s1 s1Var = (s1) obj;
        s1Var.getClass();
        byte b = UByte.constructor-impl(cVar.decodeInlineElement(this.b, i).decodeByte());
        g1.c(s1Var);
        byte[] bArr = s1Var.a;
        int i2 = s1Var.b;
        s1Var.b = i2 + 1;
        UByteArray.set-VurrAj0(bArr, i2, b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        byte[] bArr = ((UByteArray) obj).unbox-impl();
        bArr.getClass();
        s1 s1Var = new s1();
        s1Var.a = bArr;
        s1Var.b = UByteArray.getSize-impl(bArr);
        s1Var.b(10);
        return s1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return UByteArray.box-impl(UByteArray.constructor-impl(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        byte[] bArr = ((UByteArray) obj).unbox-impl();
        dVar.getClass();
        bArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeInlineElement(this.b, i2).encodeByte(UByteArray.get-w2LRezQ(bArr, i2));
        }
    }
}
