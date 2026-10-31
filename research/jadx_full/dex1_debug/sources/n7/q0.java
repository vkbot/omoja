package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q0 extends s0 {
    public final r0 e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q0(String str, r0 r0Var) {
        super(str, false, r0Var);
        if (str.endsWith("-bin")) {
            j1.i.k(e3.d.l("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
            throw null;
        }
        o4.b.i(r0Var, "marshaller");
        this.e = r0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s0
    public final Object a(byte[] bArr) {
        return this.e.j(new String(bArr, i4.b.f2657a));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s0
    public final byte[] b(Object obj) {
        String strB = this.e.b(obj);
        o4.b.i(strB, "null marshaller.toAsciiString()");
        return strB.getBytes(i4.b.f2657a);
    }
}
