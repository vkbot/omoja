package p148n7;

import p050e3.C1461d;
import p091i4.AbstractC1744b;
import p099j1.C1929i;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.q0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2537q0 extends AbstractC2541s0 {

    /* JADX INFO: renamed from: e */
    public final InterfaceC2539r0 f7015e;

    public C2537q0(String str, InterfaceC2539r0 interfaceC2539r0) {
        super(str, false, interfaceC2539r0);
        if (str.endsWith("-bin")) {
            C1929i.m3029k(C1461d.m2512l("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
            throw null;
        }
        AbstractC2587b.m4042i(interfaceC2539r0, "marshaller");
        this.f7015e = interfaceC2539r0;
    }

    @Override // p148n7.AbstractC2541s0
    /* JADX INFO: renamed from: a */
    public final Object mo3967a(byte[] bArr) {
        return this.f7015e.mo3940j(new String(bArr, AbstractC1744b.f4558a));
    }

    @Override // p148n7.AbstractC2541s0
    /* JADX INFO: renamed from: b */
    public final byte[] mo3968b(Object obj) {
        String strMo3937b = this.f7015e.mo3937b(obj);
        AbstractC2587b.m4042i(strMo3937b, "null marshaller.toAsciiString()");
        return strMo3937b.getBytes(AbstractC1744b.f4558a);
    }
}
