package i9;

import kotlin.jvm.internal.CharCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class o extends i1 {
    public static final o c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        CharCompanionObject.INSTANCE.getClass();
        c = new o(p.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        n nVar = (n) obj;
        nVar.getClass();
        char cDecodeCharElement = cVar.decodeCharElement(this.b, i);
        g1.c(nVar);
        char[] cArr = nVar.a;
        int i2 = nVar.b;
        nVar.b = i2 + 1;
        cArr[i2] = cDecodeCharElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        n nVar = new n();
        nVar.a = cArr;
        nVar.b = cArr.length;
        nVar.b(10);
        return nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new char[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        char[] cArr = (char[]) obj;
        dVar.getClass();
        cArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeCharElement(this.b, i2, cArr[i2]);
        }
    }
}
