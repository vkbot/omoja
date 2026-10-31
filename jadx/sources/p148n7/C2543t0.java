package p148n7;

import p050e3.C1461d;
import p099j1.C1929i;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.t0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2543t0 extends AbstractC2541s0 {

    /* JADX INFO: renamed from: e */
    public final InterfaceC2545u0 f7027e;

    public C2543t0(String str, boolean z9, InterfaceC2545u0 interfaceC2545u0) {
        super(str, z9, interfaceC2545u0);
        if (str.endsWith("-bin")) {
            C1929i.m3029k(C1461d.m2512l("ASCII header is named %s.  Only binary headers may end with %s", str, "-bin"));
            throw null;
        }
        this.f7027e = interfaceC2545u0;
    }

    @Override // p148n7.AbstractC2541s0
    /* JADX INFO: renamed from: a */
    public final Object mo3967a(byte[] bArr) {
        return this.f7027e.mo3941k(bArr);
    }

    @Override // p148n7.AbstractC2541s0
    /* JADX INFO: renamed from: b */
    public final byte[] mo3968b(Object obj) {
        byte[] bArrMo3938b = this.f7027e.mo3938b(obj);
        AbstractC2587b.m4042i(bArrMo3938b, "null marshaller.toAsciiString()");
        return bArrMo3938b;
    }
}
