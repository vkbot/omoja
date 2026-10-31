package i9;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class i extends i1 {
    public static final i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        ByteCompanionObject.INSTANCE.getClass();
        c = new i(j.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        return bArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        h hVar = (h) obj;
        hVar.getClass();
        byte bDecodeByteElement = cVar.decodeByteElement(this.b, i);
        g1.c(hVar);
        byte[] bArr = hVar.a;
        int i2 = hVar.b;
        hVar.b = i2 + 1;
        bArr[i2] = bDecodeByteElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        h hVar = new h();
        hVar.a = bArr;
        hVar.b = bArr.length;
        hVar.b(10);
        return hVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new byte[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        byte[] bArr = (byte[]) obj;
        dVar.getClass();
        bArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeByteElement(this.b, i2, bArr[i2]);
        }
    }
}
