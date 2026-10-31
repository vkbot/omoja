package i9;

import kotlin.jvm.internal.BooleanCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class f extends i1 {
    public static final f c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        BooleanCompanionObject.INSTANCE.getClass();
        c = new f(g.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final int h(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.u, i9.a
    public final void k(h9.c cVar, int i, Object obj) {
        e eVar = (e) obj;
        eVar.getClass();
        boolean zDecodeBooleanElement = cVar.decodeBooleanElement(this.b, i);
        g1.c(eVar);
        boolean[] zArr = eVar.a;
        int i2 = eVar.b;
        eVar.b = i2 + 1;
        zArr[i2] = zDecodeBooleanElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final Object l(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        e eVar = new e();
        eVar.a = zArr;
        eVar.b = zArr.length;
        eVar.b(10);
        return eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final Object o() {
        return new boolean[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.i1
    public final void p(h9.d dVar, Object obj, int i) {
        boolean[] zArr = (boolean[]) obj;
        dVar.getClass();
        zArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            dVar.encodeBooleanElement(this.b, i2, zArr[i2]);
        }
    }
}
