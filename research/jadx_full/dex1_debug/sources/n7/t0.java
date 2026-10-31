package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t0 extends s0 {
    public final u0 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t0(String str, boolean z8, u0 u0Var) {
        super(str, z8, u0Var);
        if (str.endsWith("-bin")) {
            j1.i.k(e3.d.l("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
            throw null;
        }
        this.e = u0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s0
    public final Object a(byte[] bArr) {
        return this.e.k(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s0
    public final byte[] b(Object obj) {
        byte[] bArrMo1385b = this.e.mo1385b(obj);
        o4.b.i(bArrMo1385b, "null marshaller.toAsciiString()");
        return bArrMo1385b;
    }
}
